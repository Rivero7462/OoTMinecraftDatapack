#Kokiri Forest*
execute if entity @s[x=897,y=58,z=-1098,dx=2,dz=0] run function ocarina_of_time:teleports/forest_temple/kokiri_forest/to
execute if entity @s[x=898,y=89,z=-1171,dx=0,dz=0] run function ocarina_of_time:teleports/forest_temple/kokiri_forest/from

#Boss Room*
execute if block 904 24 -1203 minecraft:gold_block if entity @s[tag=!Boss,x=897,y=27,z=-1206,dx=2,dy=10,dz=2] run tp @s 898 ~ -1205
execute if block 904 24 -1203 minecraft:gold_block if entity @s[tag=!Boss,x=897,y=27,z=-1206,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute if block 904 24 -1203 minecraft:gold_block if entity @s[tag=!Boss,x=897,y=38,z=-1206,dx=2,dz=2] run function ocarina_of_time:teleports/forest_temple/boss_room

#This seems likee it won't work, but We'll find out
#Sages Realm
execute if block 904 24 -1203 minecraft:gold_block if entity @s[tag=Boss,x=897,y=27,z=-1206,dx=2,dy=10,dz=2] run tp @s 898 ~ -1205
execute if block 904 24 -1203 minecraft:gold_block if entity @s[tag=Boss,x=897,y=27,z=-1206,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute if block 904 24 -1203 minecraft:gold_block if entity @s[tag=Boss,x=897,y=38,z=-1206,dx=2,dz=2] run function ocarina_of_time:teleports/forest_temple/forest_medallion
