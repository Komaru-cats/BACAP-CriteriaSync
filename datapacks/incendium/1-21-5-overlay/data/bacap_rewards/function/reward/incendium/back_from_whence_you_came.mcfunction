loot spawn ~ ~ ~ loot incendium:artifact/weapon/firestorm
tellraw @s {color:"green",text:" +1 ",extra:[{translate:"incendium.item.firestorm.name","fallback":"Firestorm"}]}
give @s blaze_rod 32
tellraw @s {color:"green",text:" +32 ",extra:[{translate:"item.minecraft.blaze_rod"}]}