import json
import os
import shutil
import zipfile
from pathlib import Path

from BACAP_Parser.utils import cut_namespace
from BACAP_Parser import AdvType, AdvTypeManager, Datapack, Parser, Color, constants, TabNameMapper

__version__ = "1.2"


def split_set_to_sublists(data_set, divisor):
    data_list = list(data_set)

    quotient = len(data_set) // divisor
    remainder = len(data_set) % divisor

    sublists = [[] for _ in range(divisor)]

    index = 0

    for i in range(divisor):
        size = quotient + (1 if i < remainder else 0)
        sublists[i] = data_list[index:index + size]
        index += size

    return sublists


def load_parser():
    task = AdvType(name="task", frames="task", colors=Color("green"))
    goal = AdvType(name="goal", frames="goal", colors=Color("#75E1FF"))
    challenge = AdvType(name="challenge", frames="challenge", colors=Color("dark_purple"), hidden_color=constants.DEFAULT_BACAP_HIDDEN_COLOR)
    super_challenge = AdvType(name="super_challenge", frames="challenge", colors=Color("#FF2A2A"), hidden_color=constants.DEFAULT_BACAP_HIDDEN_COLOR, tabs="challenges")
    root = AdvType(name="root", frames=("task", "challenge"), colors=Color("#CCCCCC"))
    milestone = AdvType(name="milestone", frames="goal", colors=Color("yellow"), tabs="bacap")
    advancement_legend = AdvType(name="advancement_legend", frames="challenge", colors=Color("gold"), tabs="bacap")

    challenge_terralith = AdvType(name="challenge", frames="challenge", colors=[Color("dark_purple"), Color("#00AA00")], hidden_color=constants.DEFAULT_BACAP_HIDDEN_COLOR)

    manager = AdvTypeManager(task, goal, challenge, super_challenge, root, milestone, advancement_legend)
    terralith_manager = AdvTypeManager(task, goal, challenge_terralith, super_challenge, root, milestone, advancement_legend)

    bacap = Datapack(name="bacap", path=Path(r"datapacks\bacap"), adv_type_manager=manager, reward_namespace="bacap_rewards", technical_tabs="technical")
    bacap_hardcore = Datapack(name="bacap_hardcore", path=Path(r"datapacks\bacap_hardcore"), adv_type_manager=manager, technical_tabs="technical")
    bacap_terralith = Datapack(name="bacap_terralith", path=Path(r"datapacks\bacap_terralith"), adv_type_manager=terralith_manager, technical_tabs="technical")
    bacap_nullscapes = Datapack(name="bacap_nullscapes", path=Path(r"datapacks\bacap_nullscapes"), adv_type_manager=manager, technical_tabs="technical")
    bacap_amplified_nether = Datapack(name="bacap_amplified_nether", path=Path(r"datapacks\bacap_amplified_nether"), adv_type_manager=manager, technical_tabs="technical")
    incendium = Datapack(name="incendium", path=Path(r"datapacks\incendium"), adv_type_manager=manager, technical_tabs="technical", tab_name_mapper=TabNameMapper({"incendium": "Nether"}))

    bacaped = Datapack(name="bacaped", path=Path("datapacks/bacaped"), adv_type_manager=manager, reward_namespace="bacaped_rewards", technical_tabs="technical")
    bacaped_hardcore = Datapack(name="bacaped_hardcore", path=Path("datapacks/bacaped_hardcore"), adv_type_manager=manager, reward_namespace="bacaped_rewards", technical_tabs="technical")

    cereal_dedication = Datapack(name="cereal_dedication", path=Path("datapacks/cereal_dedication"), adv_type_manager=manager, reward_namespace="bacap_rewards", technical_tabs="technical")

    cereal_dedication_hardcore = Datapack(name="cereal_dedication_hardcore", path=Path("datapacks/cereal_dedication_hardcore"), adv_type_manager=manager, technical_tabs="technical")

    complete_collection = Datapack(name="complete_collection", path=Path("datapacks/complete_collection"), adv_type_manager=manager, reward_namespace="bacap_rewards", technical_tabs="technical")

    return Parser(bacap, bacaped, bacaped_hardcore, bacap_hardcore, incendium, bacap_terralith,
                  bacap_nullscapes, bacap_amplified_nether, cereal_dedication_hardcore, cereal_dedication, complete_collection)


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

    print(f"Criteria count: {len(ADV_WITH_CRT)}, per tick: {len(ADV_WITH_CRT) / 200}, per tick coop: {len(ADV_WITH_CRT) / 200 * 16}")
    return ADV_WITH_CRT


def generate_main_file():
    coop_template = "execute if score bacap_criteria_sync criteria_timer matches {0} if score coop bac_settings matches 1 run function bacap_criteria_sync:coop/f{0}"
    coop_team_template = "execute if score bacap_criteria_sync criteria_timer matches {0} if score coop bac_settings matches 2 run function bacap_criteria_sync:team_coop/f{0}"
    file_end = """execute if score bacap_criteria_sync criteria_timer matches 200 run scoreboard players set bacap_criteria_sync criteria_timer 0
scoreboard players add bacap_criteria_sync criteria_timer 1
schedule function bacap_criteria_sync:main 1t"""

    with open(bacap_criteria_sync_path / "function" / "main.mcfunction", "w+") as main_file:
        for list_num in range(1, 201):
            main_file.write(coop_template.format(list_num) + "\n")
            main_file.write(coop_team_template.format(list_num) + "\n\n")

        # At the end of the file
        main_file.write("\n" + file_end)


def create_predicate_for_criterion(adv: str, crt: str):
    predicate_template = {
        "condition": "minecraft:entity_properties",
        "entity": "this",
        "predicate": {
            "type_specific": {
                "type": "minecraft:player",
                "advancements": {

                }
            }
        }
    }

    predicate_path = Path(bacap_criteria_sync_path / f"predicate/{cut_namespace(adv)}/{cut_namespace(crt)}.json")
    predicate_path.parent.mkdir(parents=True, exist_ok=True)
    predicate_path.touch()

    predicate_template["predicate"]["type_specific"]["advancements"] = {adv: {crt: True}}
    json.dump(predicate_template, predicate_path.open("w+", encoding="utf-8"), indent=4)


def generate_coop_files(adv_crt: list[list[tuple[str, str]]]):
    template = "execute if entity @a[advancements={{{0}={{{1}=true}}}}] run advancement grant @a only {0} {1}"
    minecraft_namespace_template = "execute at @a[predicate=bacap_criteria_sync:{0}/{1}] run advancement grant @a only {2} {3}"

    for list_num in range(len(adv_crt)):
        with open(bacap_criteria_sync_path / f"function/coop{list_num + 1}.mcfunction", "w+") as coop_file:
            for adv, crt in adv_crt[list_num]:
                # here we do
                if ":" in crt:
                    create_predicate_for_criterion(adv, crt)
                    coop_file.write(minecraft_namespace_template.format(cut_namespace(adv), cut_namespace(crt), adv, crt) + "\n")
                else:
                    coop_file.write(template.format(adv, cut_namespace(crt)) + "\n")


def generate_team_coop_files(adv_crt: list[list[tuple[str, str]]]):
    bacap_teams = ("aqua", "black", "blue", "dark_aqua", "dark_blue", "dark_gray", "dark_green", "dark_purple", "dark_red", "gold", "gray", "green", "light_purple", "red", "white", "yellow")
    template = "execute if entity @a[team=bac_team_{2}, advancements={{{0}={{{1}=true}}}}] run advancement grant @a only {0} {1}"
    minecraft_namespace_template = "execute at @a[team=bac_team_{4}, predicate=bacap_criteria_sync:{0}/{1}] run advancement grant @a only {2} {3}"

    for list_num in range(len(adv_crt)):
        with open(bacap_criteria_sync_path / f"function/team_coop/{list_num + 1}.mcfunction", "w+") as coop_file:
            for adv, crt in adv_crt[list_num]:
                for team in bacap_teams:
                    if ":" in crt:
                        coop_file.write(minecraft_namespace_template.format(cut_namespace(adv), cut_namespace(crt), adv, crt, team) + "\n")
                    else:
                        coop_file.write(template.format(adv, cut_namespace(crt), team) + "\n")
                coop_file.write("\n")


def create_release_zip(version):
    base_dir = os.path.dirname(os.path.abspath(__file__))
    criteria_sync_dir = os.path.join(base_dir, 'criteria_sync')
    releases_dir = os.path.join(base_dir, 'releases')

    if not os.path.exists(releases_dir):
        os.makedirs(releases_dir)

    zip_name = f"Bacap_Criteria_Sync_{version}.zip"
    zip_path = os.path.join(releases_dir, zip_name)

    with zipfile.ZipFile(zip_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
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
