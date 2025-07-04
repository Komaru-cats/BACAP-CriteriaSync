give @s minecraft:gold_ingot 8
tellraw @s {"color":"green","text":" +8 ","extra":[{"translate":"item.minecraft.gold_ingot"}]}
give @s minecraft:enchanted_book{StoredEnchantments:[{id:"minecraft:fortune",lvl:2s}]}
tellraw @s {"color":"green","text":" +1 ","extra":[{"translate":"enchantment.minecraft.fortune"},{"text":" "},{"translate":"enchantment.level.2"},{"text":" "},{"translate":"item.minecraft.enchanted_book"}]}