#Reference
#North
#data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
#East
#data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
#South
#data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
#West
#data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}

#Always The Same
scoreboard players add @s lifetime 1
scoreboard players set @s text 1

#LifeTime
execute if entity @s[scores={lifetime=300..}] unless entity @a[tag=Adult] run summon minecraft:armor_stand 363 76 2030 {Tags:["Guard2"],Invisible:1b,Rotation:[180f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:11337883}}},{id:"leather_leggings",Count:1,tag:{display:{color:11337883}}},{id:"leather_chestplate",Count:1,tag:{display:{color:11337883}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Gerudo 2",Id:[I;-336270410,1810514831,-1096173370,-1095843804],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjZiMWU4ZWFlZGE5ZGM5OWU5OWRlMzFlNTI1NzdiNDc1MGRiNDgxYjc2M2JjNmE2OWRhM2Q4NDdlNGEzNiJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:18}},{id:stone,Count:1b,tag:{CustomModelData:17}}],DisabledSlots:4144959,Pose:{RightArm:[-40f,0f,0f]}}
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Guard2]
#Moving
execute if entity @s[scores={lifetime=1..37}] run tp @s ~ ~ ~ ~5 ~
execute if entity @s[scores={lifetime=38..91}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.1]}
execute if entity @s[scores={lifetime=92}] run tp @s ~ ~1 ~-.1 ~ ~
execute if entity @s[scores={lifetime=93..105}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.1]}

execute if entity @s[scores={lifetime=150..185}] run tp @s ~ ~ ~ ~5 ~
execute if entity @s[scores={lifetime=186..206}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.1]}
execute if entity @s[scores={lifetime=207}] run tp @s ~ ~-1 ~.1 ~ ~
execute if entity @s[scores={lifetime=208..251}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.1]}
