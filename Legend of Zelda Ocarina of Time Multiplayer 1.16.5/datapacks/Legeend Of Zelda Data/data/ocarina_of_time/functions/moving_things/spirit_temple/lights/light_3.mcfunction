particle minecraft:composter ~ ~ ~ .5 .5 .5 0 1 force
execute if block ~ ~ ~ minecraft:air positioned ~-2.4 ~-1.7 ~ run function ocarina_of_time:moving_things/spirit_temple/lights/light_3

#Mirror
execute if entity @a[x=3,y=99,z=854,dx=2,dy=1,dz=2] run tag @a add Reflect
execute if entity @a[x=2,y=99,z=853,dx=4,dy=1,dz=4] unless entity @a[x=3,y=99,z=854,dx=2,dy=1,dz=2] run tag @a remove Reflect
