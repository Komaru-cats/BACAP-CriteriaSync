execute if score @s se_triggers matches 1.. run scoreboard players set @s se_triggers 99999
execute if score @s se_triggers matches ..0 run scoreboard players set @s se_triggers 1
execute if score @s se_triggers matches 99999 run scoreboard players set @s se_triggers 0

scoreboard players reset @s[scores={se_triggers=..0}] se_timers
scoreboard players reset @s[scores={se_triggers=..0}] se_statistics
scoreboard players reset @s[scores={se_triggers=..0}] se_bee_movie
scoreboard players reset @s[scores={se_triggers=..0}] se_biome_rush
scoreboard players reset @s[scores={se_triggers=..0}] se_unique_books
scoreboard players reset @s[scores={se_triggers=..0}] se_stew_a_day

scoreboard players enable @s[scores={se_triggers=1..}] se_timers
scoreboard players enable @s[scores={se_triggers=1..}] se_statistics
scoreboard players enable @s[scores={se_triggers=1..}] se_bee_movie
scoreboard players enable @s[scores={se_triggers=1..}] se_biome_rush
scoreboard players enable @s[scores={se_triggers=1..}] se_unique_books
scoreboard players enable @s[scores={se_triggers=1..}] se_stew_a_day

tellraw @s {"color":"green","translate":"Triggers toggled!"}

scoreboard players set @s se_toggle_triggers 0