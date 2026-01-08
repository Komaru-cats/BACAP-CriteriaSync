tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","translate":"Custom Statistics"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s lava_distance matches 0.. run tellraw @s {"color":"white","translate":"Distance Swum in Lava:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"lava_distance"}}]}
execute if score @s logs_mined_total matches 0.. run tellraw @s {"color":"white","translate":"Total Logs Mined:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"logs_mined_total"}}]}
execute if score @s se_baby_piglins_killed matches 0.. run tellraw @s {"color":"white","translate":"Baby Piglins Killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"se_baby_piglins_killed"}}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s se_statistics 0