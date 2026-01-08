execute if score @s se_jumps matches 1.. run scoreboard players add @s jump_streak 1
execute if score @s se_jumps matches 0 run scoreboard players set @s jump_streak 0
execute if score @s jump_streak matches 1200.. if entity @s[advancements={terrible_suggestions:riddles/twice_second_line=true}] run advancement grant @s only terrible_suggestions:riddles/twice_third_line
scoreboard players set @a se_jumps 0