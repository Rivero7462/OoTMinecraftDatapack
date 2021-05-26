execute unless entity @s[scores={timer=0..}] run tp @a 898 59 -1139
execute unless entity @s[scores={timer=0..}] run fill 898 48 -1152 898 48 -1152 minecraft:gold_block
execute unless entity @s[scores={timer=0..}] run fill 898 60 -1140 898 60 -1140 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 897 60 -1139 897 60 -1139 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 898 60 -1138 898 60 -1138 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill 899 60 -1139 899 60 -1139 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 0

execute if entity @s[scores={timer=0..}] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=0..}] run scoreboard players add @s time 1

#Fire's Go Out
execute if entity @s[scores={timer=20}] run fill 893 52 -1151 893 52 -1151 minecraft:air
execute if entity @s[scores={timer=20}] run fill 903 52 -1151 903 52 -1151 minecraft:air
execute if entity @s[scores={timer=20}] run fill 903 52 -1159 903 52 -1159 minecraft:air
execute if entity @s[scores={timer=20}] run fill 893 52 -1159 893 52 -1159 minecraft:air

#Summon
execute if entity @s[scores={timer=50}] run summon minecraft:armor_stand 894 57 -1151 {Tags:["FakePoe1","FakePoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"FakePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:3}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if entity @s[scores={timer=50}] run summon minecraft:armor_stand 902 57 -1159 {Tags:["FakePoe2","FakePoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"FakePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:2}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if entity @s[scores={timer=50}] run summon minecraft:armor_stand 902 57 -1151 {Tags:["FakePoe3","FakePoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"FakePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:1}}],Pose:{RightArm:[-50f,40f,0f]}}
execute if entity @s[scores={timer=50}] run summon minecraft:armor_stand 894 56 -1159 {Tags:["FakePoe4","FakePoe"],Invisible:1b,NoGravity:1b,Silent:1b,CustomName:"\"FakePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:4}}],Pose:{RightArm:[-50f,40f,0f]}}

#Spin
execute if entity @s[scores={timer=51..70}] as @e[type=armor_stand,tag=FakePoe] at @s run tp @s ~ ~ ~
execute if entity @s[scores={timer=51..70}] as @e[type=armor_stand,tag=FakePoe] at @s run tp @s ~ ~ ~ ~40 ~

#Lower Elevator
execute if entity @s[scores={timer=71..98}] as @e[type=armor_stand,tag=FakePoe] run data merge entity @s {Rotation:[0f,0f]}
execute if entity @s[scores={timer=80}] run clone 891 45 -1154 893 51 -1156 897 53 -1156
execute if entity @s[scores={timer=83}] run clone 891 45 -1154 893 51 -1156 897 52 -1156
execute if entity @s[scores={timer=86}] run clone 891 45 -1154 893 51 -1156 897 51 -1156
execute if entity @s[scores={timer=89}] run clone 891 45 -1154 893 51 -1156 897 50 -1156
execute if entity @s[scores={timer=92}] run clone 891 45 -1154 893 51 -1156 897 49 -1156
execute if entity @s[scores={timer=92}] run fill 899 54 -1156 897 54 -1154 minecraft:stone_bricks

#Float
execute if entity @s[scores={time=1}] as @e[type=armor_stand,tag=FakePoe] at @s run tp @s ~ ~-.2 ~
execute if entity @s[scores={time=5}] as @e[type=armor_stand,tag=FakePoe] at @s run tp @s ~ ~-.2 ~
execute if entity @s[scores={time=9}] as @e[type=armor_stand,tag=FakePoe] at @s run tp @s ~ ~.2 ~
execute if entity @s[scores={time=12}] as @e[type=armor_stand,tag=FakePoe] at @s run tp @s ~ ~.2 ~
execute if entity @s[scores={time=15..}] run scoreboard players set @s time 0

#Fly Away
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe1] at @s run tp @s ~-.2 ~ ~.2 45 ~
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe2] at @s run tp @s ~.2 ~ ~-.1 -135 ~
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe3] at @s run tp @s ~.2 ~ ~.2 -45 ~
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe4] at @s run tp @s ~-.2 ~ ~-.1 135 ~
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe1] run data merge entity @s {Rotation:[45f,0f]}
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe2] run data merge entity @s {Rotation:[-135f,0f]}
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe3] run data merge entity @s {Rotation:[-45f,0f]}
execute if entity @s[scores={timer=100..180}] as @e[type=armor_stand,tag=FakePoe4] run data merge entity @s {Rotation:[135f,0f]}

#Finish
execute if entity @s[scores={timer=181..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=181..}] at @a run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={timer=181..}] run fill 897 60 -1138 899 60 -1140 minecraft:air
execute if entity @s[scores={timer=181..}] run kill @e[type=armor_stand,tag=FakePoe]
execute if entity @s[scores={timer=181..}] run tag @a remove PoeFlames
execute if entity @s[scores={timer=181..}] run scoreboard players reset @s timer
