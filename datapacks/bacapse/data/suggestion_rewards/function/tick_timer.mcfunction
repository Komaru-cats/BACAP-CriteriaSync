execute as @a[gamemode=!spectator] at @s run function terrible_suggestions:lava_distance
execute as @a[gamemode=!spectator] at @s if entity @s[advancements={terrible_suggestions:riddles/twice_sixth_line=true}] run function terrible_suggestions:void_ender_pearl

execute as @a[gamemode=!spectator] at @s if entity @s[predicate=blazeandcave:is_on_ground] unless entity @s[advancements={terrible_suggestions:suggestions/kings_mace=true}] run advancement revoke @s only terrible_suggestions:suggestions/kings_mace

execute as @a[gamemode=!spectator] at @s if dimension minecraft:overworld if entity @e[type=minecraft:breeze_wind_charge,distance=..100] run tag @e[type=minecraft:breeze_wind_charge,distance=..100] add ow_charge

execute as @e[type=minecraft:breeze] run function terrible_suggestions:nether_breeze