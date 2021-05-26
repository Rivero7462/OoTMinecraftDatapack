execute unless entity @a[scores={click=0..}] run tp @p -572 51 -597 180 ~
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/inside_house
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @p ["",{"text":"Navi: ","color":"gold"},{"text":"Hello, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! Wake up!","color":"aqua"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @p ["",{"text":"Navi: ","color":"gold"},{"text":"The ","color":"aqua"},{"text":"Great Deku Tree "},{"text":"wants to talk to you! ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":", get up!","color":"aqua"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @p ["",{"text":"Navi: ","color":"gold"},{"text":"I'm Navi the fairy! The Great Deku Tree asked me to be your ","color":"aqua"},{"text":"partner"},{"text":" from now on!","color":"aqua"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @p ["",{"text":"Navi: ","color":"gold"},{"text":"The ","color":"aqua"},{"text":"Great Deku Tree"},{"text":" has summoned you! So let's get going... right now!","color":"aqua"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8

execute if entity @a[scores={click=8..}] run fill -490 71 -643 -488 73 -641 minecraft:air
execute if entity @a[scores={click=8..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=1..}] run scoreboard players set @s lifetime 1
execute if entity @a[scores={click=8..}] run tag @a remove NoNavi
execute if entity @a[scores={click=8..}] run kill @s
execute if entity @a[scores={click=8..}] run fill -571 52 -598 -573 52 -596 minecraft:air replace minecraft:barrier
execute if entity @a[scores={click=8..}] run data merge entity @e[type=armor_stand,tag=Mido,limit=1] {Rotation:[90f]}
execute if entity @a[scores={click=8..}] run tag @a add MeetMido
execute if entity @a[scores={click=8..}] run tag @a add NoSwordShield

execute if entity @a[scores={click=8..}] run tag @a remove MeetNavi
execute if entity @a[scores={click=8..}] run scoreboard objectives remove click

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi1] timer 1
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 52 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi1] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi1] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
