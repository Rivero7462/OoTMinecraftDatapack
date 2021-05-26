execute unless entity @a[scores={click=0..}] run fill 1482 67 2326 1482 67 2326 minecraft:gold_block
execute unless entity @a[scores={click=0..}] run fill 1484 70 2332 1484 70 2332 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1483 70 2333 1483 70 2333 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1484 70 2334 1484 70 2334 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1485 70 2333 1485 70 2333 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1484 69 2333 197 -25
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"selector":"@p"},{"text":"! This way! Hoo hoo!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"I wonder what "},{"text":"Saria ","color":"red"},{"text":"is doing now? How about going back to the forest sometime?"}]
execute if entity @a[scores={click=3}] run kill @e[type=armor_stand,tag=OwlStand6]
execute if entity @a[scores={click=3}] run summon minecraft:armor_stand 1486 73 2326 {Tags:["OwlFly"],Rotation:[95f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=4..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..40}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.5 ~.5 ~-.1
execute if entity @s[scores={timer=41..100}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~-.5 ~ ~-.1

execute if entity @s[scores={timer=101..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=101..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={timer=101..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={timer=101..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={timer=101..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=101..}] run fill 1483 70 2334 1485 70 2332 minecraft:air
execute if entity @s[scores={timer=101..}] run tag @a remove ExtraOwl
execute if entity @s[scores={timer=101..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=101..}] run scoreboard players set @s timer 0
