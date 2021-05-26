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
execute if entity @s[scores={lifetime=830..}] unless entity @a[tag=Adult] run summon minecraft:armor_stand 1511.8 73 1912 {Tags:["Carpenter","Jiro1","Npc"],ShowArms:1b,Invisible:1b,Rotation:[0f],CustomName:"\"Jiro\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:2180034}}},{id:"leather_leggings",Count:1,tag:{display:{color:15079802}}},{id:"leather_chestplate",Count:1,tag:{display:{color:2180034}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Jiro\"}",Id:[I;1092620455,1308378650,-1987961750,52700868],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjI2NjU3Zjg1ZDA4MzE1ZGRiNzIwYjRmNzFhODRiYjI3NjQ1NDNlZmM4OGMxNjY2OWUxMTMzM2VkZjkwN2FkMCJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:7}},{id:stone,Count:1b,tag:{CustomModelData:7}}],DisabledSlots:4144959}
execute if entity @s[scores={lifetime=830..}] run kill @e[type=armor_stand,tag=Jiro1]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Jiro1]
#Moving
execute if entity @s[scores={lifetime=1..46}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.15]}
execute if entity @s[scores={lifetime=47}] run tp @s 1511 73 1919 -90 ~
execute if entity @s[scores={lifetime=48..60}] run data merge entity @s {Rotation:[-90f],Motion:[0.15,0.0,0.0]}
execute if entity @s[scores={lifetime=61..144}] run data merge entity @s {Rotation:[270f],Motion:[0.15,-0.3,0.0]}
execute if entity @s[scores={lifetime=145}] run tp @s 1526 68 1919 0 ~
execute if entity @s[scores={lifetime=146..204}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.15]}
execute if entity @s[scores={lifetime=205}] run tp @s 1526 68 1928 270 ~
execute if entity @s[scores={lifetime=206..278}] run data merge entity @s {Rotation:[270f],Motion:[0.15,0.0,0.0]}
execute if entity @s[scores={lifetime=279..303}] run data merge entity @s {Rotation:[270f],Motion:[0.15,0.08,0.0]}
execute if entity @s[scores={lifetime=304..335}] run data merge entity @s {Rotation:[270f],Motion:[0.15,0.0,0.0]}
execute if entity @s[scores={lifetime=336}] run tp @s 1545 70 1928 180 ~
execute if entity @s[scores={lifetime=337..357}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.15]}
execute if entity @s[scores={lifetime=358..416}] run data merge entity @s {Rotation:[270f],Motion:[0.15,0.0,0.0]}
execute if entity @s[scores={lifetime=417..420}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.15]}
execute if entity @s[scores={lifetime=421}] run tp @s 1554 70 1924 90 ~
execute if entity @s[scores={lifetime=422..486}] run data merge entity @s {Rotation:[90f],Motion:[-0.15,0.0,0.0]}
execute if entity @s[scores={lifetime=487..505}] run data merge entity @s {Rotation:[0f],Motion:[0.0,0.0,0.15]}
execute if entity @s[scores={lifetime=506}] run tp @s 1544 70 1927 90 ~
execute if entity @s[scores={lifetime=507..620}] run data merge entity @s {Rotation:[90f],Motion:[-0.15,-0.3,0.0]}
execute if entity @s[scores={lifetime=621}] run tp @s 1527 68 1927 180 ~
execute if entity @s[scores={lifetime=622..682}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.15]}
execute if entity @s[scores={lifetime=683..705}] run data merge entity @s {Rotation:[90f],Motion:[-0.15,0.0,0.0]}
execute if entity @s[scores={lifetime=706..768}] run data merge entity @s {Rotation:[90f],Motion:[-0.15,0.08,0.0]}
execute if entity @s[scores={lifetime=769..783}] run data merge entity @s {Rotation:[90f],Motion:[-0.15,0.0,0.0]}
execute if entity @s[scores={lifetime=784..823}] run data merge entity @s {Rotation:[180f],Motion:[0.0,0.0,-0.15]}
execute if entity @s[scores={lifetime=824..828}] run data merge entity @s {Rotation:[90f],Motion:[-0.2,0.0,0.0]}
execute if entity @s[scores={lifetime=829..}] run data merge entity @s {Rotation:[0f]}
