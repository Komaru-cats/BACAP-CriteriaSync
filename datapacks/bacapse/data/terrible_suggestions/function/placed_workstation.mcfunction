execute unless score @s se_composter_uses matches 1.. run scoreboard players set @s se_composter_uses 0
execute unless score @s se_barrel_uses matches 1.. run scoreboard players set @s se_barrel_uses 0
execute unless score @s se_loom_uses matches 1.. run scoreboard players set @s se_loom_uses 0
execute unless score @s se_brewing_stand_uses matches 1.. run scoreboard players set @s se_brewing_stand_uses 0
execute unless score @s se_smoker_uses matches 1.. run scoreboard players set @s se_smoker_uses 0
execute unless score @s se_cauldron_uses matches 1.. run scoreboard players set @s se_cauldron_uses 0
execute unless score @s se_grindstone_uses matches 1.. run scoreboard players set @s se_grindstone_uses 0
execute unless score @s se_blast_furnace_uses matches 1.. run scoreboard players set @s se_blast_furnace_uses 0
execute unless score @s se_smithing_table_uses matches 1.. run scoreboard players set @s se_smithing_table_uses 0
execute unless score @s se_lectern_uses matches 1.. run scoreboard players set @s se_lectern_uses 0
execute unless score @s se_cartography_table_uses matches 1.. run scoreboard players set @s se_cartography_table_uses 0
execute unless score @s se_stonecutter_uses matches 1.. run scoreboard players set @s se_stonecutter_uses 0


execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={composter=true}}] run scoreboard players add @s se_composter_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={barrel=true}}] run scoreboard players add @s se_barrel_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={loom=true}}] run scoreboard players add @s se_loom_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={brewing_stand=true}}] run scoreboard players add @s se_brewing_stand_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={smoker=true}}] run scoreboard players add @s se_smoker_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={cauldron=true}}] run scoreboard players add @s se_cauldron_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={grindstone=true}}] run scoreboard players add @s se_grindstone_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={blast_furnace=true}}] run scoreboard players add @s se_blast_furnace_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={smithing_table=true}}] run scoreboard players add @s se_smithing_table_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={lectern=true}}] run scoreboard players add @s se_lectern_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={cartography_table=true}}] run scoreboard players add @s se_cartography_table_uses 1
execute if entity @s[advancements={terrible_suggestions:technical/any_workstation_use={stonecutter=true}}] run scoreboard players add @s se_stonecutter_uses 1

execute if score @s se_composter_uses matches 100.. if score @s se_barrel_uses matches 100.. if score @s se_loom_uses matches 100.. if score @s se_brewing_stand_uses matches 100.. if score @s se_smoker_uses matches 100.. if score @s se_cauldron_uses matches 100.. if score @s se_grindstone_uses matches 100.. if score @s se_blast_furnace_uses matches 100.. if score @s se_smithing_table_uses matches 100.. if score @s se_lectern_uses matches 100.. if score @s se_cartography_table_uses matches 100.. if score @s se_stonecutter_uses matches 100.. run advancement grant @s only terrible_suggestions:suggestions/working_overtime

advancement revoke @s only terrible_suggestions:technical/any_workstation_use