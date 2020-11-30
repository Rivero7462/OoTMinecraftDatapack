#Pots
fill 1668 22 1262 1668 22 1262 minecraft:flower_pot
fill 1666 22 1262 1666 22 1262 minecraft:flower_pot
fill 1666 22 1260 1666 22 1260 minecraft:flower_pot
fill 1668 22 1260 1668 22 1260 minecraft:flower_pot
fill 1667 22 1261 1667 22 1261 minecraft:flower_pot
fill 1661 23 1310 1661 23 1310 minecraft:flower_pot
fill 1660 23 1308 1660 23 1308 minecraft:flower_pot
fill 1662 23 1308 1662 23 1308 minecraft:flower_pot
fill 1707 63 1261 1707 63 1261 minecraft:flower_pot
fill 1707 63 1259 1707 63 1259 minecraft:flower_pot
fill 1707 63 1263 1707 63 1263 minecraft:flower_pot
fill 1674 52 1348 1674 52 1348 minecraft:flower_pot
fill 1688 52 1348 1688 52 1348 minecraft:flower_pot
fill 1696 52 1340 1696 52 1340 minecraft:flower_pot
fill 1696 52 1326 1696 52 1326 minecraft:flower_pot
fill 1688 52 1318 1688 52 1318 minecraft:flower_pot
fill 1674 52 1318 1674 52 1318 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block 1762 46 1277 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block 1762 46 1277 minecraft:gold_block run tag @a add Compass
