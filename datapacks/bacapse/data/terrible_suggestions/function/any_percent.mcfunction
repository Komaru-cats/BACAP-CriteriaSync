execute if entity @s[predicate=terrible_suggestions:in_village] run scoreboard players set @s ap_village 300
execute if entity @s[predicate=terrible_suggestions:in_fortress] run scoreboard players set @s ap_fortress 300
execute if entity @s[predicate=terrible_suggestions:in_bastion] run scoreboard players set @s ap_bastion 300
execute if entity @s[predicate=terrible_suggestions:in_stronghold] run scoreboard players set @s ap_stronghold 300
execute if dimension minecraft:the_end run scoreboard players set @s ap_end 300

execute if score @s ap_village matches 1.. run scoreboard players remove @s ap_village 1
execute if score @s ap_fortress matches 1.. run scoreboard players remove @s ap_fortress 1
execute if score @s ap_bastion matches 1.. run scoreboard players remove @s ap_bastion 1
execute if score @s ap_stronghold matches 1.. run scoreboard players remove @s ap_stronghold 1
execute if score @s ap_end matches 1.. run scoreboard players remove @s ap_end 1

execute if score @s ap_village matches 1.. if score @s ap_fortress matches 1.. if score @s ap_bastion matches 1.. if score @s ap_stronghold matches 1.. if score @s ap_end matches 1.. if score @s ap_village <= @s ap_fortress if score @s ap_fortress <= @s ap_bastion if score @s ap_bastion <= @s ap_stronghold if score @s ap_stronghold <= @s ap_end run advancement grant @s only terrible_suggestions:suggestions/any_percent
