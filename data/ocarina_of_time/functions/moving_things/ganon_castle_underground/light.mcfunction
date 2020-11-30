particle minecraft:composter ~ ~ ~ .5 .5 .5 0 1 force
execute if block ~ ~ ~ minecraft:air positioned ~ ~-1.5 ~ run function ocarina_of_time:moving_things/ganon_castle_underground/light

#Mirror
execute if entity @a[x=-533,y=31,z=2031,dx=2,dy=1,dz=2] run tag @a add Reflect
execute if entity @a[x=-534,y=31,z=2030,dx=4,dy=1,dz=4] unless entity @a[x=-533,y=31,z=2031,dx=2,dy=1,dz=2] run tag @a remove Reflect
