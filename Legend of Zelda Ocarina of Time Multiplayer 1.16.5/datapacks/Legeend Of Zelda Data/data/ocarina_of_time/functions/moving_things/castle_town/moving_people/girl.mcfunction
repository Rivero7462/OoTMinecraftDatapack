#Always The Same
tp @s ~ ~ ~ facing entity @e[type=chicken,tag=CastleCucco,limit=1] feet
scoreboard players add @s lifetime 1
execute unless block 884 68 1413 minecraft:gold_block run scoreboard players set @s text 1
execute if entity @s[tag=Reset] run scoreboard players set @s text 1
execute if block 884 68 1413 minecraft:gold_block unless entity @s[tag=Reset] run scoreboard players set @s text 2

#LifeTime
execute if entity @s[scores={lifetime=707..}] run summon minecraft:armor_stand 888 70 1415 {Tags:["GirlChasingCucco","Npc"],NoGravity:0b,Small:1b,ShowArms:1b,Invisible:1b,Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:8736803}}},{id:"leather_leggings",Count:1,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16775501}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"GirlChasingCucco\"}",Id:[I;-1419197212,1622626132,-1964248192,-538971252],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGViODQ4YzEyY2ViOTY4M2IzZjllZTg1ZDQ3ZTEyZTUxMzA5N2IwZTM3ZWZhNDAzYTIyYWJiOTc5MjQ1YTUifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=707..}] run execute if entity @s[scores={lifetime=707..}] run tp @e[type=chicken,tag=CastleCucco] ~ 5 ~
execute if entity @s[scores={lifetime=707..}] run kill @e[type=chicken,tag=CastleCucco]
execute if entity @s[scores={lifetime=707..}] run kill @s

#Moving
execute if entity @s[scores={lifetime=1..40}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=41..55}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=56..106}] run data merge entity @s {Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=107..111}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=112..135}] run data merge entity @s {Motion:[0.2,0.0,0.0]}
#Stop 1
execute if entity @s[scores={lifetime=165..179}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=180..193}] run data merge entity @s {Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=194..233}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=234..263}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=264..267}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
#Stop 2
execute if entity @s[scores={lifetime=297..311}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=312..340}] run data merge entity @s {Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=341..350}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=351..360}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=361..379}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=380..392}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=393..396}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=397..421}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
#Stop 3
execute if entity @s[scores={lifetime=451..455}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=456..500}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=501..540}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=541..550}] run data merge entity @s {Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=551..576}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
#Stop 4
execute if entity @s[scores={lifetime=606..610}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=611..618}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=619..624}] run data merge entity @s {Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=625..639}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
execute if entity @s[scores={lifetime=640..660}] run data merge entity @s {Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=661..674}] run data merge entity @s {Motion:[0.0,0.0,0.2]}
execute if entity @s[scores={lifetime=675..699}] run data merge entity @s {Motion:[0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=700..706}] run data merge entity @s {Motion:[0.0,0.0,-0.2]}
