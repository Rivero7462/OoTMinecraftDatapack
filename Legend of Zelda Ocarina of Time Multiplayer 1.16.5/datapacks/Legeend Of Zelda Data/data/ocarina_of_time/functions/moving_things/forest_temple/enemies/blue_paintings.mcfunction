#Disappear
#1
execute as @s[tag=BluePainting1,y_rotation=-90] at @s if entity @a[x=919,y=70,z=-1200,dx=5,dy=7,dz=2] run tag @e[type=armor_stand,tag=BluePainting2] add Real
execute as @s[tag=BluePainting1,y_rotation=-90] at @s if entity @a[x=919,y=70,z=-1200,dx=5,dy=7,dz=2] unless entity @e[type=armor_stand,tag=BluePainting2] run tag @e[type=armor_stand,tag=BluePainting3] add Real
execute if entity @s[tag=BluePainting1,tag=Real] run tag @e[type=armor_stand,tag=BluePainting2,y_rotation=90] remove Real
execute if entity @s[tag=BluePainting1,tag=Real] run tag @e[type=armor_stand,tag=BluePainting3,y_rotation=-90] remove Real
execute as @s[tag=BluePainting1,tag=Real] run data merge entity @s {Rotation:[-90f]}
execute as @s[tag=BluePainting1] unless entity @s[tag=Real] run data merge entity @s {Rotation:[90f]}
execute unless entity @e[type=armor_stand,tag=BluePainting1] as @e[type=armor_stand,tag=BluePainting3] unless entity @s[y_rotation=-90] run tag @e[type=armor_stand,tag=BluePainting2] add Real
execute unless entity @e[type=armor_stand,tag=BluePainting2] unless entity @e[type=armor_stand,tag=BluePainting3] run tag @e[type=armor_stand,tag=BluePainting1] add Real

#2
execute as @s[tag=BluePainting2,y_rotation=90] at @s if entity @a[x=926,y=76,z=-1203,dx=3,dy=1,dz=5] run tag @e[type=armor_stand,tag=BluePainting3] add Real
execute as @s[tag=BluePainting2,y_rotation=90] at @s if entity @a[x=926,y=76,z=-1203,dx=3,dy=1,dz=5] unless entity @e[type=armor_stand,tag=BluePainting3] run tag @e[type=armor_stand,tag=BluePainting1] add Real
execute if entity @s[tag=BluePainting2,tag=Real] run tag @e[type=armor_stand,tag=BluePainting1,y_rotation=-90] remove Real
execute if entity @s[tag=BluePainting2,tag=Real] run tag @e[type=armor_stand,tag=BluePainting3,y_rotation=-90] remove Real
execute as @s[tag=BluePainting2,tag=Real] run data merge entity @s {Rotation:[90f]}
execute as @s[tag=BluePainting2] unless entity @s[tag=Real] run data merge entity @s {Rotation:[-90f]}
execute unless entity @e[type=armor_stand,tag=BluePainting2] as @e[type=armor_stand,tag=BluePainting1] unless entity @s[y_rotation=-90] run tag @e[type=armor_stand,tag=BluePainting3] add Real
execute unless entity @e[type=armor_stand,tag=BluePainting1] unless entity @e[type=armor_stand,tag=BluePainting3] run tag @e[type=armor_stand,tag=BluePainting2] add Real

#3
execute as @s[tag=BluePainting3,y_rotation=-90] at @s if entity @a[x=915,y=81,z=-1203,dx=7,dy=4,dz=6] run tag @e[type=armor_stand,tag=BluePainting1] add Real
execute as @s[tag=BluePainting3,y_rotation=-90] at @s if entity @a[x=915,y=81,z=-1203,dx=7,dy=4,dz=6] unless entity @e[type=armor_stand,tag=BluePainting1] run tag @e[type=armor_stand,tag=BluePainting2] add Real
execute if entity @s[tag=BluePainting3,tag=Real] run tag @e[type=armor_stand,tag=BluePainting2,y_rotation=90] remove Real
execute if entity @s[tag=BluePainting3,tag=Real] run tag @e[type=armor_stand,tag=BluePainting1,y_rotation=-90] remove Real
execute as @s[tag=BluePainting3,tag=Real] run data merge entity @s {Rotation:[-90f]}
execute as @s[tag=BluePainting3] unless entity @s[tag=Real] run data merge entity @s {Rotation:[90f]}
execute unless entity @e[type=armor_stand,tag=BluePainting3] as @e[type=armor_stand,tag=BluePainting2] unless entity @s[y_rotation=90] run tag @e[type=armor_stand,tag=BluePainting1] add Real
execute unless entity @e[type=armor_stand,tag=BluePainting2] unless entity @e[type=armor_stand,tag=BluePainting1] run tag @e[type=armor_stand,tag=BluePainting3] add Real

#Arrows
#1
execute as @s[tag=BluePainting1,y_rotation=-90] if entity @e[type=arrow,x=919,y=76,z=-1199,dx=0,dy=1,dz=0] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1
execute as @s[tag=BluePainting1,y_rotation=-90] if entity @e[type=arrow,x=919,y=76,z=-1199,dx=0,dy=1,dz=0] run kill @s
execute as @s[tag=BluePainting2,y_rotation=90] if entity @e[type=arrow,x=929,y=77,z=-1202,dx=0,dy=1,dz=0] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1
execute as @s[tag=BluePainting2,y_rotation=90] if entity @e[type=arrow,x=929,y=77,z=-1202,dx=0,dy=1,dz=0] run kill @s
execute as @s[tag=BluePainting3,y_rotation=-90] if entity @e[type=arrow,x=915,y=85,z=-1202,dx=0,dy=1,dz=0] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1
execute as @s[tag=BluePainting3,y_rotation=-90] if entity @e[type=arrow,x=915,y=85,z=-1202,dx=0,dy=1,dz=0] run kill @s

execute as @s[tag=BluePainting1] if entity @e[type=arrow,x=919,y=76,z=-1199,dx=0,dy=1,dz=0] run kill @e[type=arrow]
execute as @s[tag=BluePainting2] if entity @e[type=arrow,x=929,y=77,z=-1202,dx=0,dy=1,dz=0] run kill @e[type=arrow]
execute as @s[tag=BluePainting3] if entity @e[type=arrow,x=915,y=85,z=-1202,dx=0,dy=1,dz=0] run kill @e[type=arrow]
