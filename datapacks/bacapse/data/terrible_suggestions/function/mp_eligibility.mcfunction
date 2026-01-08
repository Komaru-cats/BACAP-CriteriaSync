execute if entity @s[advancements={terrible_suggestions:technical/mp_summons={dragon=true}}] run scoreboard players set @s mp_dragon 60
execute if entity @s[advancements={terrible_suggestions:technical/mp_summons={wither=true}}] run scoreboard players set @s mp_wither 60
execute if entity @s[advancements={terrible_suggestions:technical/mp_summons={raid=true}}] run scoreboard players set @s mp_raid 60
execute if entity @s[advancements={terrible_suggestions:technical/mp_summons={iron_golem=true}}] run scoreboard players set @s mp_iron_golem 60
execute if entity @s[advancements={terrible_suggestions:technical/mp_summons={snow_golem=true}}] run scoreboard players set @s mp_snow_golem 60
execute if entity @s[advancements={terrible_suggestions:technical/mp_summons={copper_golem=true}}] run scoreboard players set @s mp_copper_golem 60

execute if score @s mp_dragon matches 1.. run scoreboard players remove @s mp_dragon 1
execute if score @s mp_wither matches 1.. run scoreboard players remove @s mp_wither 1
execute if score @s mp_raid matches 1.. run scoreboard players remove @s mp_raid 1
execute if score @s mp_iron_golem matches 1.. run scoreboard players remove @s mp_iron_golem 1
execute if score @s mp_snow_golem matches 1.. run scoreboard players remove @s mp_snow_golem 1
execute if score @s mp_copper_golem matches 1.. run scoreboard players remove @s mp_copper_golem 1

execute if dimension minecraft:the_end if score @s mp_dragon matches 1.. if score @s mp_wither matches 1.. if score @s mp_raid matches 1.. if score @s mp_iron_golem matches 1.. if score @s mp_snow_golem matches 1.. if score @s mp_copper_golem matches 1.. if entity @e[type=elder_guardian,distance=..256] run scoreboard players set @s mp_eligible 1

execute if score @s mp_eligible matches 1.. if score @s se_dmgt matches 1.. run scoreboard players set @s mp_eligible 0
execute if score @s mp_eligible matches 1.. if score @s se_dmga matches 1.. run scoreboard players set @s mp_eligible 0
execute if score @s mp_eligible matches 1.. if score @s se_dmgr matches 1.. run scoreboard players set @s mp_eligible 0

execute unless score @s mp_eligible matches 1.. unless entity @s[advancements={terrible_suggestions:suggestions/im_more_perfect=true}] run advancement revoke @s only terrible_suggestions:suggestions/im_more_perfect

scoreboard players set @s se_dmgt 0
scoreboard players set @s se_dmga 0
scoreboard players set @s se_dmgr 0
advancement revoke @s only terrible_suggestions:technical/mp_summons