scoreboard players set @s se_inv_check 0
scoreboard players set @s se_inv_written_books 0

execute store result score @s se_inv_check if items entity @s inventory.* minecraft:written_book
scoreboard players operation @s se_inv_written_books += @s se_inv_check
execute store result score @s se_inv_check if items entity @s hotbar.* minecraft:written_book
scoreboard players operation @s se_inv_written_books += @s se_inv_check
execute store result score @s se_inv_check if items entity @s weapon.offhand minecraft:written_book
scoreboard players operation @s se_inv_written_books += @s se_inv_check

execute if entity @s[scores={se_inv_written_books=100..}] if entity @s[advancements={terrible_suggestions:riddles/job_second_line=true}] run advancement grant @s only terrible_suggestions:riddles/job_third_line