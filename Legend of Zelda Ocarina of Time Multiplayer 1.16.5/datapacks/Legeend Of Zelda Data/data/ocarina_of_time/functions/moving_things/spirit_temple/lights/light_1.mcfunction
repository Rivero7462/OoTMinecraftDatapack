execute unless block -58 97 853 minecraft:gold_block run tag @e[type=armor_stand,tag=Sun1] add Light
execute unless block -58 97 853 minecraft:gold_block at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1
execute unless block -58 97 853 minecraft:gold_block run fill -49 99 856 -49 99 856 minecraft:stone_pressure_plate
fill -58 97 853 -58 97 853 minecraft:gold_block
particle minecraft:composter ~ ~ ~ .5 .5 .5 0 1 force
execute if block ~ ~ ~ minecraft:air positioned ~1.5 ~-1.5 ~ run function ocarina_of_time:moving_things/spirit_temple/lights/light_1

#Mirror
execute if entity @a[x=-60,y=99,z=854,dx=2,dy=1,dz=2] run tag @a add Reflect
execute if entity @a[x=-61,y=99,z=853,dx=4,dy=1,dz=4] unless entity @a[x=-60,y=99,z=854,dx=2,dy=1,dz=2] run tag @a remove Reflect
