scoreboard players set @s se_inv_check 0
scoreboard players set @s se_inv_diamond_chestplates 0

execute store result score @s se_inv_check if items entity @s inventory.* minecraft:diamond_chestplate
scoreboard players operation @s se_inv_diamond_chestplates += @s se_inv_check
execute store result score @s se_inv_check if items entity @s hotbar.* minecraft:diamond_chestplate
scoreboard players operation @s se_inv_diamond_chestplates += @s se_inv_check
execute store result score @s se_inv_check if items entity @s weapon.offhand minecraft:diamond_chestplate
scoreboard players operation @s se_inv_diamond_chestplates += @s se_inv_check

execute if entity @s[scores={se_inv_diamond_chestplates=20..}] if entity @s[advancements={terrible_suggestions:riddles/job_tenth_line_one=true}] run advancement grant @s only terrible_suggestions:riddles/job_tenth_line_two