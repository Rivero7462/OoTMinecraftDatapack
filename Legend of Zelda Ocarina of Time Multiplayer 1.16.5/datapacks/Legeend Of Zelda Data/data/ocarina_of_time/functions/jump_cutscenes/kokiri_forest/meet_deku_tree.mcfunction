execute unless entity @a[scores={click=0..}] run fill -511 66 -642 -511 66 -642 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -512 66 -643 -512 66 -643 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -513 66 -642 -513 66 -642 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -512 66 -641 -512 66 -641 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a -512 65 -642
execute unless entity @a[scores={click=0..}] run tag @a add NoNavi
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run summon minecraft:armor_stand -507 67 -646 {Tags:["Navi2"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[-80f],CustomName:"\"Navi\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @a[scores={click=1}] run function ocarina_of_time:music/deku_tree
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Great Deku Tree...I'm back!","color":"aqua"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Oh... Navi... Thou hast returned..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"... Welcome..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Listen carefully to what I, the "},{"text":"Deku Tree","color":"red"},{"text":", am about to tell thee..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Thy slumber these past moons must have been restless and full of nightmares..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" As the servants of evil gain strength, a vile climate pervades the land and causes nightmares to those sensitive to it..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Verily, thou hast felt it..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"... The time has come to test thy courage..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" I have been "},{"text":"cursed","color":"red"},{"text":"... I need thee to break the curse with thy wisdom and courage."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Enter, brave "},{"selector":"@p"},{"text":", and thou too, Navi..."}]
execute if entity @a[scores={click=19}] run tag @a add OpenMouth
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20

execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Navi the fairy... Thou must aid "},{"selector":"@p"},{"text":"..."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" And, "},{"selector":"@p"},{"text":"... When "},{"text":"Navi ","color":"aqua"},{"text":"speaks, listen well to her words of wisdom..."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Deku Tree:","color":"gold"},{"text":" Crouch ","color":"red"},{"text":"while thee is moving around, then "},{"text":"right-click","color":"red"},{"text":" Navi ","color":"aqua"},{"text":"to see what she has to say..."}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26

execute if entity @a[tag=OpenMouth] run scoreboard players add @a timer 1
execute if entity @a[scores={timer=18..26}] run fill -486 70 -644 -485 70 -640 minecraft:air
execute if entity @a[scores={timer=27..35}] run fill -486 69 -645 -484 69 -639 minecraft:air
execute if entity @a[scores={timer=36..44}] run fill -486 68 -645 -484 68 -639 minecraft:air
execute if entity @a[scores={timer=45..53}] run fill -486 67 -645 -484 67 -639 minecraft:air
execute if entity @a[scores={timer=54..62}] run fill -486 66 -645 -484 66 -639 minecraft:air
execute if entity @a[scores={timer=63..71}] run fill -486 65 -645 -484 65 -639 minecraft:air
execute if entity @a[scores={timer=72..80}] run fill -486 64 -645 -484 64 -639 minecraft:air
execute if entity @a[scores={timer=81..89}] run fill -486 63 -645 -484 63 -639 minecraft:air
execute if entity @a[scores={timer=90..98}] run fill -486 62 -645 -484 62 -639 minecraft:air
execute if entity @a[scores={timer=99..107}] run fill -486 61 -645 -484 61 -639 minecraft:air

execute if entity @a[scores={timer=107..}] run tag @a remove NoNavi
execute if entity @a[scores={timer=107..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=2..}] run scoreboard players set @s lifetime 2
execute if entity @a[scores={timer=107..}] run function ocarina_of_time:music/kokiri_forest
execute if entity @a[scores={timer=107..}] run kill @e[type=armor_stand,tag=Navi2]
execute if entity @a[scores={timer=107..}] run fill -511 66 -643 -513 66 -641 minecraft:air
execute if entity @a[scores={timer=107..}] run scoreboard objectives remove click
execute if entity @a[scores={timer=107..}] run tag @a remove OpenMouth

execute if entity @a[scores={timer=107..}] run tag @a remove MeetDekuTree
execute if entity @a[scores={timer=107..}] run scoreboard players set @a timer 0

kill @e[type=wither_skeleton,tag=DekuBabaBody]

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi1] timer 1
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 67 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi1] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
