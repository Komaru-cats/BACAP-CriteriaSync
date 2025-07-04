# from: clocks/main

scoreboard players add $castle.tick in.state 1
execute if score $castle.tick in.state matches 4.. run scoreboard players set $castle.tick in.state 0

tag @e[type=piglin_brute,tag=in.paratrooper] add bac_paratrooper
tag @e[type=piglin_brute,tag=in.blacksmith] add bac_blacksmith
tag @e[type=piglin_brute,tag=!bac_paratrooper,tag=!bac_blacksmith,tag=in.netherite] add bac_knight_netherite