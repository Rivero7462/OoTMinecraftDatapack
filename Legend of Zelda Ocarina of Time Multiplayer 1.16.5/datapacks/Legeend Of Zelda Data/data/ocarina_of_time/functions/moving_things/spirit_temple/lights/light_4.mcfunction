particle minecraft:composter ~ ~ ~ .5 .5 .5 0 1 force
execute if block ~ ~ ~ minecraft:air positioned ~-1 ~-2 ~ run function ocarina_of_time:moving_things/spirit_temple/lights/light_4

#Mirror
execute if entity @a[x=27,y=111,z=873,dx=2,dy=1,dz=2] run tag @a add Reflect
execute if entity @a[x=26,y=111,z=872,dx=4,dy=1,dz=4] unless entity @a[x=27,y=111,z=873,dx=2,dy=1,dz=2] run tag @a remove Reflect
