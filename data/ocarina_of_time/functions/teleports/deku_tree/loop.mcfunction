#Kokiri Forest
execute if entity @s[x=1345,y=64,z=-639,dx=7,dz=4] run function ocarina_of_time:teleports/deku_tree/kokiri_forest/to
execute if entity @s[x=1356,y=98,z=-637,dx=0,dz=0] run function ocarina_of_time:teleports/deku_tree/kokiri_forest/from

#Boss Room
execute if entity @s[tag=!Boss,x=1425,y=12,z=-662,dx=2,dy=10,dz=2] run tp @s 1426 ~ -661
execute if entity @s[tag=!Boss,x=1425,y=12,z=-662,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute if entity @s[tag=!Boss,x=1425,y=23,z=-662,dx=2,dz=2] run function ocarina_of_time:teleports/deku_tree/boss_room
