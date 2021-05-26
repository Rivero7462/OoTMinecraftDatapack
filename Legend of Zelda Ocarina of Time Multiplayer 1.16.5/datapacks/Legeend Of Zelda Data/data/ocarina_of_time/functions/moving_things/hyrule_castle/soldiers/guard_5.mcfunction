#Always The Same
scoreboard players add @s lifetime 1

#LifeTime
execute if entity @s[scores={lifetime=870..}] unless entity @a[tag=GuardCaught] run summon minecraft:armor_stand 886 88 433 {Tags:["Guard21","Guard"],Rotation:[90f],NoGravity:0b,Small:0b,ShowArms:1b,Invisible:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:8224125}}},{id:"leather_leggings",Count:1,tag:{display:{color:15319922}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Guard",Id:[I;661865529,-2011935280,-2014285298,87482361],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RkNmIwMzdjZThkN2UxYWMyMmI1ODMzYmMyNmU0MzNjNDFjODJlNmFmNTEwMzZjYjZiMTRkMzRkY2YwNmMifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=870..}] run kill @e[type=armor_stand,tag=Guard21]

#Moving
execute if entity @s[scores={lifetime=1..57}] run data merge entity @s {Rotation:[90f],Motion:[-0.1,0.0,0.0]}
execute if entity @s[scores={lifetime=61..141}] run tp @s 880 88 433
execute if entity @s[scores={lifetime=142..199}] run data merge entity @s {Rotation:[90f],Motion:[-0.1,0.0,0.0]}
execute if entity @s[scores={lifetime=284..350}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.1]}
execute if entity @s[scores={lifetime=435..492}] run data merge entity @s {Rotation:[270f],Motion:[0.1,0.0,0.0]}
execute if entity @s[scores={lifetime=577..634}] run data merge entity @s {Rotation:[270f],Motion:[0.1,0.0,0.0]}
execute if entity @s[scores={lifetime=719..785}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.1]}
execute if entity @s[scores={lifetime=864}] run data merge entity @s {Rotation:[90f],Motion:[0.0,0.0,0.0]}

#Catching
#West
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=1..157}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-4,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=158..167}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-3,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=168..182}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-2,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=183..189}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=-1,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[90f]},scores={lifetime=190..199}] positioned ~-2.5 ~1 ~-1.5 if entity @a[dx=0,dy=0,dz=2] run tag @a add GuardCaught
#North
execute if entity @s[nbt={Rotation:[180f]}] positioned ~-1.5 ~1 ~-2.5 if entity @a[dx=2,dy=0,dz=-4] run tag @a add GuardCaught
#East
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=439..593}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=4,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=594..603}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=3,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=604..614}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=2,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=615..623}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=1,dy=0,dz=2] run tag @a add GuardCaught
execute if entity @s[nbt={Rotation:[270f]},scores={lifetime=624..632}] positioned ~1.5 ~1 ~-1.5 if entity @a[dx=0,dy=0,dz=2] run tag @a add GuardCaught
#South
execute if entity @s[y_rotation=0] positioned ~-1.5 88 ~1.5 if entity @a[dx=2,dy=0,dz=4] run tag @a add GuardCaught