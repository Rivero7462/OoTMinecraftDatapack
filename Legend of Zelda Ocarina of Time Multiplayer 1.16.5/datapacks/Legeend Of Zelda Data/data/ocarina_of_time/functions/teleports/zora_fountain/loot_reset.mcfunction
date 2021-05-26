#Pots
fill 1390 55 1296 1390 55 1296 minecraft:flower_pot
fill 1392 55 1296 1392 55 1296 minecraft:flower_pot
fill 1390 55 1286 1390 55 1286 minecraft:flower_pot
fill 1392 55 1286 1392 55 1286 minecraft:flower_pot
fill 1444 44 1352 1444 44 1352 minecraft:flower_pot
fill 1445 44 1352 1445 44 1352 minecraft:flower_pot
fill 1445 44 1351 1445 44 1351 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Signs
execute unless block 1383 53 1298 minecraft:oak_sign[waterlogged=true] run clone 1383 48 1298 1383 48 1298 1383 53 1298

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone22] run summon minecraft:armor_stand 1395 53 1271 {Tags:["GossipStone22","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone23] run summon minecraft:armor_stand 1449 54 1341 {Tags:["GossipStone23","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Silver Rock
fill 1442 56 1353 1443 55 1354 minecraft:dead_bubble_coral_block
