#Rocks
scoreboard players set @a HoldingRock 1
fill 2007 93 1458 2007 93 1458 minecraft:granite_slab
fill 2008 93 1456 2008 93 1456 minecraft:granite_slab
fill 2007 93 1455 2007 93 1455 minecraft:granite_slab
fill 2008 93 1453 2008 93 1453 minecraft:granite_slab
fill 2007 93 1452 2007 93 1452 minecraft:granite_slab
fill 2028 110 1434 2028 110 1434 minecraft:granite_slab
fill 2027 110 1433 2027 110 1433 minecraft:granite_slab
fill 2027 110 1431 2027 110 1431 minecraft:granite_slab
fill 2028 110 1430 2028 110 1430 minecraft:granite_slab
fill 2030 110 1430 2030 110 1430 minecraft:granite_slab
fill 2031 110 1431 2031 110 1431 minecraft:granite_slab
fill 2031 110 1433 2031 110 1433 minecraft:granite_slab
fill 2030 110 1434 2030 110 1434 minecraft:granite_slab
fill 2021 157 1349 2021 157 1349 minecraft:granite_slab
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Signs
execute unless block 2008 93 1454 minecraft:oak_sign run clone 2008 89 1454 2008 89 1454 2008 93 1454
execute unless block 2019 109 1481 minecraft:oak_sign run clone 2019 105 1481 2019 105 1481 2019 109 1481
execute unless block 2016 112 1454 minecraft:oak_sign run clone 2016 108 1454 2016 108 1454 2016 112 1454
execute unless block 2031 106 1420 minecraft:oak_sign run clone 2031 102 1420 2031 102 1420 2031 106 1420

#Destroy
execute positioned 2030 115 1469 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:smooth_red_sandstone
execute positioned 2020 112 1469 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:smooth_red_sandstone

#Bean Spots
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean1] run clone 2012 89 1444 2014 89 1446 2010 93 1450
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean1] run fill 2011 93 1451 2011 93 1451 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone17] run summon minecraft:armor_stand 2029 144 1360 {Tags:["GossipStone17","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Grottos
fill 2022 67 1468 2022 67 1468 minecraft:grass
fill 2023 67 1466 2023 67 1466 minecraft:grass
data remove block 2019 66 1468 Items
execute positioned 2019 66 1468 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 2021 66 1465 Items
execute positioned 2021 66 1465 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 2025 66 1468 Items
execute positioned 2025 66 1468 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
fill 2029 109 1432 2029 109 1432 minecraft:smooth_red_sandstone
execute unless entity @e[type=armor_stand,tag=GossipStone30] run summon minecraft:armor_stand 2018 67 1443 {Tags:["GossipStone30","GossipStone","GrottoGossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
fill 2019 67 1442 2019 67 1442 minecraft:grass
fill 2021 67 1435 2021 67 1435 minecraft:grass
fill 2019 67 1435 2019 67 1435 minecraft:grass
fill 2019 67 1437 2019 67 1437 minecraft:grass
