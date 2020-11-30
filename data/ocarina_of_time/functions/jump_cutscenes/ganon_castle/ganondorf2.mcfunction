tp @e[type=zombie,tag=Ganondorf] @e[type=armor_stand,tag=GanondorfBoss,limit=1]

execute unless entity @a[scores={click=0..}] run stopsound @a
execute unless entity @a[scores={click=0..}] at @e[type=armor_stand,tag=GanondorfBoss] run summon minecraft:zombie ~ ~ ~ {Tags:["Ganondorf","Boss","Resist"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:117}}],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Health:103,Attributes:[{Name:"generic.max_health",Base:103}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run tag @a add NoHookshot
execute unless entity @a[scores={click=0..}] run fill -498 92 1616 -499 92 1616 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -500 92 1617 -500 92 1617 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -499 92 1618 -498 92 1618 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -497 92 1617 -497 92 1617 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @a add NoNavi
execute unless entity @a[scores={click=0..}] run summon minecraft:armor_stand -497 93 1616 {Tags:["Navi4"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[180f],ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute unless entity @a[scores={click=0..}] run tp @a -498.0 91.0625 1617
execute unless entity @a[scores={click=0..}] run effect give @a minecraft:regeneration 3 255 true
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] as @e[type=armor_stand,tag=GanondorfBoss] at @s run tp @s -498.0 92 1607 0 ~
execute if entity @a[scores={click=1}] as @e[type=armor_stand,tag=GanondorfBoss] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"These toys are too much for you!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] at @a run playsound minecraft:entity.illusioner.prepare_blindness ambient @a ~ ~ ~ 1 1
execute if entity @a[scores={click=3}] as @e[type=armor_stand,tag=GanondorfBoss] at @s run particle minecraft:flash ^ ^1.5 ^1 0 0 0 0 1
execute if entity @a[scores={click=3}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[-150f,50f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"I command you to return them to me!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5..7}] run particle minecraft:witch -498.0 92 1615 1 1 4 1 15
execute if entity @a[scores={click=5}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 1 1.4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"selector":"@p","color":"aqua"},{"text":"! I can't help you! Because of the waves of darkness, I can't get close!","color":"aqua"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"I'm sorry, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"!","color":"aqua"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=8..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=40..}] as @e[type=armor_stand,tag=GanondorfBoss] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @s[scores={timer=40..}] run fill -487 73 1615 -487 73 1616 minecraft:air
execute if entity @s[scores={timer=40..}] run function ocarina_of_time:music/ganondorf_boss
execute if entity @s[scores={timer=40..}] run function ocarina_of_time:teleports/ganon_tower/loot_reset
execute if entity @s[scores={timer=40..}] run kill @e[type=armor_stand,tag=Navi4]
execute if entity @s[scores={timer=40..}] run tp @s -498.0 97 1598
execute if entity @s[scores={timer=40..}] run tp @e[type=armor_stand,tag=Crystal] -498.0 97 1598
execute if entity @s[scores={timer=40..}] run fill -490 91 1624 -507 102 1604 minecraft:air
execute if entity @s[scores={timer=40..}] run fill -496 103 1608 -501 103 1606 minecraft:air
execute if entity @s[scores={timer=40..}] run fill -508 92 1604 -489 102 1604 minecraft:structure_void
execute if entity @s[scores={timer=40..}] run tag @a add Boss
execute if entity @s[scores={timer=40..}] run tag @a remove NoHookshot
execute if entity @s[scores={timer=40..}] run tag @a remove FinalGanondorf2
execute if entity @s[scores={timer=40..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=40..}] run scoreboard players reset @s timer

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi4] timer 1
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 93 ~
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi4] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
