execute unless entity @a[scores={click=0..}] run fill 398 78 387 398 78 387 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 399 78 386 399 78 386 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 398 78 385 398 78 385 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 397 78 386 397 78 386 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 398 77 386 15 -45
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/owl_theme
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Hey, what's up, "},{"selector":"@p"},{"text":"? Surprised to see me?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"A long time in this world is almost nothing to you, is it? How mysterious!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Even I thought that the tales of a boy who could travel back and forth through time were merely legends."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"selector":"@p"},{"text":", you have fully matured as an adult."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"From now on, the future of all the people in Hyrule is on your shoulders."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Maybe it's not my time anymore. Here is my last advice."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"Two witches inhabit this temple. In order to destroy them, "},{"text":"turn their own magic power against them","color":"red"},{"text":". Hoo hoot!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Kaepora Gaebora: ","color":"gold"},{"text":"I will continue to watch you... Hoo hoo hoo hoot!"}]
execute if entity @a[scores={click=15}] run kill @e[type=armor_stand,tag=OwlStand12]
execute if entity @a[scores={click=15}] run summon minecraft:armor_stand 397 81 390 {Tags:["OwlFly"],Rotation:[-50f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=16..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..20}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.4 ~.1 ~.42
execute if entity @s[scores={timer=21..100}] as @e[type=armor_stand,tag=OwlFly] at @s run tp ~.4 ~ ~.42

execute if entity @s[scores={timer=101..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=81..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=0..13000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={timer=81..}] unless entity @a[scores={time=13001..23000}] if entity @a[scores={time=23001..24000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={timer=81..}] if entity @a[scores={time=13001..23000}] run stopsound @a music
execute if entity @s[scores={timer=101..}] run kill @e[type=armor_stand,tag=OwlFly]
execute if entity @s[scores={timer=101..}] run fill 395 79 383 395 79 383 minecraft:gold_block
execute if entity @s[scores={timer=101..}] run fill 399 78 385 397 78 387 minecraft:air
execute if entity @s[scores={timer=101..}] run tag @a remove OwlSpiritTemple
execute if entity @s[scores={timer=101..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=101..}] run scoreboard players set @s timer 0
