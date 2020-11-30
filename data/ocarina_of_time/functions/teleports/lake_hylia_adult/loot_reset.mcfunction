#Rocks
scoreboard players set @a HoldingRock 1
fill 1450 68 2706 1450 68 2706 minecraft:granite_slab

#Grass
fill 1407 66 2783 1406 66 2783 minecraft:grass
fill 1365 72 2672 1367 72 2668 minecraft:grass
fill 1364 72 2671 1368 72 2669 minecraft:grass
fill 1361 71 2683 1363 71 2679 minecraft:grass
fill 1364 71 2680 1360 71 2682 minecraft:grass
fill 1375 70 2674 1377 70 2678 minecraft:grass
fill 1378 70 2677 1374 70 2675 minecraft:grass
fill 1418 66 2684 1418 66 2684 minecraft:grass
fill 1420 66 2681 1420 66 2681 minecraft:grass
fill 1427 66 2680 1427 66 2680 minecraft:grass
fill 1428 67 2677 1428 67 2677 minecraft:grass

#Signs
execute unless block 1368 71 2693 minecraft:oak_sign run clone 1367 67 2693 1367 67 2693 1368 71 2693

#Bean Spots
execute if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean9] run clone 1355 67 2691 1357 67 2693 1359 71 2691

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone24] run summon minecraft:armor_stand 1337 71 2685 {Tags:["GossipStone24","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone25] run summon minecraft:armor_stand 1337 65 2801 {Tags:["GossipStone25","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#3
execute unless entity @e[type=armor_stand,tag=GossipStone26] run summon minecraft:armor_stand 1459 65 2803 {Tags:["GossipStone26","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
