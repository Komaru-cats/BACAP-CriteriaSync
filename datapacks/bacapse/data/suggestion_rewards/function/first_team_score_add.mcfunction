function bacap_rewards:first_team_score_add

scoreboard players add @s se_advfirst_team 1
execute if entity @s[team=bac_team_black] run scoreboard players add Black_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_dark_blue] run scoreboard players add Dark_Blue_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_dark_green] run scoreboard players add Dark_Green_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_dark_aqua] run scoreboard players add Dark_Aqua_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_dark_red] run scoreboard players add Dark_Red_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_dark_purple] run scoreboard players add Dark_Purple_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_gold] run scoreboard players add Gold_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_gray] run scoreboard players add Gray_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_dark_gray] run scoreboard players add Dark_Gray_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_blue] run scoreboard players add Blue_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_green] run scoreboard players add Green_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_aqua] run scoreboard players add Aqua_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_red] run scoreboard players add Red_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_light_purple] run scoreboard players add Light_Purple_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_yellow] run scoreboard players add Yellow_Team se_advfirst_team_sum 1
execute if entity @s[team=bac_team_white] run scoreboard players add White_Team se_advfirst_team_sum 1

function bacap_rewards:first_team_score_add