scoreboard players set @a logs_mined_temp 0

scoreboard players operation @s logs_mined_temp += @s logs_mined_oak
scoreboard players operation @s logs_mined_temp += @s logs_mined_spruce
scoreboard players operation @s logs_mined_temp += @s logs_mined_birch
scoreboard players operation @s logs_mined_temp += @s logs_mined_jungle
scoreboard players operation @s logs_mined_temp += @s logs_mined_acacia
scoreboard players operation @s logs_mined_temp += @s logs_mined_dark_oak
scoreboard players operation @s logs_mined_temp += @s logs_mined_cherry
scoreboard players operation @s logs_mined_temp += @s logs_mined_mangrove
scoreboard players operation @s logs_mined_temp += @s logs_mined_bamboo
scoreboard players operation @s logs_mined_temp += @s logs_mined_crimson
scoreboard players operation @s logs_mined_temp += @s logs_mined_warped
scoreboard players operation @s logs_mined_temp += @s logs_mined_pale_oak

scoreboard players operation @s logs_mined_total = @s logs_mined_temp

execute if score @s logs_mined_total matches 50000.. run advancement grant @s only terrible_suggestions:suggestions/lumber_legend
