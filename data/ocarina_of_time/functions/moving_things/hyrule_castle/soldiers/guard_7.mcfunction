#Always The Same
scoreboard players add @s lifetime 1

#LifeTime
execute if entity @s[scores={lifetime=699..}] unless entity @a[tag=GuardCaught] run summon minecraft:armor_stand 867 88 429 {Tags:["Guard23","Guard"],Rotation:[90f],NoGravity:0b,Small:0b,ShowArms:1b,Invisible:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:8224125}}},{id:"leather_leggings",Count:1,tag:{display:{color:15319922}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Guard",Id:[I;661865529,-2011935280,-2014285298,87482361],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RkNmIwMzdjZThkN2UxYWMyMmI1ODMzYmMyNmU0MzNjNDFjODJlNmFmNTEwMzZjYjZiMTRkMzRkY2YwNmMifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=699..}] run kill @e[type=armor_stand,tag=Guard23]

#Moving
execute if entity @s[scores={lifetime=1..32}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=36..116}] run tp @s 860 88 429
execute if entity @s[scores={lifetime=117..148}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=152..232}] run tp @s 860 88 422
execute if entity @s[scores={lifetime=233..265}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=269..349}] run tp @s 860 88 415
execute if entity @s[scores={lifetime=350..381}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=385..465}] run tp @s 867 88 415
execute if entity @s[scores={lifetime=466..498}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=502..582}] run tp @s 867 88 422
execute if entity @s[scores={lifetime=583..614}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=618..692}] run tp @s 867 88 429
execute if entity @s[scores={lifetime=693}] run data merge entity @s {Rotation:[90f],Motion:[0.0,0.0,0.0]}

#Catching
#West
execute if entity @s[nbt={Rotation:[90f]}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-4,dy=0,dz=2] run tag @a add GuardCaught
#North
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=121..239}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-4] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=240..248}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-3] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=249..252}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=253..256}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-1] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[180f]},scores={lifetime=257..261}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-0] run tag @a add GuardCaught
#East
execute if entity @s[nbt={Rotation:[270f]}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=4,dy=0,dz=2] run tag @a add GuardCaught
#South
execute if entity @s[y_rotation=0,scores={lifetime=470..589}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=4] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=560..594}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=3] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=595..601}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=602..605}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=1] run tag @a add GuardCaught
execute if entity @s[y_rotation=0,scores={lifetime=606..609}] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=0] run tag @a add GuardCaught