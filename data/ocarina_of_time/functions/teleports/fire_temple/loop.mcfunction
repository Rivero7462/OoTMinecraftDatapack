#Death Mountain Crater
execute if entity @s[x=3073,y=42,z=1982,dx=2,dz=2] run function ocarina_of_time:teleports/fire_temple/death_mountain_crater/to
execute if entity @s[x=3072,y=121,z=1960,dx=0,dz=0] run function ocarina_of_time:teleports/fire_temple/death_mountain_crater/from

#Boss Room
execute if entity @s[tag=!Boss,x=3013,y=45,z=1955,dx=2,dy=10,dz=2] run tp @s 3014 ~ 1956
execute if entity @s[tag=!Boss,x=3013,y=45,z=1955,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 2 3 true
execute unless entity @s[tag=StartFireMedallion] if entity @s[tag=!Boss,x=3013,y=56,z=1955,dx=2,dz=2] run function ocarina_of_time:teleports/fire_temple/boss_room
execute if entity @s[tag=StartFireMedallion,tag=!Boss,x=3013,y=56,z=1955,dx=2,dz=2] run function ocarina_of_time:teleports/fire_temple/fire_medallion
