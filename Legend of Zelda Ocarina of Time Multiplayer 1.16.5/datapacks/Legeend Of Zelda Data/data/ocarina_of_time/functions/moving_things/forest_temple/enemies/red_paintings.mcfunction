#Disappear
#1
execute as @s[tag=RedPainting1,y_rotation=90] at @s if entity @a[x=869,y=70,z=-1200,dx=5,dy=7,dz=2] run tag @e[type=armor_stand,tag=RedPainting2] add Real
execute as @s[tag=RedPainting1,y_rotation=90] at @s if entity @a[x=869,y=70,z=-1200,dx=5,dy=7,dz=2] unless entity @e[type=armor_stand,tag=RedPainting2] run tag @e[type=armor_stand,tag=RedPainting3] add Real
execute if entity @s[tag=RedPainting1,tag=Real] run tag @e[type=armor_stand,tag=RedPainting2,y_rotation=-90] remove Real
execute if entity @s[tag=RedPainting1,tag=Real] run tag @e[type=armor_stand,tag=RedPainting3,y_rotation=90] remove Real
execute as @s[tag=RedPainting1,tag=Real] run data merge entity @s {Rotation:[90f]}
execute as @s[tag=RedPainting1] unless entity @s[tag=Real] run data merge entity @s {Rotation:[-90f]}
execute unless entity @e[type=armor_stand,tag=RedPainting1] as @e[type=armor_stand,tag=RedPainting3] unless entity @s[y_rotation=90] run tag @e[type=armor_stand,tag=RedPainting2] add Real
execute unless entity @e[type=armor_stand,tag=RedPainting2] unless entity @e[type=armor_stand,tag=RedPainting3] run tag @e[type=armor_stand,tag=RedPainting1] add Real

#2
execute as @s[tag=RedPainting2,y_rotation=-90] at @s if entity @a[x=864,y=76,z=-1203,dx=3,dy=1,dz=5] run tag @e[type=armor_stand,tag=RedPainting3] add Real
execute as @s[tag=RedPainting2,y_rotation=-90] at @s if entity @a[x=864,y=76,z=-1203,dx=3,dy=1,dz=5] unless entity @e[type=armor_stand,tag=RedPainting3] run tag @e[type=armor_stand,tag=RedPainting1] add Real
execute if entity @s[tag=RedPainting2,tag=Real] run tag @e[type=armor_stand,tag=RedPainting1,y_rotation=90] remove Real
execute if entity @s[tag=RedPainting2,tag=Real] run tag @e[type=armor_stand,tag=RedPainting3,y_rotation=90] remove Real
execute as @s[tag=RedPainting2,tag=Real] run data merge entity @s {Rotation:[-90f]}
execute as @s[tag=RedPainting2] unless entity @s[tag=Real] run data merge entity @s {Rotation:[90f]}
execute unless entity @e[type=armor_stand,tag=RedPainting2] as @e[type=armor_stand,tag=RedPainting1] unless entity @s[y_rotation=90] run tag @e[type=armor_stand,tag=RedPainting3] add Real
execute unless entity @e[type=armor_stand,tag=RedPainting1] unless entity @e[type=armor_stand,tag=RedPainting3] run tag @e[type=armor_stand,tag=RedPainting2] add Real

#3
execute as @s[tag=RedPainting3,y_rotation=90] at @s if entity @a[x=871,y=81,z=-1203,dx=7,dy=4,dz=6] run tag @e[type=armor_stand,tag=RedPainting1] add Real
execute as @s[tag=RedPainting3,y_rotation=90] at @s if entity @a[x=871,y=81,z=-1203,dx=7,dy=4,dz=6] unless entity @e[type=armor_stand,tag=RedPainting1] run tag @e[type=armor_stand,tag=RedPainting2] add Real
execute if entity @s[tag=RedPainting3,tag=Real] run tag @e[type=armor_stand,tag=RedPainting2,y_rotation=-90] remove Real
execute if entity @s[tag=RedPainting3,tag=Real] run tag @e[type=armor_stand,tag=RedPainting1,y_rotation=90] remove Real
execute as @s[tag=RedPainting3,tag=Real] run data merge entity @s {Rotation:[90f]}
execute as @s[tag=RedPainting3] unless entity @s[tag=Real] run data merge entity @s {Rotation:[-90f]}
execute unless entity @e[type=armor_stand,tag=RedPainting3] as @e[type=armor_stand,tag=RedPainting2] unless entity @s[y_rotation=-90] run tag @e[type=armor_stand,tag=RedPainting1] add Real
execute unless entity @e[type=armor_stand,tag=RedPainting2] unless entity @e[type=armor_stand,tag=RedPainting1] run tag @e[type=armor_stand,tag=RedPainting3] add Real

#Arrows
#1
execute as @s[tag=RedPainting1,y_rotation=90] if entity @e[type=arrow,x=874,y=76,z=-1199,dx=0,dy=1,dz=0] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1
execute as @s[tag=RedPainting1,y_rotation=90] if entity @e[type=arrow,x=874,y=76,z=-1199,dx=0,dy=1,dz=0] run kill @s
execute as @s[tag=RedPainting2,y_rotation=-90] if entity @e[type=arrow,x=864,y=77,z=-1202,dx=0,dy=1,dz=0] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1
execute as @s[tag=RedPainting2,y_rotation=-90] if entity @e[type=arrow,x=864,y=77,z=-1202,dx=0,dy=1,dz=0] run kill @s
execute as @s[tag=RedPainting3,y_rotation=90] if entity @e[type=arrow,x=878,y=85,z=-1202,dx=0,dy=1,dz=0] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1
execute as @s[tag=RedPainting3,y_rotation=90] if entity @e[type=arrow,x=878,y=85,z=-1202,dx=0,dy=1,dz=0] run kill @s

execute as @s[tag=RedPainting1] if entity @e[type=arrow,x=874,y=76,z=-1199,dx=0,dy=1,dz=0] run kill @e[type=arrow]
execute as @s[tag=RedPainting2] if entity @e[type=arrow,x=864,y=77,z=-1202,dx=0,dy=1,dz=0] run kill @e[type=arrow]
execute as @s[tag=RedPainting3] if entity @e[type=arrow,x=878,y=85,z=-1202,dx=0,dy=1,dz=0] run kill @e[type=arrow]
