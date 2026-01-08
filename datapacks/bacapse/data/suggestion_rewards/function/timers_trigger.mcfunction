tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","translate":"Timer Progress"}
tellraw @s {"color":"gray","italic":true,"translate":"Numbers are in seconds"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s stay_in_azure_bluet matches 1.. run execute if entity @s[advancements={terrible_suggestions:riddles/azure_bluet_third_line=true}] run tellraw @s {"color":"white","translate":"Riddle Me Azure Bluet Line 4","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"stay_in_azure_bluet"}}]}
execute if score @s nitwit_mansion_timer matches 1.. if entity @s[advancements={terrible_suggestions:riddles/job_eighth_line=true}] run tellraw @s {"color":"white","translate":"I should riddle you a job Line 9","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"nitwit_mansion_timer"}}]}


tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s se_timers 0