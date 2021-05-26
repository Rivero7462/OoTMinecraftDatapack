#Limbs
execute as @e[type=armor_stand,tag=GanonBody] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=GanonTail] ^ ^-1.7 ^-1.8 ~ 0
execute as @e[type=armor_stand,tag=GanonBody] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=GanonRightArm] ^1.1 ^.1 ^ ~ 0
execute as @e[type=armor_stand,tag=GanonBody] at @s rotated ~ 0 run tp @e[type=armor_stand,tag=GanonLeftArm] ^-1.1 ^.1 ^ ~ 0

#Start
execute unless entity @s[tag=Stop] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tp @a -585 52 276 90 0
execute if entity @s[scores={timer=1}] run fill -586 53 276 -586 53 276 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -585 53 277 -585 53 277 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -585 53 275 -585 53 275 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -584 53 276 -584 53 276 minecraft:barrier
execute if entity @s[scores={timer=1}] run summon minecraft:armor_stand -586.0 53 275 {Tags:["Navi6"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}

execute if entity @s[scores={timer=20}] run function ocarina_of_time:moving_things/final_platform/boss/fire_wall/add

execute if entity @s[scores={timer=62}] at @a run playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ .7 .5
execute if entity @s[scores={timer=62..63}] run particle minecraft:explosion_emitter -600 56 276 4 2 4 1 50
execute if entity @s[scores={timer=64}] at @a run particle minecraft:flash ^ ^1 ^1 0 0 0 1 2
execute if entity @s[scores={timer=65}] run clone -593 49 189 -569 56 214 -613 52 263
execute if entity @s[scores={timer=65}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[-10f,30f,20f],LeftArm:[-30f,30f,-60f],RightLeg:[-20f,20f,10f],LeftLeg:[-20f,20f,-20f]}}
execute if entity @s[scores={timer=65}] run tp @s -598 57 276
execute if entity @s[scores={timer=66..90}] run tp @s ~ ~.1 ~
execute if entity @s[scores={timer=110}] at @a run playsound minecraft:entity.illusioner.prepare_blindness ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=110}] run particle minecraft:flash ^-.8 ^2 ^1 0 0 0 0 1
execute if entity @s[scores={timer=110}] run data merge entity @s {Pose:{RightArm:[-130f,30f,0f]}}

execute if entity @s[scores={timer=140}] run data merge entity @s {Pose:{Head:[-70f,0f,0f],RightArm:[-150f,-90f,-90f],LeftArm:[-150f,90f,90f],RightLeg:[-20f,20f,20f],LeftLeg:[-20f,-20f,-20f]}}
execute if entity @s[scores={timer=140}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 1 .7
execute if entity @s[scores={timer=140..180}] run particle minecraft:enchanted_hit ~ ~1.2 ~ .3 .5 .3 0 5
execute if entity @s[scores={timer=180}] at @a run particle minecraft:flash ^ ^1 ^1 0 0 0 1 2

execute if entity @s[scores={timer=180}] run tp @s -660 75 276
execute if entity @s[scores={timer=185}] run tp @s -660 47 276
execute if entity @s[scores={timer=190}] run tp @s -602 47 276 -90 ~
execute if entity @s[scores={timer=180}] run function ocarina_of_time:music/final_battle

#Summon
execute if entity @s[scores={timer=180}] run summon minecraft:zombie -591 58 276 {Tags:["Ganon","GanonHead","Boss","Resist","Fire"],NoAI:1b,PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,Health:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=180}] run summon minecraft:zombie -591 58 276 {Tags:["Ganon","TailHealth","Boss","Resist","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=180}] run summon minecraft:armor_stand -591 58 276 {Tags:["Ganon","GanonBody","Boss"],Rotation:[-90f],Invisible:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:118}}],NoGravity:1b,DisabledSlots:4144959}
execute if entity @s[scores={timer=180}] run summon minecraft:armor_stand -591 58 277 {Tags:["Ganon","GanonLeftArm","Boss"],Rotation:[-90f],Invisible:1b,HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:121}}],NoGravity:1b,DisabledSlots:4144959}
execute if entity @s[scores={timer=180}] run summon minecraft:armor_stand -591 58 275 {Tags:["Ganon","GanonRightArm","Boss"],Rotation:[-90f],Invisible:1b,HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:120}},{}],NoGravity:1b,DisabledSlots:4144959}
execute if entity @s[scores={timer=180}] run summon minecraft:armor_stand -593 57 276 {Tags:["Ganon","GanonTail","Boss"],Rotation:[-90f],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:119}}],NoGravity:1b,DisabledSlots:4144959}
execute if entity @s[scores={timer=180}] run data merge entity @e[type=armor_stand,tag=GanonLeftArm,limit=1] {Pose:{LeftArm:[-50f,-10f,-10f]}}
execute if entity @s[scores={timer=180}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {Pose:{RightArm:[-70f,0f,10f]}}

execute if entity @s[scores={timer=181..200}] at @e[tag=GanonBody] run particle minecraft:enchanted_hit ~ ~1 ~ 1 1 1 0 10
execute if entity @s[scores={timer=200..211}] as @e[tag=GanonBody] at @s run tp @s ~ ~-.3 ~
execute if entity @s[scores={timer=212}] as @e[tag=GanonBody] at @s run tp ~ 54.7 ~
execute if entity @s[scores={timer=212}] run playsound minecraft:block.ancient_debris.place hostile @a ~ ~ ~ 2 .5

execute if entity @s[scores={timer=220}] run tag @s add SwingBoth
execute if entity @s[scores={timer=220}] run tag @s add Stop
execute if entity @s[scores={timer=220}] run scoreboard players add @s timer 1

#Title
execute if entity @s[scores={timer=200}] run title @a times 5 50 5
execute if entity @s[scores={timer=200}] run title @a title "GANON"

#Swing Swords
execute if entity @s[tag=SwingBoth] as @e[type=armor_stand,tag=GanonBody] at @s run function ocarina_of_time:moving_things/final_platform/boss/both_swing
execute if entity @s[tag=SwingBoth] as @e[type=armor_stand,tag=GanonBody] at @s run function ocarina_of_time:moving_things/final_platform/boss/both_swing

#Lose Sword
execute if entity @s[scores={timer=222}] at @a run playsound minecraft:entity.player.attack.sweep ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={timer=222}] run clear @a minecraft:diamond_sword
execute if entity @s[scores={timer=222}] run kill @a[nbt={Item:{id:"minecraft:diamond_sword"}}]
execute if entity @s[scores={timer=222}] run summon minecraft:armor_stand -584 55 272 {Tags:["MasterSword","Ganon"],Invisible:1b,NoGravity:1b,ShowArms:1b,HandItems:[{id:diamond_sword,Count:1b},{}],Pose:{RightArm:[0f,0f,90f]},DisabledSlots:4144959}
execute if entity @s[scores={timer=222}] run gamemode spectator @a
execute if entity @s[scores={timer=222..240}] run tp @a -579 51 276 180 -25
execute if entity @s[scores={timer=222..240}] as @e[type=armor_stand,tag=MasterSword] at @s run tp @s ~.5 ~ ~ ~50 ~

execute if entity @s[scores={timer=241..260}] run tp @a -569 51 278 -125 15

execute if entity @s[scores={timer=241}] run tp @e[type=armor_stand,tag=MasterSword] -566 55 277 90 ~
execute if entity @s[scores={timer=241}] run data merge entity @e[type=armor_stand,tag=MasterSword,limit=1] {Pose:{RightArm:[89f,89f,9f]}}

execute if entity @s[scores={timer=242..248}] as @e[type=armor_stand,tag=MasterSword] at @s run tp @s ~ ~-.5 ~
execute if entity @s[scores={timer=248}] at @a run playsound minecraft:entity.player.attack.weak ambient @a ~ ~ ~ 1 2
execute if entity @s[scores={timer=249..257}] as @e[tag=PrincessZelda5] at @s run tp @s ~ ~ ~ ~-15 ~

execute if entity @s[scores={timer=275}] run tp @a -585 52 276 90 0
execute if entity @s[scores={timer=275}] run gamemode adventure @a
execute if entity @s[scores={timer=285}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"There's no way he's going to hold me back again! This time, we fight together!","color":"aqua"}]

execute if entity @s[scores={timer=340..}] run tp @e[type=armor_stand,tag=PrincessZelda5] -567 52 275 90 0
execute if entity @s[scores={timer=340..}] run kill @e[type=armor_stand,tag=Navi6]
execute if entity @s[scores={timer=340..}] run fill -586 53 277 -584 53 275 minecraft:air
execute if entity @s[scores={timer=340..}] run tag @e[type=armor_stand,tag=GanonBody] add Attack
execute if entity @s[scores={timer=340..}] run fill -597 46 278 -597 46 278 minecraft:gold_block
execute if entity @s[scores={timer=340..}] run tag @a remove StartGanon
execute if entity @s[scores={timer=340..}] run scoreboard players reset @s timer

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi6] timer 1
execute as @e[type=armor_stand,tag=Navi6] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 53 ~
execute as @e[type=armor_stand,tag=Navi6] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi6] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi6] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi6] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
