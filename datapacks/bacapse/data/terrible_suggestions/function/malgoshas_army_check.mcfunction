scoreboard players set @s se_ghast_count 0
scoreboard players set @s se_piglin_count 0
scoreboard players set @s se_hoglin_count 0

execute as @e[type=ghast,distance=..100] at @s if biome ~ ~ ~ minecraft:nether_wastes run scoreboard players add @p se_ghast_count 1
execute as @e[type=piglin,distance=..100] at @s if biome ~ ~ ~ minecraft:nether_wastes run scoreboard players add @p se_piglin_count 1
execute as @e[type=hoglin,distance=..100] at @s if biome ~ ~ ~ minecraft:nether_wastes run scoreboard players add @p se_hoglin_count 1

execute if score @s se_ghast_count matches 20.. if score @s se_piglin_count matches 150.. if score @s se_hoglin_count matches 50.. run advancement grant @s only terrible_suggestions:suggestions/behold_the_malgoshas_army_a

execute if score @s se_ghast_count matches 20.. if score @s se_piglin_count matches 150.. if score @s se_hoglin_count matches 50.. run advancement grant @s only terrible_suggestions:suggestions/behold_the_malgoshas_army_b