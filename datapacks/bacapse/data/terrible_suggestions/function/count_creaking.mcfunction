execute store result score @s se_creaking_count run execute if entity @e[type=creaking,distance=..50]

execute if score @s se_creaking_count matches 50.. run advancement grant @s only terrible_suggestions:suggestions/get_to_the_tardis