execute unless entity @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:nitwit"}},distance=..256,predicate=terrible_suggestions:in_mansion] run scoreboard players set @s nitwit_mansion 0
execute unless entity @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:nitwit"}},distance=..256,predicate=terrible_suggestions:in_mansion] run scoreboard players set @s nitwit_mansion_timer 0

execute if entity @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:nitwit"}},distance=..256,predicate=terrible_suggestions:in_mansion] if score @s nitwit_mansion matches 1.. run scoreboard players add @s nitwit_mansion_timer 1

execute if entity @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:nitwit"}},distance=..256,predicate=terrible_suggestions:in_mansion] unless score @s nitwit_mansion matches 1.. run scoreboard players set @s nitwit_mansion_timer 0
execute if entity @e[type=minecraft:villager,nbt={VillagerData:{profession:"minecraft:nitwit"}},distance=..256,predicate=terrible_suggestions:in_mansion] unless score @s nitwit_mansion matches 1.. run scoreboard players set @s nitwit_mansion 1

execute if score @s nitwit_mansion matches 1.. if score @s nitwit_mansion_timer matches 10800.. if entity @s[advancements={terrible_suggestions:riddles/job_eighth_line=true}] run advancement grant @s only terrible_suggestions:riddles/job_ninth_line