execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand minecraft:barrier{SwordHand:1b}
execute unless entity @s[nbt={ActiveEffects:[{Id:3b}]}] if entity @s[nbt={Inventory:[{tag:{SwordHand:1b}}]}] run effect give @s minecraft:haste 1 127 true
execute unless entity @s[nbt={ActiveEffects:[{Id:4b}]}] unless entity @s[nbt={Inventory:[{tag:{SwordHand:1b}}]}] run effect give @s minecraft:mining_fatigue 1 127 true
execute unless entity @s[nbt={Inventory:[{tag:{SwordHand:1b}}]}] unless entity @s[tag=HammerHelp] run tellraw @s ["",{"text":"Navi:","color":"gold"},{"text":" The ","color":"aqua"},{"text":"Megaton Hammer "},{"text":"can't be properly equipped if holding a ","color":"aqua"},{"text":"shield"},{"text":".","color":"aqua"}]
execute unless entity @s[nbt={Inventory:[{tag:{SwordHand:1b}}]}] run tag @s add HammerHelp
