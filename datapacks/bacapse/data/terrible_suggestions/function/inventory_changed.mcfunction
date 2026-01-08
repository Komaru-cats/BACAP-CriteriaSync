advancement revoke @s only terrible_suggestions:technical/inventory_changed

execute if entity @s[advancements={terrible_suggestions:riddles/azure_bluet_sequel_fifteenth_line=false}] if entity @s[advancements={terrible_suggestions:riddles/azure_bluet_sequel_fourteenth_line=true}] run function terrible_suggestions:inv_check_azure_bluets

execute if entity @s[advancements={terrible_suggestions:riddles/job_third_line=false}] if entity @s[advancements={terrible_suggestions:riddles/job_second_line=true}] run function terrible_suggestions:inv_check_written_books

execute if entity @s[advancements={terrible_suggestions:riddles/job_tenth_line_two=false}] if entity @s[advancements={terrible_suggestions:riddles/job_tenth_line_one=true}] run function terrible_suggestions:inv_check_diamond_chestplates