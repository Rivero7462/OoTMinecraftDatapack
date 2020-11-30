execute unless entity @s[scores={timer=0..}] run fill -26 124 763 -26 124 763 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -27 124 764 -27 124 764 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -28 124 763 -28 124 763 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -27 124 762 -27 124 762 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run tp @a -27 123 763
execute unless entity @s[scores={timer=0..}] run function ocarina_of_time:music/kotake_koume
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run tp @s -39 120 751 -45 ~
execute unless entity @s[scores={timer=0..}] run tp @e[type=armor_stand,tag=Koume2] -15 120 775 135 0
execute unless entity @s[scores={timer=0..}] run summon minecraft:armor_stand -28 115 811 {Tags:["KotakeBroom2"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute unless entity @s[scores={timer=0..}] run summon minecraft:armor_stand -26 115 811 {Tags:["KoumeBroom2"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute unless entity @s[scores={timer=0..}] run data merge entity @s {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute unless entity @s[scores={timer=0..}] run data merge entity @e[type=armor_stand,tag=Koume2,limit=1] {Pose:{Head:[0f,0f,0f],Body:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
scoreboard players add @s timer 1

#Brooms
execute as @e[type=armor_stand,tag=KotakeBroom2] at @e[type=armor_stand,tag=Kotake2] rotated as @e[type=armor_stand,tag=Kotake2] run tp @s ^ ^ ^.3 ~ 0
execute as @e[type=armor_stand,tag=KoumeBroom2] at @e[type=armor_stand,tag=Koume2] rotated as @e[type=armor_stand,tag=Koume2] run tp @s ^ ^ ^.3 ~ 0

execute if entity @s[scores={timer=0..182}] run particle minecraft:soul_fire_flame -39 123 751 1 .1 1 0 5 normal
execute if entity @s[scores={timer=0..182}] run particle minecraft:flame -15 123 775 1 .1 1 0 5 normal
execute if entity @s[scores={timer=1}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"Look at that stupid kid! He came on his own to offer himself as a sacrifice to the great Ganondorf..."}]
execute if entity @s[scores={timer=40}] at @a run tp @a ~ ~ ~ -45 ~
execute if entity @s[scores={timer=40..51}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~.2 ~
execute if entity @s[scores={timer=53}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"With my flame, I will burn him to the bone!","color":"white"}]
execute if entity @s[scores={timer=90}] run data merge entity @e[type=armor_stand,tag=Koume2,limit=1] {Pose:{Head:[0f,20f,0f],Body:[10f,0f,0f],RightArm:[-70f,40f,0f],LeftArm:[-40f,30f,0f],RightLeg:[-60f,20f,0f],LeftLeg:[-60f,-20f,0f]}}
execute if entity @s[scores={timer=90..101}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ ~.2 ~ ~60 ~
execute if entity @s[scores={timer=102}] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={timer=102}] run kill @e[type=armor_stand,tag=KoumeBroom2]
execute if entity @s[scores={timer=102}] at @e[type=armor_stand,tag=Koume2] run particle minecraft:flame -15 125.5 775 .5 1 .5 0 200
execute if entity @s[scores={timer=102}] at @e[type=armor_stand,tag=Koume2] run summon minecraft:zombie ^ ^ ^.5 {Tags:["Koume","Twinrova","Invisible","Resist"],Rotation:[135f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:18}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=102}] as @e[type=armor_stand,tag=Koume2] at @s run tp @s ~ 110 ~

execute if entity @s[scores={timer=120}] at @a run tp @a ~ ~ ~ 135 ~
execute if entity @s[scores={timer=120..131}] run tp @s ~ ~.2 ~
execute if entity @s[scores={timer=133}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"With my frost, I will freeze him to his soul!","color":"white"}]
execute if entity @s[scores={timer=150}] run data merge entity @s {Pose:{Head:[0f,20f,0f],Body:[10f,0f,0f],RightArm:[-70f,40f,0f],LeftArm:[-40f,30f,0f],RightLeg:[-60f,20f,0f],LeftLeg:[-60f,-20f,0f]}}
execute if entity @s[scores={timer=150..161}] run tp @s ~ ~.2 ~ ~60 ~
execute if entity @s[scores={timer=162}] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={timer=162}] run kill @e[type=armor_stand,tag=KotakeBroom2]
execute if entity @s[scores={timer=162}] run particle minecraft:soul_fire_flame -39 125.5 751 .5 1 .5 0 200
execute if entity @s[scores={timer=162}] run summon minecraft:zombie ^ ^ ^.5 {Tags:["Kotake","Twinrova","Invisible","Resist"],Rotation:[-45f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:17}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=162}] run tp @s ~ 110 ~

#Final Spin
execute if entity @s[scores={timer=182..204}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^.1 ^.3
execute if entity @s[scores={timer=205}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ 45 ~
execute if entity @s[scores={timer=206..220}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~4 ~
execute if entity @s[scores={timer=206..220}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^9 ^ ^
execute if entity @s[scores={timer=221..230}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~7 ~
execute if entity @s[scores={timer=221..230}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^8 ^ ^
execute if entity @s[scores={timer=231..240}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~10 ~
execute if entity @s[scores={timer=231..240}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^7 ^ ^
execute if entity @s[scores={timer=241..250}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~13 ~
execute if entity @s[scores={timer=241..250}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^6 ^ ^
execute if entity @s[scores={timer=251..260}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~16 ~
execute if entity @s[scores={timer=251..260}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^5 ^ ^
execute if entity @s[scores={timer=261..270}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~19 ~
execute if entity @s[scores={timer=261..270}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^4 ^ ^
execute if entity @s[scores={timer=271..280}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~22 ~
execute if entity @s[scores={timer=271..280}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^3 ^ ^
execute if entity @s[scores={timer=281..290}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~26 ~
execute if entity @s[scores={timer=281..290}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^2 ^ ^
execute if entity @s[scores={timer=290..340}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~30 ~
execute if entity @s[scores={timer=290..340}] as @e[type=zombie,tag=Koume] at @s positioned -27 126 763 run tp @s ^1 ^ ^
execute if entity @s[scores={timer=341..370}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^.2

execute if entity @s[scores={timer=182..204}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^.1 ^.3
execute if entity @s[scores={timer=205}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ -135 ~
execute if entity @s[scores={timer=206..220}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~4 ~
execute if entity @s[scores={timer=206..220}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^9 ^ ^
execute if entity @s[scores={timer=221..230}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~7 ~
execute if entity @s[scores={timer=221..230}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^8 ^ ^
execute if entity @s[scores={timer=231..240}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~10 ~
execute if entity @s[scores={timer=231..240}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^7 ^ ^
execute if entity @s[scores={timer=241..250}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~13 ~
execute if entity @s[scores={timer=241..250}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^6 ^ ^
execute if entity @s[scores={timer=251..260}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~16 ~
execute if entity @s[scores={timer=251..260}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^5 ^ ^
execute if entity @s[scores={timer=261..270}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~19 ~
execute if entity @s[scores={timer=261..270}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^4 ^ ^
execute if entity @s[scores={timer=271..280}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~22 ~
execute if entity @s[scores={timer=271..280}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^3 ^ ^
execute if entity @s[scores={timer=281..290}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~26 ~
execute if entity @s[scores={timer=281..290}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^2 ^ ^
execute if entity @s[scores={timer=290..340}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^ ~30 ~
execute if entity @s[scores={timer=290..340}] as @e[type=zombie,tag=Kotake] at @s positioned -27 126 763 run tp @s ^1 ^ ^
execute if entity @s[scores={timer=341..370}] as @e[type=zombie,tag=Kotake] at @s run tp @s ^ ^ ^.2

#Title
execute if entity @s[scores={timer=310}] run title @a times 5 50 5
execute if entity @s[scores={timer=310}] run title @a subtitle "Sorceress Sisters"
execute if entity @s[scores={timer=310}] run title @a title "Twinrova"

execute if entity @s[scores={timer=371}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=371}] run summon minecraft:area_effect_cloud -39 127 775 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=371}] run summon minecraft:area_effect_cloud -15 127 775 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=371}] run summon minecraft:area_effect_cloud -15 127 751 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=371}] run summon minecraft:area_effect_cloud -39 127 751 {Tags:["Twinrova","TwinrovaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={timer=371}] as @e[type=zombie,tag=Kotake] at @s run tp @s ~ 127 ~
execute if entity @s[scores={timer=371}] as @e[type=zombie,tag=Koume] at @s run tp @s ~ 127 ~
execute if entity @s[scores={timer=371}] run fill -27 117 763 -27 117 763 minecraft:gold_block
execute if entity @s[scores={timer=371}] run tag @a add Boss
execute if entity @s[scores={timer=371}] run function ocarina_of_time:music/boss
execute if entity @s[scores={timer=371}] run fill -26 124 762 -28 124 764 minecraft:air
execute if entity @s[scores={timer=371}] run fill -28 117 763 -28 117 763 minecraft:gold_block
execute if entity @s[scores={timer=371}] run scoreboard players reset @s timer
