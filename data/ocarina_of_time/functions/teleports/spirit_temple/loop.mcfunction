#Desert Wasteland
execute if entity @s[x=-32,y=83,z=907,dx=4,dz=0] run function ocarina_of_time:teleports/spirit_temple/desert_colossus/to
execute if entity @s[x=-27,y=105,z=865,dx=0,dz=0] run function ocarina_of_time:teleports/spirit_temple/desert_colossus/from

#Right Hand
execute if entity @s[x=-49,y=119,z=919,dx=0,dz=2] run function ocarina_of_time:teleports/spirit_temple/right_hand/to
execute if entity @s[x=-29,y=105,z=865,dx=0,dz=0] run function ocarina_of_time:teleports/spirit_temple/right_hand/from

#Left Hand
execute if entity @s[x=-4,y=119,z=919,dx=0,dz=2] run function ocarina_of_time:teleports/spirit_temple/left_hand/to
execute if entity @s[x=-25,y=105,z=865,dx=0,dz=0] run function ocarina_of_time:teleports/spirit_temple/left_hand/from

#Hole 1
execute unless entity @s[tag=Adult] if entity @s[x=-47,y=85,z=880,dx=1,dy=1,dz=0] run fill -46 86 880 -46 86 880 minecraft:birch_trapdoor
execute unless entity @s[tag=Adult] unless entity @s[x=-47,y=85,z=880,dx=1,dz=0] run fill -46 86 880 -46 86 880 minecraft:air
execute unless entity @s[tag=Adult] if entity @s[x=-53,y=85,z=880,dx=1,dy=1,dz=0] run fill -53 86 880 -53 86 880 minecraft:birch_trapdoor[facing=south]
execute unless entity @s[tag=Adult] unless entity @s[x=-53,y=85,z=880,dx=1,dz=0] run fill -53 86 880 -53 86 880 minecraft:air

#Hole 2
execute unless entity @s[tag=Adult] if entity @s[x=-63,y=87,z=862,dx=0,dy=1,dz=1] run fill -63 88 863 -63 88 863 minecraft:birch_trapdoor
execute if block -63 88 863 minecraft:birch_trapdoor unless entity @s[tag=Adult] unless entity @s[x=-63,y=87,z=862,dx=0,dz=1] run fill -63 88 863 -63 88 863 minecraft:air
execute unless entity @s[tag=Adult] if entity @s[x=-63,y=87,z=855,dx=0,dy=1,dz=1] run fill -63 88 855 -63 88 855 minecraft:birch_trapdoor[facing=south]
execute if block -63 88 855 minecraft:birch_trapdoor unless entity @s[tag=Adult] unless entity @s[x=-63,y=87,z=855,dx=0,dz=1] run fill -63 88 855 -63 88 855 minecraft:air

#Exit*
execute unless entity @a[tag=SpiritMedallion] if entity @s[tag=!Boss,x=-16,y=124,z=750,dx=2,dy=10,dz=2] run tp @s -15 ~ 751
execute unless entity @a[tag=SpiritMedallion] if entity @s[tag=!Boss,x=-16,y=124,z=750,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute unless entity @a[tag=SpiritMedallion] if entity @s[tag=!Boss,x=-16,y=134,z=750,dx=2,dz=2] run function ocarina_of_time:teleports/spirit_temple/boss_room

#Cutscene* Don't know how bosses will bee handled
execute if entity @a[tag=SpiritMedallion] if entity @s[tag=!Boss,x=-16,y=124,z=750,dx=2,dy=10,dz=2] run tp @s -15 ~ 751
execute if entity @a[tag=SpiritMedallion] if entity @s[tag=!Boss,x=-16,y=124,z=750,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute if entity @a[tag=SpiritMedallion] if entity @s[tag=!Boss,x=-16,y=134,z=750,dx=2,dz=2] run function ocarina_of_time:teleports/spirit_temple/spirit_medallion
