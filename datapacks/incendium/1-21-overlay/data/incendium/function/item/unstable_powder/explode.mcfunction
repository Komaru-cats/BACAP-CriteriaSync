# from: entity/other/main
# @s: unstable_powder item entity

# audiovisuals
execute if entity @s[tag=in.ticking_entity] run playsound minecraft:item.trident.thunder player @a[distance=..30] ~ ~ ~ 0.4 1.6 0
execute if entity @s[tag=in.ticking_entity] run playsound minecraft:block.bell.use player @a[distance=..30] ~ ~ ~ 2 1.5
execute if entity @s[tag=in.ticking_entity] run playsound minecraft:block.bell.resonate player @a[distance=..30] ~ ~ ~ 2 1.25
execute if entity @s[tag=in.ticking_entity] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 150 force
execute if entity @s[tag=in.ticking_entity] run particle minecraft:flash ~ ~ ~ 0 0 0 10 40 force
execute if entity @s[tag=in.ticking_entity] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.4 250
execute if entity @s[tag=in.ticking_entity] run effect give @e[type=#incendium:mobs_no_player,tag=in.castle,distance=..80] glowing 20 0 true
execute if entity @s[tag=in.ticking_entity] run effect give @e[type=#incendium:mobs_no_player,tag=in.sanctum,distance=..80] glowing 20 0 true

kill @s[tag=in.ticking_entity]

scoreboard objectives add bac_glow_count dummy

execute as @e[type=#incendium:mobs_no_player,tag=in.castle,distance=..80] run scoreboard players add @p bac_glow_count 1
execute as @e[type=#incendium:mobs_no_player,tag=in.sanctum,distance=..80] run scoreboard players add @p bac_glow_count 1

advancement grant @a[scores={bac_glow_count=50..}] only blazeandcave:nether/phosphorescence
scoreboard players set @a bac_glow_count 0