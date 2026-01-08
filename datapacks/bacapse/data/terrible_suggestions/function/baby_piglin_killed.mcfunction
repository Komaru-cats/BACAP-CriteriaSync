scoreboard players add @s se_baby_piglins_killed 1

advancement revoke @s only terrible_suggestions:technical/kill_baby_piglin
execute if entity @s[advancements={terrible_suggestions:riddles/job_sixth_line=true}] if score @s se_baby_piglins_killed matches 7.. run advancement grant @s only terrible_suggestions:riddles/job_seventh_line
