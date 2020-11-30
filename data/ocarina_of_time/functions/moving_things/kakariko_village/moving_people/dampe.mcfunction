#Always The Same
execute at @a unless entity @s[distance=..2] run tag @s remove Wait

execute at @a if entity @s[distance=..2] run tag @s add Wait
execute at @a if entity @s[distance=..2] run data merge entity @s {Motion:[0.0,0.0,0.0]}
execute at @a unless entity @s[distance=..2] run scoreboard players add @s lifetime 1
execute unless block 1611 69 1963 minecraft:gold_block run scoreboard players set @s text 1
execute if block 1611 69 1963 minecraft:gold_block run scoreboard players set @s text 2
execute if block 1627 66 1967 minecraft:gold_block run tag @s add Prize

#LifeTime
execute if entity @s[scores={lifetime=1520..}] unless entity @a[tag=Adult] run summon minecraft:armor_stand 1618 73 1954 {Tags:["Dampe","Npc"],Small:0b,ShowArms:1b,Invisible:1b,Rotation:[180f],CustomName:"\"Dampé\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:5649152}}},{id:"leather_leggings",Count:1,tag:{display:{color:5649152}}},{id:"leather_chestplate",Count:1,tag:{display:{color:5649152}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Dampé\"}",Id:[I;-39263792,-815116794,-1298012002,1692804015],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmY4NWI0ZTI5NTc4MjEwNjRiYzY5YzJkMmNjOTg3MGI1OGM0YjY2YTFlNDhiNmZmMTZlOWIyMzE3MzZkMzdiZCJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:12}},{id:stone,Count:1b,tag:{CustomModelData:3}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[-130f,0f,0f],Body:[5f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[20f,0f,0f]}}
execute if entity @s[scores={lifetime=1520..}] run kill @e[type=armor_stand,tag=Dampe]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Dampe]

#Moving
execute if entity @s[scores={lifetime=1..20}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=21..40}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=41..80}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=81..100}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=101..140}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=141..160}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=161..201}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=202..220}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=185}] unless entity @s[tag=Wait] run tp @s ~ ~1 ~
execute if entity @s[scores={lifetime=221..260}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=261..280}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=225}] unless entity @s[tag=Wait] run tp @s ~ ~1 ~
execute if entity @s[scores={lifetime=281..320}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=321..340}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=341..380}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=381..400}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=401..420}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=421..440}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=441..480}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=481..500}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=501..520}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[270f],Motion:[0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=521..540}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=541..560}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=561..600}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=601..620}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=621..660}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=661..680}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=681..720}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=721..740}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=741..780}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=781..800}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=801..840}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=841..860}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=861..900}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=901..920}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=921..960}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=961..980}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=981..1020}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.05]}
execute if entity @s[scores={lifetime=1021..1040}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1041..1080}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[-0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=1081..1100}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1075}] unless entity @s[tag=Wait] run tp @s ~ ~-1 ~
execute if entity @s[scores={lifetime=1101..1140}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[-0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=1141..1160}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1120}] unless entity @s[tag=Wait] run tp @s ~ ~-1 ~
execute if entity @s[scores={lifetime=1161..1200}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[-0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=1201..1220}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1221..1260}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[-0.05,0.0,0.0]}
execute if entity @s[scores={lifetime=1261..1280}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[90f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1281..1320}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=1321..1340}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1341..1380}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=1381..1400}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1401..1440}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=1441..1460}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
execute if entity @s[scores={lifetime=1461..1499}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.05]}
execute if entity @s[scores={lifetime=1500..1520}] unless entity @s[tag=Wait] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,0.0]}
