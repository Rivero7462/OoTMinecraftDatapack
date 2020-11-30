#Zora's Domain
execute if entity @s[x=1367,y=54,z=1314,dx=10,dy=1,dz=12] run function ocarina_of_time:teleports/zora_fountain/zora_domain/to
execute if entity @s[x=1404,y=51,z=1318,dx=0,dz=0] run function ocarina_of_time:teleports/zora_fountain/zora_domain/from

#Jabu-Jabu
execute if entity @s[x=1402,y=55,z=1291,distance=..4] unless entity @s[tag=Adult] run function ocarina_of_time:teleports/zora_fountain/jabu_jabu/to
execute if entity @s[x=1404,y=51,z=1316,dx=0,dz=0] unless entity @s[tag=Adult] run function ocarina_of_time:teleports/zora_fountain/jabu_jabu/from

#Ice Cavern
execute if entity @s[x=1405,y=56,z=1242,dx=33,dy=4,dz=8] run function ocarina_of_time:teleports/zora_fountain/ice_cavern/to
execute if entity @s[x=1404,y=51,z=1314,dx=0,dz=0] run function ocarina_of_time:teleports/zora_fountain/ice_cavern/from

#Wall
execute if block 1439 55 1352 minecraft:air run fill 1435 55 1354 1450 57 1354 minecraft:air replace minecraft:stone
execute if block 1439 55 1352 minecraft:air run fill 1450 58 1354 1436 59 1354 minecraft:air replace minecraft:stone
execute if block 1439 55 1352 minecraft:air run fill 1440 60 1354 1448 60 1354 minecraft:air replace minecraft:stone
execute if block 1439 55 1352 minecraft:air run fill 1444 61 1354 1444 61 1354 minecraft:air

#Great Fairy Fountain
execute if entity @s[x=1435,y=56,z=1358,dx=15,dz=0] run function ocarina_of_time:teleports/zora_fountain/great_fairy_fountain/inside
execute if entity @s[x=1449,y=55,z=1418,dx=4,dz=0] run function ocarina_of_time:teleports/zora_fountain/great_fairy_fountain/outside
