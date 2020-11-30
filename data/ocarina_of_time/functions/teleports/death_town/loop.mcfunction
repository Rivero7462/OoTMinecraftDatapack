#Temple of Time
execute if entity @s[x=1442,y=73,z=886,dx=0,dz=2] run function ocarina_of_time:teleports/death_town/temple_of_time/to_inside
execute if entity @s[x=925,y=8,z=1393,dx=0,dz=2] run function ocarina_of_time:teleports/death_town/temple_of_time/to_outside
execute if entity @s[x=1400,y=61,z=919,dx=0,dz=0] run function ocarina_of_time:teleports/death_town/temple_of_time/from_inside
execute if entity @s[x=884,y=60,z=1426,dx=0,dz=0] run function ocarina_of_time:teleports/death_town/temple_of_time/from_outside

#Hyrule Field
execute if entity @s[x=1395,y=71,z=962,dx=6,dy=1,dz=1] run function ocarina_of_time:teleports/death_town/hyrule_field/to
execute if entity @s[x=1398,y=61,z=919,dx=0,dz=0] run function ocarina_of_time:teleports/death_town/hyrule_field/from

#Poe Area
execute if entity @s[x=1402,y=70,z=955,dx=0,dz=0] run function ocarina_of_time:teleports/death_town/poe_house/inside
execute if entity @s[x=1409,y=69,z=956,dx=0,dz=0] run function ocarina_of_time:teleports/death_town/poe_house/outside

#Ganon's Castle Field
execute if entity @s[x=1397,y=70,z=902,dx=2,dy=2,dz=1] run function ocarina_of_time:teleports/death_town/ganon_castle_field/to
execute if entity @s[x=1402,y=61,z=919,dx=0,dz=0] run function ocarina_of_time:teleports/death_town/ganon_castle_field/from

#Prelude of Light
execute if entity @s[x=1404,y=61,z=919,dx=0,dz=0] run function ocarina_of_time:teleports/death_town/from_prelude

#Sheikah Stone
execute if entity @s[x=948,y=8,z=1378,dx=0,dy=1,dz=1] run fill 948 9 1379 948 9 1379 minecraft:birch_trapdoor
execute unless entity @s[x=948,y=8,z=1378,dx=0,dz=1] run fill 948 9 1379 948 9 1379 minecraft:air

execute if entity @s[x=921,y=4,z=-633,dx=0,dy=1,dz=1] run fill 921 5 -633 921 5 -633 minecraft:birch_trapdoor
execute unless entity @s[x=921,y=4,z=-633,dx=0,dz=1] run fill 921 5 -633 921 5 -633 minecraft:air

execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run fill 921 4 -632 921 4 -632 minecraft:air
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run fill 925 4 -632 925 4 -632 minecraft:smooth_quartz
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] if block 975 6 -643 minecraft:red_concrete run scoreboard players set @e[type=armor_stand,tag=SecretGopher] text 3
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run function ocarina_of_time:music/chamber_of_sages
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run tp @s 921 4 -633 180 ~

execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run fill 921 4 -632 921 4 -632 minecraft:air
execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run fill 925 4 -632 925 4 -632 minecraft:air
execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run function ocarina_of_time:music/temple_of_time
execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run tp @s 948 8 1379 0 ~
