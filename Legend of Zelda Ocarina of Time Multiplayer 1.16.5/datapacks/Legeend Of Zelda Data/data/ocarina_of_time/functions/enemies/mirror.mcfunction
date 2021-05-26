particle minecraft:composter ~ ~ ~ 0.4 0.4 0.4 0 1 force
execute if block ~ ~ ~ #ocarina_of_time:mirror positioned ^ ^ ^1 run function ocarina_of_time:enemies/mirror
execute positioned ~ ~-2 ~ if entity @a[distance=..1] run tag @a add InMirror
execute positioned ~ ~-2 ~ if entity @a[distance=..2] unless entity @a[distance=..1] run tag @a remove Reflect
execute if entity @a[tag=InMirror] run tag @a add Reflect

execute as @e[type=armor_stand,tag=Sun,distance=..2] run tag @s add Light
