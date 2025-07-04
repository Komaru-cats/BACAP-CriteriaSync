execute if score introduced bac_settings matches 1 if score intro_msg bac_settings matches 1 run function blazeandcave:msg_welcome
execute unless score introduced bac_settings matches 1 run function blazeandcave:msg_intro

function blazeandcave:config/update_number_format

gamerule commandBlockOutput false
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches 1 run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -1 unless score blazeandcave:bacap/root bac_obtained matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_black] unless score blazeandcave:bacap/root bac_obtained_black matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_dark_blue] unless score blazeandcave:bacap/root bac_obtained_dark_blue matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_dark_green] unless score blazeandcave:bacap/root bac_obtained_dark_green matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_dark_aqua] unless score blazeandcave:bacap/root bac_obtained_dark_aqua matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_dark_red] unless score blazeandcave:bacap/root bac_obtained_dark_red matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_dark_purple] unless score blazeandcave:bacap/root bac_obtained_dark_purple matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_gold] unless score blazeandcave:bacap/root bac_obtained_gold matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_gray] unless score blazeandcave:bacap/root bac_obtained_gray matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_dark_gray] unless score blazeandcave:bacap/root bac_obtained_dark_gray matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_blue] unless score blazeandcave:bacap/root bac_obtained_blue matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_green] unless score blazeandcave:bacap/root bac_obtained_green matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_aqua] unless score blazeandcave:bacap/root bac_obtained_aqua matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_red] unless score blazeandcave:bacap/root bac_obtained_red matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_light_purple] unless score blazeandcave:bacap/root bac_obtained_light_purple matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_yellow] unless score blazeandcave:bacap/root bac_obtained_yellow matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score reward bac_settings matches -2 if entity @s[team=bac_team_white] unless score blazeandcave:bacap/root bac_obtained_white matches 1.. run function bacap_rewards:reward/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches 1 run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -1 unless score blazeandcave:bacap/root bac_obtained matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_black] unless score blazeandcave:bacap/root bac_obtained_black matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_dark_blue] unless score blazeandcave:bacap/root bac_obtained_dark_blue matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_dark_green] unless score blazeandcave:bacap/root bac_obtained_dark_green matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_dark_aqua] unless score blazeandcave:bacap/root bac_obtained_dark_aqua matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_dark_red] unless score blazeandcave:bacap/root bac_obtained_dark_red matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_dark_purple] unless score blazeandcave:bacap/root bac_obtained_dark_purple matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_gold] unless score blazeandcave:bacap/root bac_obtained_gold matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_gray] unless score blazeandcave:bacap/root bac_obtained_gray matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_dark_gray] unless score blazeandcave:bacap/root bac_obtained_dark_gray matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_blue] unless score blazeandcave:bacap/root bac_obtained_blue matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_green] unless score blazeandcave:bacap/root bac_obtained_green matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_aqua] unless score blazeandcave:bacap/root bac_obtained_aqua matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_red] unless score blazeandcave:bacap/root bac_obtained_red matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_light_purple] unless score blazeandcave:bacap/root bac_obtained_light_purple matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_yellow] unless score blazeandcave:bacap/root bac_obtained_yellow matches 1.. run function bacap_rewards:exp/bacap/root
execute unless entity @s[gamemode=spectator] if score exp bac_settings matches -2 if entity @s[team=bac_team_white] unless score blazeandcave:bacap/root bac_obtained_white matches 1.. run function bacap_rewards:exp/bacap/root

execute unless entity @s[gamemode=spectator] run function bacap_rewards:score_add

execute unless entity @s[gamemode=spectator] unless score blazeandcave:bacap/root bac_obtained matches 1.. run function bacap_rewards:first_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_black] unless score blazeandcave:bacap/root bac_obtained_black matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_blue] unless score blazeandcave:bacap/root bac_obtained_dark_blue matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_green] unless score blazeandcave:bacap/root bac_obtained_dark_green matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_aqua] unless score blazeandcave:bacap/root bac_obtained_dark_aqua matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_red] unless score blazeandcave:bacap/root bac_obtained_dark_red matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_purple] unless score blazeandcave:bacap/root bac_obtained_dark_purple matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_gold] unless score blazeandcave:bacap/root bac_obtained_gold matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_gray] unless score blazeandcave:bacap/root bac_obtained_gray matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_gray] unless score blazeandcave:bacap/root bac_obtained_dark_gray matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_blue] unless score blazeandcave:bacap/root bac_obtained_blue matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_green] unless score blazeandcave:bacap/root bac_obtained_green matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_aqua] unless score blazeandcave:bacap/root bac_obtained_aqua matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_red] unless score blazeandcave:bacap/root bac_obtained_red matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_light_purple] unless score blazeandcave:bacap/root bac_obtained_light_purple matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_yellow] unless score blazeandcave:bacap/root bac_obtained_yellow matches 1.. run function bacap_rewards:first_team_score_add
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_white] unless score blazeandcave:bacap/root bac_obtained_white matches 1.. run function bacap_rewards:first_team_score_add
scoreboard players add blazeandcave:bacap/root bac_obtained 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_black] run scoreboard players add blazeandcave:bacap/root bac_obtained_black 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_blue] run scoreboard players add blazeandcave:bacap/root bac_obtained_dark_blue 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_green] run scoreboard players add blazeandcave:bacap/root bac_obtained_dark_green 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_aqua] run scoreboard players add blazeandcave:bacap/root bac_obtained_dark_aqua 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_red] run scoreboard players add blazeandcave:bacap/root bac_obtained_dark_red 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_purple] run scoreboard players add blazeandcave:bacap/root bac_obtained_dark_purple 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_gold] run scoreboard players add blazeandcave:bacap/root bac_obtained_gold 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_gray] run scoreboard players add blazeandcave:bacap/root bac_obtained_gray 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_dark_gray] run scoreboard players add blazeandcave:bacap/root bac_obtained_dark_gray 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_blue] run scoreboard players add blazeandcave:bacap/root bac_obtained_blue 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_green] run scoreboard players add blazeandcave:bacap/root bac_obtained_green 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_aqua] run scoreboard players add blazeandcave:bacap/root bac_obtained_aqua 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_red] run scoreboard players add blazeandcave:bacap/root bac_obtained_red 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_light_purple] run scoreboard players add blazeandcave:bacap/root bac_obtained_light_purple 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_yellow] run scoreboard players add blazeandcave:bacap/root bac_obtained_yellow 1
execute unless entity @s[gamemode=spectator] if entity @s[team=bac_team_white] run scoreboard players add blazeandcave:bacap/root bac_obtained_white 1
execute if score coop bac_settings matches 1 run advancement grant @a only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_black] run advancement grant @a[team=bac_team_black] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_dark_blue] run advancement grant @a[team=bac_team_dark_blue] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_dark_green] run advancement grant @a[team=bac_team_dark_green] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_dark_aqua] run advancement grant @a[team=bac_team_dark_aqua] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_dark_red] run advancement grant @a[team=bac_team_dark_red] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_dark_purple] run advancement grant @a[team=bac_team_dark_purple] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_gold] run advancement grant @a[team=bac_team_gold] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_gray] run advancement grant @a[team=bac_team_gray] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_dark_gray] run advancement grant @a[team=bac_team_dark_gray] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_blue] run advancement grant @a[team=bac_team_blue] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_green] run advancement grant @a[team=bac_team_green] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_aqua] run advancement grant @a[team=bac_team_aqua] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_red] run advancement grant @a[team=bac_team_red] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_light_purple] run advancement grant @a[team=bac_team_light_purple] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_yellow] run advancement grant @a[team=bac_team_yellow] only blazeandcave:bacap/root
execute if score coop bac_settings matches 2 if entity @s[team=bac_team_white] run advancement grant @a[team=bac_team_white] only blazeandcave:bacap/root

function #bacap_fanpacks:bacap/root
