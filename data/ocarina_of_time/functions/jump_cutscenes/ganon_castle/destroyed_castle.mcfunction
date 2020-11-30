#Start
execute unless entity @s[scores={timer=0..}] run tag @a remove DestroyedGanonCastle
execute unless entity @s[scores={timer=0..}] run summon minecraft:armor_stand -567 54 276 {Tags:["Navi5"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[180f],ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute unless entity @s[scores={timer=0..}] run scoreboard players set @e[type=armor_stand,tag=PrincessZelda5] text 0
execute unless entity @s[scores={timer=0..}] run time set midnight

execute unless entity @s[scores={timer=0..}] run fill -569 53 277 -569 53 277 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -568 53 276 -568 53 276 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -567 53 277 -567 53 277 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run fill -568 53 278 -568 53 278 minecraft:barrier
execute unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 0

execute if entity @s[scores={timer=0..}] unless entity @a[scores={click=0..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=40}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={timer=40}] run scoreboard players set @a click 0
execute if entity @s[scores={timer=40}] run scoreboard players add @s timer 1

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"It's over... It's finally over..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tp @a -568 52 277 -138 -25
execute if entity @a[scores={click=3}] run tp @s ~ ~ ~ 20 0
execute if entity @a[scores={click=3}] run data merge entity @s {Pose:{Head:[-20f,0f,0f]}}
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"selector":"@p","color":"aqua"},{"text":"... I'm sorry I couldn't help you in the battle before!","color":"aqua"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=4}] run scoreboard objectives remove click
execute if entity @a[scores={click=4}] run scoreboard players set @a click 6

execute if entity @s[scores={timer=120}] run playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ .3 .5
execute if entity @s[scores={timer=130}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={timer=130}] run tp @s ~ ~ ~ 90 0
execute if entity @s[scores={timer=130}] run tp @a -568 52 277 90 0

execute if entity @s[scores={timer=170..}] run kill @e[type=armor_stand,tag=Navi5]
execute if entity @s[scores={timer=170..}] run scoreboard players set @s text 1
execute if entity @s[scores={timer=170..}] run fill -569 53 278 -567 53 276 minecraft:air
execute if entity @s[scores={timer=170..}] run tag @a add StartGanon
execute if entity @s[scores={timer=170..}] run tag @a remove DestroyedGanonCastle2
execute if entity @s[scores={timer=170..}] run scoreboard players reset @s timer

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi5] timer 1
execute as @e[type=armor_stand,tag=Navi5] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 54 ~
execute as @e[type=armor_stand,tag=Navi5] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi5] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi5] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi5] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
