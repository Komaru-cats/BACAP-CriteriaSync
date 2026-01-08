tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s stew_trade_days matches 0.. run tellraw @s {"translate":"You have traded for rabbit stew every day for","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"stew_trade_days"}},{"text":" "},{"translate":"days."}]}

execute if score @s stew_traded matches 1.. run tellraw @s {"color":"green","translate":"You have traded for rabbit stew today."}
execute unless score @s stew_traded matches 1.. run tellraw @s {"color":"red","translate":"You have not traded for rabbit stew today."}
tellraw @s {"color":"gray","italic":true,"text":""}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s se_stew_a_day 0