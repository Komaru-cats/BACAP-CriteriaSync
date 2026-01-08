from pathlib import Path

from BACAP_Parser import (
    Datapack,
    Parser,
    constants,
    Color,
    AdvType,
    AdvTypeManager,
    TabNameMapper,
)


def load_parser() -> Parser:
    task = AdvType(name="task", frames="task", colors=Color("green"))
    goal = AdvType(name="goal", frames="goal", colors=Color("#75E1FF"))
    challenge = AdvType(
        name="challenge",
        frames="challenge",
        colors=Color("dark_purple"),
        hidden_color=constants.DEFAULT_BACAP_HIDDEN_COLOR,
    )
    super_challenge = AdvType(
        name="super_challenge",
        frames="challenge",
        colors=Color("#FF2A2A"),
        hidden_color=constants.DEFAULT_BACAP_HIDDEN_COLOR,
        tabs="challenges",
    )
    root = AdvType(name="root", frames=("task", "challenge"), colors=Color("#CCCCCC"))
    milestone = AdvType(
        name="milestone", frames="goal", colors=Color("yellow"), tabs="bacap"
    )
    advancement_legend = AdvType(
        name="advancement_legend",
        frames="challenge",
        colors=Color("gold"),
        tabs="bacap",
    )

    challenge_terralith = AdvType(
        name="challenge",
        frames="challenge",
        colors=[Color("dark_purple"), Color("#00AA00")],
        hidden_color=constants.DEFAULT_BACAP_HIDDEN_COLOR,
    )
    bacapse_super = AdvType(
        name="super_challenge", frames="challenge", colors=Color("#FF2A2A")
    )

    manager = AdvTypeManager(
        task, goal, challenge, super_challenge, root, milestone, advancement_legend
    )
    task_terralith = AdvType(
        name="task",
        frames="task",
        colors=Color("green"),
        hidden_color=constants.DEFAULT_BACAP_HIDDEN_COLOR,
    )
    terralith_manager = AdvTypeManager(
        task_terralith,
        goal,
        challenge_terralith,
        super_challenge,
        root,
        milestone,
        advancement_legend,
    )
    cereal_dedication_manager = AdvTypeManager(
        task_terralith,
        goal,
        challenge,
        super_challenge,
        root,
        milestone,
        advancement_legend,
    )
    se_manager = AdvTypeManager(
        task, goal, challenge, bacapse_super, root, milestone, advancement_legend
    )

    bacap = Datapack(
        name="bacap",
        path=Path(r"datapacks/bacap"),
        adv_type_manager=manager,
        reward_namespace="bacap_rewards",
        technical_tabs="technical",
    )
    bacap_hardcore = Datapack(
        name="bacap_hardcore",
        path=Path(r"datapacks/bacap_hardcore"),
        adv_type_manager=manager,
        technical_tabs="technical",
    )
    bacap_terralith = Datapack(
        name="bacap_terralith",
        path=Path(r"datapacks/bacap_terralith"),
        adv_type_manager=terralith_manager,
        technical_tabs="technical",
    )
    bacap_nullscapes = Datapack(
        name="bacap_nullscapes",
        path=Path(r"datapacks/bacap_nullscapes"),
        adv_type_manager=manager,
        technical_tabs="technical",
    )
    bacap_amplified_nether = Datapack(
        name="bacap_amplified_nether",
        path=Path(r"datapacks/bacap_amplified_nether"),
        adv_type_manager=manager,
        technical_tabs="technical",
    )
    incendium = Datapack(
        name="incendium",
        path=Path(r"datapacks/incendium"),
        adv_type_manager=manager,
        technical_tabs="technical",
        tab_name_mapper=TabNameMapper({"incendium": "Nether"}),
    )

    bacaped = Datapack(
        name="bacaped",
        path=Path("datapacks/bacaped"),
        adv_type_manager=manager,
        reward_namespace="bacaped_rewards",
        technical_tabs="technical",
    )
    bacaped_hardcore = Datapack(
        name="bacaped_hardcore",
        path=Path("datapacks/bacaped_hardcore"),
        adv_type_manager=manager,
        reward_namespace="bacaped_rewards",
        technical_tabs="technical",
    )

    cereal_dedication = Datapack(
        name="cereal_dedication",
        path=Path("datapacks/cereal_dedication"),
        adv_type_manager=cereal_dedication_manager,
        reward_namespace="bacap_rewards",
        technical_tabs="technical",
    )

    cereal_dedication_hardcore = Datapack(
        name="cereal_dedication_hardcore",
        path=Path("datapacks/cereal_dedication_hardcore"),
        adv_type_manager=cereal_dedication_manager,
        technical_tabs="technical",
    )

    complete_collection = Datapack(
        name="complete_collection",
        path=Path("datapacks/complete_collection"),
        adv_type_manager=manager,
        reward_namespace="cc_rewards",
        technical_tabs="technical",
    )

    bacapse = Datapack(
        name="bacapse",
        path=Path("datapacks/bacapse"),
        adv_type_manager=se_manager,
        reward_namespace="suggestion_rewards",
        technical_tabs="technical",
    )

    return Parser(
        bacap,
        bacaped,
        bacaped_hardcore,
        bacap_hardcore,
        incendium,
        bacap_terralith,
        bacap_nullscapes,
        bacap_amplified_nether,
        cereal_dedication_hardcore,
        cereal_dedication,
        complete_collection,
        bacapse,
    )
