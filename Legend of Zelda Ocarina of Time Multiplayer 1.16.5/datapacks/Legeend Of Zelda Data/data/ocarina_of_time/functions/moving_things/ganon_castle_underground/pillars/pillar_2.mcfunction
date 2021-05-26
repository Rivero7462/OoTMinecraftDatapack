scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run tag @a add NoOcarina
execute if entity @s[scores={lifetime=1}] run tp @a -520 20 1974
execute if entity @s[scores={lifetime=1}] run fill -521 20 1972 -523 31 1976 minecraft:air replace minecraft:obsidian
execute if entity @s[scores={lifetime=1}] run fill -521 20 1972 -523 31 1976 minecraft:air replace minecraft:gilded_blackstone
execute if entity @s[scores={lifetime=1}] run fill -520 22 1974 -520 22 1974 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -520 21 1975 -520 21 1975 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -519 21 1974 -519 21 1974 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -520 21 1973 -520 21 1973 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill -521 21 1974 -521 21 1974 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run summon minecraft:armor_stand -520 22 1974 {Tags:["Pillar","Pillar2"],Rotation:[90f],Invisible:1b,NoGravity:1b,HandItems:[{id:cobblestone,Count:1,tag:{CustomModelData:112}},{}],Pose:{RightArm:[90f,0f,0f]},DisabledSlots:4144959}

#Move
execute if entity @s[scores={lifetime=20..43}] as @e[type=armor_stand,tag=Pillar2] at @s run tp @s ~.5 ~.8 ~

execute if entity @s[scores={lifetime=44}] at @a run playsound minecraft:block.ancient_debris.break hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={lifetime=44}] run kill @e[tag=Pillar2]

#Pose
execute if entity @s[scores={lifetime=22}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[85f,0f,0f]}}
execute if entity @s[scores={lifetime=23}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[80f,0f,0f]}}
execute if entity @s[scores={lifetime=24}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[75f,0f,0f]}}
execute if entity @s[scores={lifetime=25}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[70f,0f,0f]}}
execute if entity @s[scores={lifetime=26}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[65f,0f,0f]}}
execute if entity @s[scores={lifetime=27}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[60f,0f,0f]}}
execute if entity @s[scores={lifetime=28}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[55f,0f,0f]}}
execute if entity @s[scores={lifetime=29}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[50f,0f,0f]}}
execute if entity @s[scores={lifetime=30}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[45f,0f,0f]}}
execute if entity @s[scores={lifetime=31}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[40f,0f,0f]}}
execute if entity @s[scores={lifetime=32}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[35f,0f,0f]}}
execute if entity @s[scores={lifetime=34}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[30f,0f,0f]}}
execute if entity @s[scores={lifetime=36}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[25f,0f,0f]}}
execute if entity @s[scores={lifetime=38}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[20f,0f,0f]}}
execute if entity @s[scores={lifetime=40}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[15f,0f,0f]}}
execute if entity @s[scores={lifetime=42}] as @e[type=armor_stand,tag=Pillar2] run data merge entity @s {Pose:{RightArm:[10f,0f,0f]}}

#Finish
execute if entity @s[scores={lifetime=80..}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=80..}] run fill -519 21 1975 -521 22 1973 minecraft:air
execute if entity @s[scores={lifetime=80..}] run tag @a remove ThrowPillar2
