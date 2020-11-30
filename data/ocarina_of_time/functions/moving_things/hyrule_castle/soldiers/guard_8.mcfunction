#Always The Same
scoreboard players add @s lifetime 1

#LifeTime
execute if entity @s[scores={lifetime=699..}] unless entity @a[tag=GuardCaught] run summon minecraft:armor_stand 860 88 429 {Tags:["Guard24","Guard"],Rotation:[180f],NoGravity:0b,Small:0b,ShowArms:1b,Invisible:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:8224125}}},{id:"leather_leggings",Count:1,tag:{display:{color:15319922}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Guard",Id:[I;661865529,-2011935280,-2014285298,87482361],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RkNmIwMzdjZThkN2UxYWMyMmI1ODMzYmMyNmU0MzNjNDFjODJlNmFmNTEwMzZjYjZiMTRkMzRkY2YwNmMifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=699..}] run kill @e[type=armor_stand,tag=Guard24]

#Moving
execute if entity @s[scores={lifetime=1..67}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=71..151}] run tp @s 860 88 415
execute if entity @s[scores={lifetime=152..166}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=251..265}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=350..416}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=501..515}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=600..614}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=693}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}

#Catching
#West
execute if entity @s[nbt={Rotation:[90f]}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-4,dy=0,dz=2] run tag @a add GuardCaught
#North
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=1..41}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-4] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=42..49}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-3] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=50..55}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=56..61}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-1] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=62..63}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-0] run tag @a add GuardCaught
#East
execute if entity @s[nbt={Rotation:[270f]}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=4,dy=0,dz=2] run tag @a add GuardCaught
#South
execute if entity @s[y_rotation=0,scores={lifetime=354..393}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=4] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=394..397}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=3] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=398..403}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=404..406}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=1] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=407..411}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=0] run tag @a add GuardCaught

