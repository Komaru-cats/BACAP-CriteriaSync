scoreboard players set @s se_trader_count 0

execute as @e[type=wandering_trader,distance=..8] at @s run scoreboard players add @p se_trader_count 1

execute if score @s se_trader_count matches 5.. run advancement grant @s only terrible_suggestions:riddles/job_first_line
