#Entrance
execute if entity @s[x=2190,y=35,z=1979,dx=4,dz=3] run function ocarina_of_time:teleports/dodongo_cavern/death_mountain/to
execute if entity @s[x=2208,y=59,z=1925,dx=0,dz=0] run function ocarina_of_time:teleports/dodongo_cavern/death_mountain/from

#Exit
execute if entity @s[tag=!Boss,x=2155,y=12,z=1896,dx=2,dy=10,dz=2] run tp @s 2156 ~ 1897
execute if entity @s[tag=!Boss,x=2155,y=12,z=1896,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute if entity @s[tag=!Boss,x=2155,y=23,z=1896,dx=2,dz=2] run function ocarina_of_time:teleports/dodongo_cavern/boss_room
