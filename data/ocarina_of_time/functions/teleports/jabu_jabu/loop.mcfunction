#Enterance
execute if entity @s[x=1597,y=54,z=1291,dx=1,dy=1,dz=6] run function ocarina_of_time:teleports/jabu_jabu/zora_fountain/to
execute if entity @s[x=1680,y=59,z=1294,dx=0,dz=0] run function ocarina_of_time:teleports/jabu_jabu/zora_fountain/from

#Boss Room
execute if entity @s[tag=!Boss,x=1687,y=52,z=1338,dx=2,dy=10,dz=2] run tp @s 1688 ~ 1339
execute if entity @s[tag=!Boss,x=1687,y=52,z=1338,dx=2,dy=10,dz=2] as @e[type=armor_stand,tag=Ruto1] at @s if entity @s[x=1689,y=53,z=1339,dx=0,dy=10,dz=0] run tp @s ~ ~.15 ~
execute if entity @s[tag=!Boss,x=1687,y=52,z=1338,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute if entity @s[tag=!Boss,x=1687,y=59,z=1338,dx=2,dz=2] run function ocarina_of_time:teleports/jabu_jabu/boss_room
