particle minecraft:composter ~ ~ ~ .5 .5 .5 0 1 force
execute if block ~ ~ ~ minecraft:air positioned ~ ~-1 ~ run function ocarina_of_time:moving_things/spirit_temple/lights/light_6

#Mirror
execute if entity @a[x=-28,y=116,z=848,dx=2,dy=17,dz=2] run tag @a add Reflect
execute if entity @a[x=-29,y=116,z=847,dx=4,dy=17,dz=4] unless entity @a[x=-28,y=116,z=848,dx=2,dy=17,dz=2] run tag @a remove Reflect
