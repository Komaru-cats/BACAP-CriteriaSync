scoreboard players set @s se_inv_check 0
scoreboard players set @s se_inv_azure_bluets 0

execute store result score @s se_inv_check if items entity @s inventory.* minecraft:azure_bluet
scoreboard players operation @s se_inv_azure_bluets += @s se_inv_check
execute store result score @s se_inv_check if items entity @s hotbar.* minecraft:azure_bluet
scoreboard players operation @s se_inv_azure_bluets += @s se_inv_check
execute store result score @s se_inv_check if items entity @s weapon.offhand minecraft:azure_bluet
scoreboard players operation @s se_inv_azure_bluets += @s se_inv_check

execute if entity @s[scores={se_inv_azure_bluets=2368..}] if entity @s[advancements={terrible_suggestions:riddles/azure_bluet_sequel_fourteenth_line=true}] run advancement grant @s only terrible_suggestions:riddles/azure_bluet_sequel_fifteenth_line