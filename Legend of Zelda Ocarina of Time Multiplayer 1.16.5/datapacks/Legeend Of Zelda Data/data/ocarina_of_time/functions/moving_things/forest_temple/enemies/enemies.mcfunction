#Wolfos
#1
execute if entity @a[x=898,y=59,z=-1117,dx=0,dz=0] run tp @e[type=zombie,tag=Wolfos2] 897 54 -1108
execute if entity @a[x=898,y=59,z=-1117,dx=0,dz=0] run data merge entity @e[type=zombie,tag=Wolfos2,limit=1] {Health:20f,Attributes:[{Name:generic.maxHealth,Base:20}]}
execute if entity @a[x=898,y=59,z=-1117,dx=0,dz=0] run tag @e[type=zombie,tag=Wolfos2] remove Attack
#2
execute if entity @a[x=898,y=59,z=-1117,dx=0,dz=0] run tp @e[type=zombie,tag=Wolfos3] 899 54 -1108
execute if entity @a[x=898,y=59,z=-1117,dx=0,dz=0] run data merge entity @e[type=zombie,tag=Wolfos3,limit=1] {Health:20f,Attributes:[{Name:generic.maxHealth,Base:20}]}
execute if entity @a[x=898,y=59,z=-1117,dx=0,dz=0] run tag @e[type=zombie,tag=Wolfos3] remove Attack

#Skulltula
#1
execute as @e[type=zombie,tag=Skulltula1] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 898 60.5 -1126 0 ~
#2
execute as @e[type=zombie,tag=Skulltula2] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 868 59 -1155 -90 ~
#3
execute as @e[type=zombie,tag=Skulltula3] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 945.0 69 -1190.0 180 ~
#4
execute as @e[type=zombie,tag=Skulltula4] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 951.0 69 -1184.0 180 ~
#5
execute as @e[type=zombie,tag=Skulltula5] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 947.0 69 -1174.0 180 ~
#6
execute as @e[type=zombie,tag=Skulltula6] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 929 61 -1155 -90 ~
#7
execute as @e[type=zombie,tag=Skulltula7] unless entity @s[tag=Stun] unless entity @s[tag=Hurt] unless entity @s[tag=Attack] run tp @s 885 22 -1142 -135 ~

#Blue Bubble
#1
execute if entity @a[x=898,y=61,z=-1181,dx=0,dz=0] unless block 898 57 -1189 minecraft:gold_block run summon minecraft:zombie 898 61 -1189 {Tags:["BlueBubble1","BlueBubble","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[0f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[x=898,y=61,z=-1181,dx=0,dz=0] run fill 898 57 -1189 898 57 -1189 minecraft:gold_block
#2
execute if entity @a[x=859,y=59,z=-1155,dx=0,dz=0] unless block 856 55 -1155 minecraft:gold_block run summon minecraft:zombie 854 59 -1158 {Tags:["BlueBubble2","BlueBubble","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[0f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[x=859,y=59,z=-1155,dx=0,dz=0] run fill 856 55 -1155 856 55 -1155 minecraft:gold_block
#3 & 4
execute as @e[type=zombie,tag=BlueBubble,x=847,y=85,z=-1144,dx=4,dy=2,dz=2] run tag @s add Rebound
execute as @e[type=zombie,tag=BlueBubble,x=847,y=85,z=-1144,dx=4,dy=2,dz=2] run data merge entity @s {Motion:[0.0,0.0,-1.0]}
#5
execute if entity @a[x=891,y=69,z=-1189,dx=0,dz=0] unless block 894 65 -1190 minecraft:gold_block run fill 889 68 -1189 889 68 -1189 minecraft:stone_pressure_plate
execute if entity @a[x=891,y=69,z=-1189,dx=0,dz=0] unless block 894 65 -1190 minecraft:gold_block run summon minecraft:zombie 901 69 -1189 {Tags:["BlueBubble5","BlueBubble","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[90f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[x=891,y=69,z=-1189,dx=0,dz=0] run fill 894 65 -1190 894 65 -1190 minecraft:gold_block
execute if block 894 65 -1190 minecraft:gold_block unless entity @e[type=zombie,tag=BlueBubble5] run fill 894 65 -1188 894 65 -1188 minecraft:gold_block
execute if block 894 65 -1188 minecraft:gold_block unless block 891 68 -1189 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 894 65 -1188 minecraft:gold_block unless block 891 68 -1189 minecraft:stone_pressure_plate run clone 898 66 -1188 898 66 -1188 898 68 -1188
execute if block 894 65 -1188 minecraft:gold_block run fill 891 68 -1189 891 68 -1189 minecraft:stone_pressure_plate replace minecraft:air
execute if block 894 65 -1188 minecraft:gold_block run fill 905 68 -1189 905 68 -1189 minecraft:stone_pressure_plate replace minecraft:air
#6 and 7
execute if entity @a[x=848,y=68,z=-1201,dx=2,dy=1,dz=2] unless block 849 56 -1200 minecraft:gold_block run summon minecraft:zombie 850 60 -1199 {Tags:["BlueBubble6","BlueBubble","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[0f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[x=848,y=68,z=-1201,dx=2,dy=1,dz=2] unless block 849 56 -1200 minecraft:gold_block run summon minecraft:zombie 848 60 -1199 {Tags:["BlueBubble7","BlueBubble","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[0f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[x=848,y=68,z=-1201,dx=2,dy=1,dz=2] unless block 849 56 -1200 minecraft:gold_block run fill 849 56 -1200 849 56 -1200 minecraft:gold_block
execute if block 849 56 -1200 minecraft:gold_block unless entity @e[type=zombie,tag=BlueBubble6] unless entity @e[type=zombie,tag=BlueBubble7] unless block 850 56 -1200 minecraft:gold_block run fill 852 61 -1188 852 61 -1188 minecraft:stone_pressure_plate
execute if block 849 56 -1200 minecraft:gold_block unless entity @e[type=zombie,tag=BlueBubble6] unless entity @e[type=zombie,tag=BlueBubble7] unless block 850 56 -1200 minecraft:gold_block at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 849 56 -1200 minecraft:gold_block unless entity @e[type=zombie,tag=BlueBubble6] unless entity @e[type=zombie,tag=BlueBubble7] unless block 850 56 -1200 minecraft:gold_block run fill 850 56 -1200 850 56 -1200 minecraft:gold_block

#Green Bubble
#1
execute as @e[type=zombie,tag=GreenBubble1,scores={lifetime=1}] run tp @s 946 84.5 -1181
#2
execute as @e[type=zombie,tag=GreenBubble2,scores={lifetime=1}] run tp @s 946 84.5 -1174
execute if block 957 85 -1176 minecraft:gold_block run scoreboard players set @e[type=zombie,tag=GreenBubble] lifetime -10
execute if block 957 85 -1176 minecraft:gold_block run tp @e[type=zombie,tag=GreenBubble] 957 85 -1178

#Stalfos
execute unless entity @e[type=zombie,tag=Stalfos1] run kill @e[type=armor_stand,tag=StalfosShield1,limit=1,sort=nearest]
execute unless entity @e[type=zombie,tag=Stalfos2] run kill @e[type=armor_stand,tag=StalfosShield2,limit=1,sort=nearest]
#Room 1
#1 & 2
execute if entity @a[x=898,y=60,z=-1194,dx=0,dz=0] unless block 898 57 -1193 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/stalfos_1
execute if block 898 57 -1193 minecraft:gold_block unless entity @e[type=zombie,tag=Stalfos1] unless entity @e[type=zombie,tag=Stalfos2] unless block 898 57 -1196 minecraft:gold_block at @a run function ocarina_of_time:moving_things/forest_temple/enemies/stalfos_2
#Room 2
execute unless block 897 69 -1211 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/stalfos_3
execute at @a if entity @a[y=67,dy=0] if block 897 69 -1211 minecraft:gold_block unless block 894 69 -1211 minecraft:gold_block run function ocarina_of_time:music/forest_temple
execute at @a if entity @a[y=67,dy=0] if block 897 69 -1211 minecraft:gold_block unless block 894 69 -1211 minecraft:gold_block run kill @e[type=zombie,tag=Stalfos]
execute at @a if entity @a[y=67,dy=0] if block 897 69 -1211 minecraft:gold_block unless block 894 69 -1211 minecraft:gold_block run fill 895 69 -1211 897 69 -1211 minecraft:air
#3
execute if entity @a[x=888,y=69,z=-1201,dx=0,dz=0] unless block 897 69 -1211 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/stalfos_4
execute if block 897 69 -1211 minecraft:gold_block unless entity @e[type=zombie,tag=Stalfos1] run fill 896 69 -1211 896 69 -1211 minecraft:gold_block
#4 & 5
execute if block 896 69 -1211 minecraft:gold_block if block 897 69 -1211 minecraft:gold_block unless block 895 69 -1211 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/stalfos_5
#Finish
execute if block 897 69 -1211 minecraft:gold_block if block 896 69 -1211 minecraft:gold_block if block 895 69 -1211 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/stalfos_6

#Octorok
#1
execute as @e[type=zombie,tag=Octorok1] at @s if entity @s[scores={timer=30}] run summon minecraft:armor_stand ^ ^-.3 ^1 {Tags:["OckRock1","OckRock"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,CustomName:"\"OckRock\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"OckRock\"",Id:[I;-1462228361,-1966521004,-1353016591,943550771],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWMwZTI3ZTU2YjU3MjU5N2E0MjljNzRiNmQyZDQ1MWQyYjk2MDhkMTNmZDYwYTQyMDMzMGRkNTdjNTRhYmM2ZSJ9fX0="}]}}}}],DisabledSlots:4144959}
execute as @e[type=zombie,tag=Octorok1] at @s if entity @s[scores={timer=31}] run tp @e[type=armor_stand,tag=OckRock1] ~ ~-.3 ~ facing entity @p
execute as @e[type=zombie,tag=Octorok1] unless entity @s[scores={timer=26..35}] run tp @s 860 53.8 -1180
execute as @e[type=zombie,tag=Octorok1] at @s positioned ~-8 ~ ~-8 unless entity @a[dx=16,dy=100,dz=16] run tp @s 860 46 -1180
execute as @e[type=zombie,tag=Octorok1] at @s positioned ~-2 ~ ~-2 if entity @a[dx=4,dy=100,dz=4] unless entity @s[scores={timer=0}] run tp @s 860 46 -1180

execute at @a unless entity @a[y=61,dy=1] as @e[type=zombie,tag=SpecialOctorok] at @s if entity @a[distance=..13] positioned ~-2 ~ ~-2 unless entity @a[dx=4,dy=100,dz=4] run scoreboard players add @s timer 1

#Wallmaster
#1
execute if entity @a[x=843,y=80,z=-1206,dx=12,dy=5,dz=12] run tag @e[type=zombie,tag=Wallmaster1] add Attack
execute as @e[type=zombie,tag=Wallmaster1] unless entity @s[scores={timer=181..201}] unless entity @a[x=843,y=80,z=-1206,dx=12,dy=5,dz=12] run tag @s remove Attack
execute as @e[type=zombie,tag=Wallmaster1] unless entity @s[tag=Attack] run tp @s 849 94 -1200
execute as @e[type=zombie,tag=Wallmaster1,scores={timer=201..}] run tp @a 898 88 -1171
#2
execute if entity @a[x=940,y=80,z=-1206,dx=12,dy=5,dz=12] run tag @e[type=zombie,tag=Wallmaster2] add Attack
execute unless entity @a[x=940,y=80,z=-1206,dx=12,dy=5,dz=12] run tag @e[type=zombie,tag=Wallmaster2] remove Attack
execute as @e[type=zombie,tag=Wallmaster2] unless entity @s[tag=Attack] run tp @s 946 96 -1200
execute as @e[type=zombie,tag=Wallmaster2,scores={timer=201..}] run tp @a 898 88 -1171

#Floormaster
#1
execute if entity @a[x=849,y=62,z=-1173,dx=0,dz=0] unless block 844 57 -1170 minecraft:gold_block unless block 844 57 -1171 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/floormaster_1

execute if block 844 57 -1170 minecraft:gold_block unless entity @e[type=zombie,tag=Floormaster] unless entity @e[type=zombie,tag=Tinymaster] unless block 844 57 -1171 minecraft:gold_block at @a run function ocarina_of_time:moving_things/forest_temple/enemies/floormaster_2

#Red Painting
execute as @e[type=armor_stand,tag=RedPainting] at @s run function ocarina_of_time:moving_things/forest_temple/enemies/red_paintings
execute as @e[type=area_effect_cloud,tag=RedPoeWatch] if block 881 64 -1204 minecraft:gold_block unless entity @e[type=armor_stand,tag=RedPainting] run fill 881 65 -1204 881 65 -1204 minecraft:gold_block
#Sound
execute store result score @e[type=armor_stand,tag=RedPainting] HoverTimer if entity @e[type=armor_stand,tag=RedPainting]
execute as @e[type=armor_stand,tag=RedPainting1,y_rotation=90,scores={HoverTimer=2..}] at @s if entity @a[x=869,y=70,z=-1200,dx=5,dy=7,dz=2] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute as @e[type=armor_stand,tag=RedPainting2,y_rotation=-90,scores={HoverTimer=2..}] at @s if entity @a[x=864,y=76,z=-1203,dx=3,dy=1,dz=5] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute as @e[type=armor_stand,tag=RedPainting3,y_rotation=90,scores={HoverTimer=2..}] at @s if entity @a[x=871,y=81,z=-1203,dx=7,dy=4,dz=6] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
#Joelle
execute if block 881 65 -1204 minecraft:gold_block unless block 881 65 -1203 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run summon minecraft:zombie 881 68 -1203 {Tags:["Joelle","ForestPoe","Invisible","Fire"],NoGravity:1b,Silent:1b,CustomName:"\"ForestPoe\"",CustomNameVisible:0,Health:30,Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.max_health",Base:30}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if block 881 65 -1204 minecraft:gold_block unless block 881 65 -1203 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run summon minecraft:armor_stand 881 68 -1203 {Tags:["Joelle","ForestPoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"ForestPoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:3}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if block 881 65 -1204 minecraft:gold_block unless block 881 65 -1203 minecraft:gold_block run fill 881 65 -1203 881 65 -1203 minecraft:gold_block
execute as @e[type=zombie,tag=Joelle] at @s unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=101..140}] run tp @e[type=armor_stand,tag=Joelle] ~ ~ ~ facing entity @p
execute at @e[type=armor_stand,tag=Joelle] as @e[type=zombie,scores={lifetime=101..140},tag=Joelle] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[type=zombie,tag=Joelle] run tag @e[type=armor_stand,tag=Joelle] add Die
execute if block 881 65 -1204 minecraft:gold_block if block 881 65 -1203 minecraft:gold_block unless block 881 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run clone 885 64 -1206 885 64 -1206 885 68 -1206
execute if block 881 65 -1204 minecraft:gold_block if block 881 65 -1203 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run fill 881 65 -1202 881 65 -1202 minecraft:gold_block
execute if block 881 65 -1202 minecraft:gold_block run fill 893 52 -1151 893 52 -1151 minecraft:redstone_block
execute if block 881 65 -1202 minecraft:gold_block run fill 887 67 -1204 887 67 -1204 minecraft:redstone_block
#Reset
execute if entity @a[x=858,y=84,z=-1200,dx=0,dz=0] unless block 881 65 -1202 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/red_painting_reset
execute if entity @a[x=888,y=68,z=-1201,dx=0,dz=0] unless block 881 65 -1202 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/red_painting_reset

#Blue Painting
execute as @e[type=armor_stand,tag=BluePainting] at @s run function ocarina_of_time:moving_things/forest_temple/enemies/blue_paintings
execute if block 927 74 -1201 minecraft:gold_block if block 928 74 -1200 minecraft:gold_block unless entity @e[type=armor_stand,tag=BluePainting] run fill 911 65 -1204 911 65 -1204 minecraft:gold_block
#Sound
execute store result score @e[type=armor_stand,tag=BluePainting] HoverTimer if entity @e[type=armor_stand,tag=BluePainting]
execute as @e[type=armor_stand,tag=BluePainting1,y_rotation=-90,scores={HoverTimer=2..}] at @s if entity @a[x=919,y=70,z=-1200,dx=5,dy=7,dz=2] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute as @e[type=armor_stand,tag=BluePainting2,y_rotation=90,scores={HoverTimer=2..}] at @s if entity @a[x=926,y=76,z=-1203,dx=3,dy=1,dz=5] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute as @e[type=armor_stand,tag=BluePainting3,y_rotation=-90,scores={HoverTimer=2..}] at @s if entity @a[x=915,y=81,z=-1203,dx=7,dy=4,dz=6] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
#Beth
execute if block 911 65 -1204 minecraft:gold_block unless block 911 65 -1203 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run summon minecraft:zombie 912 68 -1203 {Tags:["Beth","ForestPoe","Invisible","Fire"],NoGravity:1b,Silent:1b,CustomName:"\"ForestPoe\"",CustomNameVisible:0,Health:30,Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.max_health",Base:30}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if block 911 65 -1204 minecraft:gold_block unless block 911 65 -1203 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run summon minecraft:armor_stand 912 68 -1203 {Tags:["Beth","ForestPoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"ForestPoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:2}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if block 911 65 -1204 minecraft:gold_block unless block 911 65 -1203 minecraft:gold_block run fill 911 65 -1203 911 65 -1203 minecraft:gold_block
execute as @e[type=zombie,tag=Beth] at @s unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=101..140}] run tp @e[type=armor_stand,tag=Beth] ~ ~ ~ facing entity @p
execute at @e[type=armor_stand,tag=Beth] as @e[type=zombie,scores={lifetime=101..140},tag=Beth] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[type=zombie,tag=Beth] run tag @e[type=armor_stand,tag=Beth] add Die
execute if block 911 65 -1204 minecraft:gold_block if block 911 65 -1203 minecraft:gold_block unless block 911 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run clone 908 64 -1206 908 64 -1206 908 68 -1206
execute if block 911 65 -1204 minecraft:gold_block if block 911 65 -1203 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run fill 911 65 -1202 911 65 -1202 minecraft:gold_block
execute if block 911 65 -1202 minecraft:gold_block run fill 903 52 -1159 903 52 -1159 minecraft:redstone_block
execute if block 911 65 -1202 minecraft:gold_block run fill 906 67 -1204 906 67 -1204 minecraft:redstone_block

#Reset
execute if entity @a[x=937,y=84,z=-1200,dx=0,dz=0] unless block 911 65 -1202 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/blue_painting_reset
execute if entity @a[x=905,y=68,z=-1201,dx=0,dz=0] unless block 911 65 -1202 minecraft:gold_block run function ocarina_of_time:moving_things/forest_temple/enemies/blue_painting_reset

#Green Painting
execute unless block 948 56 -1154 minecraft:gold_block if entity @e[type=arrow,x=956,y=62,z=-1156,dx=0,dy=2,dz=2] run tag @e[type=armor_stand,tag=GreenPainting1] add Minigame
execute unless block 948 56 -1154 minecraft:gold_block if entity @e[type=arrow,x=956,y=62,z=-1156,dx=0,dy=2,dz=2] run kill @e[type=arrow]
execute unless block 948 56 -1154 minecraft:gold_block as @e[type=armor_stand,tag=GreenPainting1,tag=Minigame] at @a run function ocarina_of_time:moving_things/forest_temple/enemies/green_poe

#Green Painting Reset
execute unless block 948 56 -1154 minecraft:gold_block if entity @a[x=948,y=60,z=-1166,dx=0,dz=0] run function ocarina_of_time:moving_things/forest_temple/enemies/green_painting_reset

#Amy
execute if entity @e[type=armor_stand,tag=GreenPainting1,tag=Finish] unless block 949 56 -1154 minecraft:gold_block unless block 948 56 -1154 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run summon minecraft:zombie 948 59 -1155 {Tags:["Amy","ForestPoe","Invisible","Fire"],NoGravity:1b,Silent:1b,CustomName:"\"ForestPoe\"",CustomNameVisible:0,Health:30,Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.max_health",Base:30}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @e[type=armor_stand,tag=GreenPainting1,tag=Finish] unless block 949 56 -1154 minecraft:gold_block unless block 948 56 -1154 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run summon minecraft:armor_stand 948 59 -1155 {Tags:["Amy","ForestPoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"ForestPoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:1}}],Pose:{RightArm:[-50f,40f,0f]}}
execute unless block 949 56 -1154 minecraft:gold_block if entity @e[type=armor_stand,tag=Amy] run fill 949 56 -1154 949 56 -1154 minecraft:gold_block
execute if block 949 56 -1154 minecraft:gold_block run kill @e[type=armor_stand,tag=GreenPainting]
execute as @e[type=zombie,tag=Amy] at @s unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] unless entity @s[scores={lifetime=101..140}] run tp @e[type=armor_stand,tag=Amy] ~ ~ ~ facing entity @p
execute at @e[type=armor_stand,tag=Amy] as @e[type=zombie,scores={lifetime=101..140},tag=Amy] unless entity @s[scores={HoverTimer=1..20}] unless entity @s[scores={HoverTimer=150..170}] run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[type=zombie,tag=Amy] run tag @e[type=armor_stand,tag=Amy] add Die
execute if block 949 56 -1154 minecraft:gold_block unless entity @e[type=armor_stand,tag=ForestPoe] run fill 948 56 -1154 948 56 -1154 minecraft:gold_block
execute if block 948 56 -1154 minecraft:gold_block unless block 940 60 -1155 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 948 56 -1154 minecraft:gold_block run fill 940 60 -1155 940 60 -1155 minecraft:stone_pressure_plate replace minecraft:air
execute if block 948 56 -1154 minecraft:gold_block run fill 903 52 -1151 903 52 -1151 minecraft:redstone_block
execute if block 948 56 -1154 minecraft:gold_block run fill 942 57 -1154 942 57 -1154 minecraft:redstone_block

#Purple Poe
execute if block 893 52 -1151 minecraft:redstone_block if block 903 52 -1151 minecraft:redstone_block if block 903 52 -1159 minecraft:redstone_block if block 893 52 -1159 minecraft:air unless block 901 53 -1152 minecraft:gold_block run summon minecraft:zombie 898 54 -1155 {Tags:["Meg","PurplePoe","Invisible","Fire"],NoGravity:1b,Silent:1b,CustomName:"\"PurplePoe\"",CustomNameVisible:0,Health:35,Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.max_health",Base:35}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if block 893 52 -1151 minecraft:redstone_block if block 903 52 -1151 minecraft:redstone_block if block 903 52 -1159 minecraft:redstone_block if block 893 52 -1159 minecraft:air unless block 901 53 -1152 minecraft:gold_block run summon minecraft:armor_stand 898 54 -1155 {Tags:["Meg","PurplePoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"PurplePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:4}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if block 893 52 -1151 minecraft:redstone_block if block 903 52 -1151 minecraft:redstone_block if block 903 52 -1159 minecraft:redstone_block if block 893 52 -1159 minecraft:air unless block 901 53 -1152 minecraft:gold_block run fill 901 53 -1152 901 53 -1152 minecraft:gold_block
execute if entity @a[x=894,y=55,z=-1159,dx=8,dy=1,dz=8] if block 901 53 -1152 minecraft:gold_block run tag @e[type=zombie,tag=PurplePoe] add Attack
execute if entity @a[tag=ResetPurplePoe] run function ocarina_of_time:moving_things/forest_temple/enemies/purple_poe_reset
execute unless block 893 52 -1159 minecraft:redstone_block unless entity @e[type=zombie,tag=Meg] run kill @e[tag=PurplePoe]
execute unless entity @e[type=armor_stand,tag=PurplePoe] if block 901 53 -1152 minecraft:gold_block run fill 893 52 -1159 893 52 -1159 minecraft:redstone_block
