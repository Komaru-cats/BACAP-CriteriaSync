execute if block ~ ~ ~ minecraft:lava unless entity @e[type=marker,tag=lava_marker,distance=..0.9] run scoreboard players add @s lava_distance 1
execute if block ~ ~ ~ minecraft:lava unless entity @e[type=marker,tag=lava_marker,distance=..0.9] run summon marker ~ ~ ~ {Tags:["lava_marker"],Silent:1b,Invulnerable:1b}

execute if entity @e[type=marker,tag=lava_marker,distance=1.01..] run kill @e[type=marker,tag=lava_marker,distance=1.01..]

execute unless block ~ ~ ~ minecraft:lava if entity @e[type=marker,tag=lava_marker,distance=..1] run kill @e[type=marker,tag=lava_marker,distance=..1]

execute if score @s lava_distance matches 1000.. run advancement grant @s only terrible_suggestions:riddles/twice_first_line