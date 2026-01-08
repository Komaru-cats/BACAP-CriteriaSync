from typing import Final

# Criteria sync constants
ZIP_NAME: Final[str] = "Bacap_Criteria_Sync_%version%.zip"

TEAM_COOP_TEMPLATE: Final[str] = (
    "execute if entity @a[team=bac_team_{2}, "
    "advancements={{{0}={{{1}=true}}}}] "
    "run advancement grant @a only {0} {1}"
)
MINECRAFT_NAMESPACE_TEAM_COOP_TEMPLATE: Final[str] = (
    "execute at @a[team=bac_team_{4}, "
    "predicate=bacap_criteria_sync:{0}/{1}] "
    "run advancement grant @a only {2} {3}"
)

COOP_TEMPLATE = (
    "execute if entity @a[advancements={{{0}={{{1}=true}}}}] "
    "run advancement grant @a only {0} {1}"
)
MINECRAFT_NAMESPACE_COOP_TEMPLATE: Final[str] = (
    "execute at @a[predicate=bacap_criteria_sync:{0}/{1}] "
    "run advancement grant @a only {2} {3}"
)
COOP_MAIN_FILE_TEMPLATE: Final[str] = (
    "execute if score bacap_criteria_sync criteria_timer matches {0} if score coop bac_settings matches 1 run function bacap_criteria_sync:coop/f{0}"
)
TEAM_COOP_MAIN_FILE_TEMPLATE = "execute if score bacap_criteria_sync criteria_timer matches {0} if score coop bac_settings matches 2 run function bacap_criteria_sync:team_coop/f{0}"
MAIN_FILE_END = """execute if score bacap_criteria_sync criteria_timer matches 200 run scoreboard players set bacap_criteria_sync criteria_timer 0
scoreboard players add bacap_criteria_sync criteria_timer 1
schedule function bacap_criteria_sync:main 1t"""


BACAP_TEAMS: Final[tuple[str, ...]] = (
    "aqua",
    "black",
    "blue",
    "dark_aqua",
    "dark_blue",
    "dark_gray",
    "dark_green",
    "dark_purple",
    "dark_red",
    "gold",
    "gray",
    "green",
    "light_purple",
    "red",
    "white",
    "yellow",
)
