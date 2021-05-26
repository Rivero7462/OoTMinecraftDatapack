particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if block ~ ~ ~ minecraft:air positioned ^ ^ ^1.5 run function ocarina_of_time:items/mirror_shield/mirror_shield
execute as @e[type=armor_stand,tag=Sun,distance=..1] run tag @s add Light
