# Advancement
scoreboard objectives add bac_kill_inferno dummy
execute at @e[type=blaze,tag=in.hovering_inferno] run scoreboard players add @a[tag=in.survival_player,distance=..50] bac_kill_inferno 1
advancement grant @a[scores={bac_kill_inferno=1..}] only blazeandcave:nether/back_from_whence_you_came 1
advancement grant @a[scores={bac_kill_inferno=2..}] only blazeandcave:nether/back_from_whence_you_came 2
advancement grant @a[scores={bac_kill_inferno=3..}] only blazeandcave:nether/back_from_whence_you_came 3
advancement grant @a[scores={bac_kill_inferno=4..}] only blazeandcave:nether/back_from_whence_you_came 4
advancement grant @a[scores={bac_kill_inferno=5..}] only blazeandcave:nether/back_from_whence_you_came 5
advancement grant @a[scores={bac_kill_inferno=6..}] only blazeandcave:nether/back_from_whence_you_came 6
advancement grant @a[scores={bac_kill_inferno=7..}] only blazeandcave:nether/back_from_whence_you_came 7
advancement grant @a[scores={bac_kill_inferno=8..}] only blazeandcave:nether/back_from_whence_you_came 8
advancement grant @a[scores={bac_kill_inferno=9..}] only blazeandcave:nether/back_from_whence_you_came 9
advancement grant @a[scores={bac_kill_inferno=10..}] only blazeandcave:nether/back_from_whence_you_came 10

# kill all entities involved

execute as @e[type=blaze,tag=in.hovering_inferno] at @s run forceload remove ~ ~

execute store result score $players in.dummy if entity @a[tag=in.inferno_fight]
scoreboard players remove $players in.dummy 2
scoreboard players set $running in.inferno 0

execute if score $players in.dummy matches 1.. run loot spawn ~ ~ ~ loot incendium:hovering_inferno/extras

kill @e[tag=in.inferno_entity]

function incendium:hovering_inferno/spell/kill/aec
function incendium:hovering_inferno/spell/kill/arrows
function incendium:hovering_inferno/spell/kill/bullets
function incendium:hovering_inferno/spell/kill/butterfly
function incendium:hovering_inferno/spell/kill/fireballs

bossbar set incendium:inferno players
tag @a remove in.inferno_fight

schedule clear incendium:hovering_inferno/2s
schedule clear incendium:hovering_inferno/main
schedule clear incendium:hovering_inferno/loop
schedule clear incendium:hovering_inferno/timer
execute as @a run function incendium:border_of_life/stop

data remove storage incendium:main inferno
