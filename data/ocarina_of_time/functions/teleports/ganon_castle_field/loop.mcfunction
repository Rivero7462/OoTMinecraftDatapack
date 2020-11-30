#Death Town
execute if entity @a[x=1370,y=72,z=529,dx=9,dy=1,dz=1] run function ocarina_of_time:teleports/ganon_castle_field/death_town/to
execute if entity @a[x=1398,y=63,z=500,dx=0,dz=0] run function ocarina_of_time:teleports/ganon_castle_field/death_town/from

#Bottom
execute at @s if block ~ ~-1 ~ minecraft:netherrack run function ocarina_of_time:teleports/ganon_castle_field/bottom

#Ganon's Castle
execute if entity @a[x=1391,y=83,z=479,dx=4,dy=1,dz=0] run function ocarina_of_time:teleports/ganon_castle_field/ganon_castle/to
execute if entity @a[x=1400,y=63,z=500,dx=0,dz=0] run function ocarina_of_time:teleports/ganon_castle_field/ganon_castle/from

#Great Fairy Fountain
execute if entity @s[x=1476,y=71,z=485,dx=0,dz=2] run function ocarina_of_time:teleports/ganon_castle_field/great_fairy_fountain/inside
execute if entity @s[x=1461,y=40,z=510,dx=4,dz=0] run function ocarina_of_time:teleports/ganon_castle_field/great_fairy_fountain/outside
