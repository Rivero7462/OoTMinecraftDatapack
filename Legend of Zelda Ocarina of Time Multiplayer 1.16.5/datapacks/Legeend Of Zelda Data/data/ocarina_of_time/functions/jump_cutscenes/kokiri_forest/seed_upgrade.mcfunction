execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run fill -572 76 -669 -572 76 -669 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -573 76 -670 -573 76 -670 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -574 76 -669 -574 76 -669 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -573 76 -668 -573 76 -668 minecraft:barrier
execute if entity @s[scores={timer=1}] run tp @a -573 75 -669 -90 ~
execute if entity @s[scores={timer=1}] run tp @s ~ ~1 ~
execute if entity @s[scores={timer=2}] run tp @s ~ ~ ~.1
execute if entity @s[scores={timer=3}] run tp @s ~ ~1 ~
execute if entity @s[scores={timer=4..32}] run tp @s ~ ~ ~.1
execute if entity @s[scores={timer=33}] run tp @s ~ ~ ~ 90 ~
execute if entity @s[scores={timer=33}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={timer=33}] run scoreboard players set @a click 0
execute if entity @s[scores={timer=33}] run scoreboard players set @s timer 34

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Deku Scrub: ","color":"gold"},{"text":"Cool! You're great! You scored three perfect bull's-eyes!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Deku Scrub: ","color":"gold"},{"text":"I have to give a neat present to such a wonderful person! Please take it!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4

execute if entity @a[scores={click=5}] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=SlingshotUpgrade1] run tag @s add SlingshotUpgrade2
execute if entity @a[scores={click=5}] if entity @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade2] run advancement grant @a only minecraft:_upgrades/slingshot_upgrade_2
execute if entity @a[scores={click=5}] if entity @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade2] run tellraw @a ["",{"text":"You got the "},{"text":"Biggest Deku Seed Bullet Bag","color":"red"},{"text":"! This bag can hold up to "},{"text":"50 ","color":"yellow"},{"text":"slingshot bullets."}]
execute if entity @a[scores={click=5}] if entity @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade2] run scoreboard players set @a DekuSeeds2 50
execute if entity @a[scores={click=5}] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=SlingshotUpgrade1] run tag @s add SlingshotUpgrade1
execute if entity @a[scores={click=5}] as @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade1] unless entity @s[tag=SlingshotUpgrade2] run advancement grant @a only minecraft:_upgrades/slingshot_upgrade_1
execute if entity @a[scores={click=5}] as @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade1] unless entity @s[tag=SlingshotUpgrade2] run tellraw @a ["",{"text":"You got a "},{"text":"Big Deku Seed Bullet Bag","color":"aqua"},{"text":"! This bag can hold up to "},{"text":"40 ","color":"yellow"},{"text":"slingshot bullets."}]
execute if entity @a[scores={click=5}] as @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade1] unless entity @s[tag=SlingshotUpgrade2] run scoreboard players set @a DekuSeeds2 40
execute if entity @a[scores={click=5}] run scoreboard objectives remove click

execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=34..57}] run tp @s ~ ~ ~-.1 180 ~
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=58}] run tp @s ~ ~-1 ~
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=59..65}] run tp @s ~ ~ ~-.1

execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=66}] run tag @a remove NoOcarina
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=66}] run tp @s -560 76 -672 0 0
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=66}] run fill -574 76 -668 -572 76 -670 minecraft:air
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=66}] run scoreboard players set @s text 4
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=66}] run fill -558 75 -669 -558 75 -669 minecraft:gold_block
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=66}] run tag @a remove SeedUpgrade
execute unless entity @a[scores={click=0..}] if entity @s[scores={timer=66}] run scoreboard players set @s timer 0
