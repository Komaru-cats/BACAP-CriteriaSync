execute unless score @s stew_traded matches 1.. run scoreboard players add @s stew_trade_days 1
scoreboard players add @s stew_traded 1

execute if score @s stew_trade_days matches 8.. if entity @s[advancements={terrible_suggestions:riddles/job_seventh_line=true}] run advancement grant @s only terrible_suggestions:riddles/job_eighth_line

advancement revoke @s only terrible_suggestions:technical/rabbit_stew_trade