scoreboard players add @s timer 1
execute if block ~ ~-1 ~ minecraft:netherrack unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}},{}]}] if entity @s[scores={timer=1}] run effect give @s minecraft:wither 2 0 true
execute if block ~ ~-1 ~ minecraft:netherrack if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}},{}]},scores={timer=40}] run effect give @s minecraft:wither 2 0 true
execute unless block ~ ~-1 ~ minecraft:netherrack unless block ~ ~-2 ~ minecraft:netherrack run tag @s remove CoolDown
execute unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}},{}]}] if entity @s[scores={timer=40..}] run tag @s remove CoolDown
execute unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}},{}]}] if entity @s[scores={timer=40..}] run scoreboard players set @s timer 0
execute if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}},{}]},scores={timer=80..}] run tag @s remove CoolDown
execute if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b,tag:{GoronTunic:1b}},{}]},scores={timer=80..}] run scoreboard players set @s timer 0
