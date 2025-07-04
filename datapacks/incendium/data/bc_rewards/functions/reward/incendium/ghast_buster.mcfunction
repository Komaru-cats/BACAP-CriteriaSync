give @s minecraft:ghast_tear 3
tellraw @s {"color":"green","text":" +3 ","extra":[{"translate":"item.minecraft.ghast_tear"}]}
give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:flame",lvl:1}]} 1
tellraw @s {"color":"green","text":" +1 ","extra":[{"translate":"enchantment.minecraft.flame"},{"text":" "},{"translate":"item.minecraft.enchanted_book"}]}