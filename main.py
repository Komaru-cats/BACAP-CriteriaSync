import json
import os
import shutil
import zipfile
from pathlib import Path

from BACAP_Parser.utils import cut_namespace

__version__ = "1.3"

from constants import (
    COOP_TEMPLATE,
    MINECRAFT_NAMESPACE_COOP_TEMPLATE,
    TEAM_COOP_TEMPLATE,
    MINECRAFT_NAMESPACE_TEAM_COOP_TEMPLATE,
    BACAP_TEAMS,
    ZIP_NAME,
    TEAM_COOP_MAIN_FILE_TEMPLATE,
    COOP_MAIN_FILE_TEMPLATE,
    MAIN_FILE_END,
)
from parser_loader import load_parser


def split_set_to_sublists(data_set, divisor):
    data_list = list(data_set)

    quotient = len(data_set) // divisor
    remainder = len(data_set) % divisor

    sublists = [[] for _ in range(divisor)]

    index = 0

    for i in range(divisor):
        size = quotient + (1 if i < remainder else 0)
        sublists[i] = data_list[index : index + size]
        index += size

    return sublists


def collect_adv_criteria() -> set[tuple[str, str]]:
    ADV_WITH_CRT = set()

    should_be_ignored = json.load(open("should_be_ignored.json", encoding="utf-8"))
    for datapack in parser.datapacks:
        for adv in datapack.advancement_manager.filtered_iterator():
            if len(adv.criteria_list) == 1:
                continue
            if adv.type.name in ["milestone", "advancement_legend"]:
                continue
            if "requirements" in adv.json and len(adv.json["requirements"]) == 1:
                continue
            if adv.mc_path in should_be_ignored["advancements"]:
                continue

            for criteria in adv.criteria_list:
                ADV_WITH_CRT.add((adv.mc_path, criteria.name))

    print(
        f"Criteria count: {len(ADV_WITH_CRT)}, per tick: {len(ADV_WITH_CRT) / 200}, per tick coop: {len(ADV_WITH_CRT) / 200 * 16}"
    )
    return ADV_WITH_CRT


def generate_main_file():
    with open(
        bacap_criteria_sync_path / "function" / "main.mcfunction", "w+"
    ) as main_file:
        for list_num in range(1, 201):
            main_file.write(COOP_MAIN_FILE_TEMPLATE.format(list_num) + "\n")
            main_file.write(TEAM_COOP_MAIN_FILE_TEMPLATE.format(list_num) + "\n\n")

        # At the end of the file
        main_file.write("\n" + MAIN_FILE_END)


def create_predicate_for_criterion(adv: str, crt: str):
    predicate_template = {
        "condition": "minecraft:entity_properties",
        "entity": "this",
        "predicate": {
            "type_specific": {"type": "minecraft:player", "advancements": {}}
        },
    }

    predicate_path = Path(
        bacap_criteria_sync_path
        / f"predicate/{cut_namespace(adv)}/{cut_namespace(crt)}.json"
    )
    predicate_path.parent.mkdir(parents=True, exist_ok=True)
    predicate_path.touch()

    predicate_template["predicate"]["type_specific"]["advancements"] = {
        adv: {crt: True}
    }
    json.dump(predicate_template, predicate_path.open("w+", encoding="utf-8"), indent=4)


def generate_coop_files(adv_crt: list[list[tuple[str, str]]]):
    # Directory for coop functions
    coop_dir = bacap_criteria_sync_path / "function" / "coop"
    coop_dir.mkdir(parents=True, exist_ok=True)

    for list_num in range(len(adv_crt)):
        file_path = coop_dir / f"{list_num + 1}.mcfunction"

        with open(file_path, "w+", encoding="utf-8") as coop_file:
            for adv, crt in adv_crt[list_num]:
                if ":" in crt:
                    create_predicate_for_criterion(adv, crt)
                    coop_file.write(
                        MINECRAFT_NAMESPACE_COOP_TEMPLATE.format(
                            cut_namespace(adv),
                            cut_namespace(crt),
                            adv,
                            crt,
                        )
                        + "\n"
                    )
                else:
                    coop_file.write(
                        COOP_TEMPLATE.format(adv, cut_namespace(crt)) + "\n"
                    )


def generate_team_coop_files(adv_crt: list[list[tuple[str, str]]]):
    team_coop_dir = bacap_criteria_sync_path / "function" / "team_coop"
    team_coop_dir.mkdir(parents=True, exist_ok=True)

    for list_num in range(len(adv_crt)):
        file_path = team_coop_dir / f"{list_num + 1}.mcfunction"

        with open(file_path, "w+", encoding="utf-8") as coop_file:
            for adv, crt in adv_crt[list_num]:
                for team in BACAP_TEAMS:
                    if ":" in crt:
                        coop_file.write(
                            MINECRAFT_NAMESPACE_TEAM_COOP_TEMPLATE.format(
                                cut_namespace(adv),
                                cut_namespace(crt),
                                adv,
                                crt,
                                team,
                            )
                            + "\n"
                        )
                    else:
                        coop_file.write(
                            TEAM_COOP_TEMPLATE.format(
                                adv,
                                cut_namespace(crt),
                                team,
                            )
                            + "\n"
                        )
                        coop_file.write("\n")


def create_release_zip(version):
    base_dir = os.path.dirname(os.path.abspath(__file__))
    criteria_sync_dir = os.path.join(base_dir, "criteria_sync")
    releases_dir = os.path.join(base_dir, "releases")

    if not os.path.exists(releases_dir):
        os.makedirs(releases_dir)

    zip_path = os.path.join(releases_dir, ZIP_NAME.replace("%version%", version, 1))

    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zipf:
        for root, _, files in os.walk(criteria_sync_dir):
            for file in files:
                file_path = os.path.join(root, file)
                arcname = os.path.relpath(file_path, start=criteria_sync_dir)
                zipf.write(file_path, arcname)


# To make sure that we don't contain useless predicates
def delete_all_predicates():
    predicates = bacap_criteria_sync_path / "predicate"
    try:
        shutil.rmtree(predicates)
    except FileNotFoundError:
        pass


if __name__ == "__main__":
    parser = load_parser()

    bacap_criteria_sync_path = Path("criteria_sync/data/bacap_criteria_sync")

    adv_criteria = split_set_to_sublists(collect_adv_criteria(), 200)

    delete_all_predicates()

    generate_main_file()

    generate_coop_files(adv_criteria)
    generate_team_coop_files(adv_criteria)

    create_release_zip(__version__)
