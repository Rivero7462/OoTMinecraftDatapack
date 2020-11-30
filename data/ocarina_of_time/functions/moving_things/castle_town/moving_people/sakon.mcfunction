#Always The Same
scoreboard players add @s lifetime 1
execute unless block 884 68 1413 minecraft:gold_block run scoreboard players set @s text 1
execute if entity @s[tag=Reset] run scoreboard players set @s text 1
execute if block 884 68 1413 minecraft:gold_block unless entity @s[tag=Reset] run scoreboard players set @s text 2

#LifeTime
execute if entity @s[scores={lifetime=350..}] run summon minecraft:armor_stand 894 70 1436 {Tags:["Sakon","Npc"],NoGravity:0b,Small:0b,ShowArms:1b,Invisible:1b,Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:7023360}}},{id:"leather_leggings",Count:1,tag:{display:{color:1844676}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Sakon",Id:[I;-1068147826,144917093,-1222872467,-1645905694],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBhYTM5Mzc4N2NjN2VhNWNjN2JhMzEzNDI0N2ZiN2VhZTZkMTdhZDljODFlYWM5NTI4YmRjZWY5ZjU1OGMifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:3}},{id:stone,Count:1b,tag:{CustomModelData:3}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=350..}] run kill @e[type=armor_stand,tag=Sakon]

#Moving
execute if entity @s[scores={lifetime=1..9}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=10..20}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=21..23}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=24..32}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=33..130}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=131..136}] run tp @s ~-.2 ~ ~ 90 ~
execute if entity @s[scores={lifetime=137..146}] run tp @s ~ ~ ~-.2 180 ~
execute if entity @s[scores={lifetime=176..186}] run tp @s ~ ~ ~.2 0 ~
execute if entity @s[scores={lifetime=187..196}] run tp @s ~.2 ~ ~ 270 ~
execute if entity @s[scores={lifetime=197..205}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=206..246}] run data merge entity @s {Rotation:[270f],Motion:[0.15,0.0,0.05]}
execute if entity @s[scores={lifetime=247..303}] run data merge entity @s {Rotation:[270f],Motion:[0.2,0.0,0.0]}











