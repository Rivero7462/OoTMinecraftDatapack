#Always The Same
scoreboard players add @s lifetime 1

#LifeTime
execute if entity @s[scores={lifetime=650..}] unless entity @a[tag=GuardCaught] run summon minecraft:armor_stand 898 88 432 {Tags:["Guard20","Guard"],Rotation:[180f],NoGravity:0b,Small:0b,ShowArms:1b,Invisible:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:8224125}}},{id:"leather_leggings",Count:1,tag:{display:{color:15319922}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Guard",Id:[I;661865529,-2011935280,-2014285298,87482361],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RkNmIwMzdjZThkN2UxYWMyMmI1ODMzYmMyNmU0MzNjNDFjODJlNmFmNTEwMzZjYjZiMTRkMzRkY2YwNmMifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=650..}] run kill @e[type=armor_stand,tag=Guard20]

#Moving
execute if entity @s[scores={lifetime=1..17}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=21..101}] run tp @s 898 88 428
execute if entity @s[scores={lifetime=102..108}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=193..200}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=285..291}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=376..382}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=467..474}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=559..565}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=644}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}

#Catching
#West
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=467..478}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-3,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=479..559}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-2,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=560..644}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-1,dy=0,dz=2] run tag @a add GuardCaught
#North
execute if entity @s[nbt={Rotation:[180f]}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-4] run tag @a add GuardCaught
#East
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=106..191}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=3,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=192..197}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=2,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=198..201}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=1,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=202..285}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=0,dy=0,dz=2] run tag @a add GuardCaught
#South
execute if entity @s[y_rotation=0] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=4] run tag @a add GuardCaught