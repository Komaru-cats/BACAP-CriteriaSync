execute if entity @s[advancements={terrible_suggestions:riddles/twice_first_line=true}] run scoreboard players add @s twice_second_line_counter 1
execute if score @s twice_second_line_counter matches 5.. if entity @s[advancements={terrible_suggestions:riddles/twice_first_line=true}] run advancement grant @s only terrible_suggestions:riddles/twice_second_line

advancement revoke @s only terrible_suggestions:technical/break_netherite_hoe