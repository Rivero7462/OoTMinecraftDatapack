execute unless entity @a[scores={click=0..}] run fill -576 76 -683 -576 76 -683 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -576 76 -685 -576 76 -685 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -575 76 -684 -575 76 -684 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -577 76 -684 -577 76 -684 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a -576 75 -684 -90 -50
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hey, over here! Hoo hoo!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"selector":"@p"},{"text":"... Good to see you again! Listen to this! Hoot hoot..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"After going through the Lost Woods, you will come upon the "},{"text":"Sacred Forest Meadow","color":"green"},{"text":"."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"That is a sacred place where few people have ever walked."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Shhhh... What's that? I can hear a mysterious tune..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"You should listen for that tune too... Hoo hoo ho!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"If you are courageous, you will make it through the forest just fine..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Just follow your ears, and listen to the sounds coming from the forest! Hoot hoot!"}]
execute if entity @a[scores={click=15}] run kill @e[type=armor_stand,tag=OwlStand7]
execute if entity @a[scores={click=15}] run summon minecraft:armor_stand -571 81 -684 {Tags:["OwlFly"],Rotation:[-5f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=16..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..10}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.05 ~.05 ~.5
execute if entity @s[scores={timer=11..41}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.05 ~ ~.5

execute if entity @s[scores={timer=41..}] run fill -577 76 -683 -575 76 -685 minecraft:air
execute if entity @s[scores={timer=41..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=41..}] run tag @a add LearnSariaOcarina

execute if entity @s[scores={timer=41..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=41..}] run function ocarina_of_time:music/lost_woods
execute if entity @s[scores={timer=41..}] run tag @a remove LostWoodsOwl
execute if entity @s[scores={timer=41..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=41..}] run scoreboard players set @s timer 0
