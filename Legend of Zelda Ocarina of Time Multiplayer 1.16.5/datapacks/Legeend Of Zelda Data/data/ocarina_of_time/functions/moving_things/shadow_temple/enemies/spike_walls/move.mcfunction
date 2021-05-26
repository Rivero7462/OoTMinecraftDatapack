#Wall
execute if block ^ ^ ^-.5 minecraft:air positioned ~ ~ ~-4 if entity @a[dz=8] at @s run tp @a ^ ^ ^1
execute if block ^ ^ ^-.5 minecraft:air run fill ^-4 ^ ^-.5 ^4 ^3 ^-.5 minecraft:barrier replace minecraft:air
execute if block ^ ^ ^-2 minecraft:barrier run fill ^-4 ^ ^-2 ^4 ^3 ^-2 minecraft:air replace minecraft:barrier

#Move
execute as @s[tag=SpikeWall1] at @s run tp @s ~-.015 ~ ~
execute as @s[tag=SpikeWall2] at @s run tp @s ~.015 ~ ~

#Damage
execute if block ^ ^ ^1 minecraft:air positioned ~ ~ ~-4 if entity @a[dz=8] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true

#Kill
execute if entity @s[x=1551,y=58,z=882,dx=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[x=1551,y=58,z=882,dx=0,dz=0] run fill 1550 55 878 1550 55 878 minecraft:air
execute if entity @s[x=1551,y=58,z=882,dx=0,dz=0] run tp @a 1551 58 886 180 0
execute if entity @s[x=1551,y=58,z=882,dx=0,dz=0] run fill 1561 58 886 1541 63 878 minecraft:air replace minecraft:barrier
execute if entity @s[x=1551,y=58,z=882,dx=0,dz=0] run kill @e[type=armor_stand,tag=SpikeWall]

execute if entity @a[x=1551,y=58,z=888,dx=0,dz=0] run fill 1550 55 878 1550 55 878 minecraft:air
execute if entity @a[x=1551,y=58,z=888,dx=0,dz=0] run fill 1561 58 886 1541 63 878 minecraft:air replace minecraft:barrier
execute if entity @a[x=1551,y=58,z=888,dx=0,dz=0] run kill @e[type=armor_stand,tag=SpikeWall]
