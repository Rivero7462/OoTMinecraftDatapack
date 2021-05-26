execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand minecraft:barrier{SwordHand:1b}
execute unless entity @s[nbt={ActiveEffects:[{Id:4b}]}] unless entity @s[nbt={Inventory:[{tag:{SwordHand:1b}}]}] run effect give @s minecraft:mining_fatigue 1 127 true
