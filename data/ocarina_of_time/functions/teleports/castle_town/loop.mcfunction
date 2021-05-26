#Hyrule Field*
execute if entity @s[x=881,y=70,z=1469,dx=6,dy=5,dz=0] run function ocarina_of_time:teleports/castle_town/hyrule_field/to
execute if entity @s[x=880,y=60,z=1426,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/hyrule_field/from

#Soldier Room
execute if entity @s[x=888,y=70,z=1462,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/soldier_room/inside
tp @s[x=888,y=70,z=1462,dx=0,dz=0] 981 66 1902
execute if entity @s[x=980,y=66,z=1902,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/soldier_room/outside

#Temple of Time*
execute if entity @s[x=927,y=74,z=1393,dx=0,dz=2] run function ocarina_of_time:teleports/castle_town/temple_of_time/inside
execute if entity @s[x=925,y=8,z=1393,dx=0,dz=2] run function ocarina_of_time:teleports/castle_town/temple_of_time/outside

#Castle Field*
execute if entity @s[x=883,y=70,z=1407,dx=2,dz=3] run function ocarina_of_time:teleports/castle_town/castle_field/to
execute if entity @s[x=882,y=60,z=1426,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/castle_field/from

#Item Shop
execute if entity @s[x=901,y=70,z=1432,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/item_shop/inside
execute if entity @s[x=901,y=62,z=1432,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/item_shop/outside

#Potion Shop
execute if entity @s[x=901,y=70,z=1423,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/potion_shop/inside
execute if entity @s[x=901,y=62,z=1417,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/potion_shop/outside

#Mask Shop
execute if entity @s[x=893,y=70,z=1412,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/mask_shop/inside
execute if entity @s[x=894,y=52,z=1401,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/mask_shop/outside

#Archery Shop* Maybe allow people to be in here and other minigames at the same time, but have a tag that stops a new minigame from being started unless nobody else is playing a minigame
execute if entity @s[x=879,y=70,z=1412,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/archery_shop/inside
execute if entity @s[x=872,y=59,z=1410,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/archery_shop/outside

#MamamuYan's House
execute if entity @s[x=860,y=70,z=1438,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/mamamuyan/inside
execute if entity @s[x=853,y=62,z=1432,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/mamamuyan/outside

#Treasure Chest Shop
execute if entity @s[x=875,y=70,z=1437,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/treasure_shop/inside
execute if entity @s[x=863,y=50,z=1410,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/treasure_shop/outside

#Dog Guy's House
execute if entity @s[x=857,y=70,z=1411,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/dog_guy/inside
execute if entity @s[x=848,y=64,z=1403,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/dog_guy/outside

#Bombchu Shop
execute if entity @s[x=866,y=70,z=1439,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/bombchu_shop/inside
execute if entity @s[x=892,y=40,z=1417,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/bombchu_shop/outside

#Bombchu Bowling*
execute if entity @s[x=873,y=70,z=1426,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/bombchu_bowling/inside
execute if entity @s[x=877,y=40,z=1426,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/bombchu_bowling/outside

#Death Town
execute if entity @a[tag=Adult,tag=InCastleTown] run function ocarina_of_time:teleports/castle_town/death_town

#Sheikah Stone
execute if entity @s[x=948,y=8,z=1378,dx=0,dy=1,dz=1] run fill 948 9 1379 948 9 1379 minecraft:birch_trapdoor
execute unless entity @s[x=948,y=8,z=1378,dx=0,dz=1] run fill 948 9 1379 948 9 1379 minecraft:air

execute if entity @s[x=921,y=4,z=-633,dx=0,dy=1,dz=1] run fill 921 5 -633 921 5 -633 minecraft:birch_trapdoor
execute unless entity @s[x=921,y=4,z=-633,dx=0,dz=1] run fill 921 5 -633 921 5 -633 minecraft:air

execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run fill 921 4 -632 921 4 -632 minecraft:air
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run fill 925 4 -632 925 4 -632 minecraft:smooth_quartz
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] if block 975 6 -643 minecraft:red_concrete run scoreboard players set @e[type=armor_stand,tag=SecretGopher] text 2
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run function ocarina_of_time:music/chamber_of_sages
execute if entity @s[x=948,y=8,z=1378,dx=0,dz=0] run tp @s 921 4 -633 180 ~

execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run fill 921 4 -632 921 4 -632 minecraft:air
execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run fill 925 4 -632 925 4 -632 minecraft:air
execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run function ocarina_of_time:music/temple_of_time
execute if entity @s[x=921,y=4,z=-632,dx=0,dz=0] run tp @s 948 8 1379 0 ~

#Prelude of Light
execute if entity @s[x=886,y=60,z=1426,dx=0,dz=0] run function ocarina_of_time:teleports/castle_town/from_prelude
