tag @e[type=zombie,tag=Biri] add Stun

execute unless entity @a[scores={click=0..}] run fill 1695 23 1300 1695 23 1300 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1696 23 1299 1696 23 1299 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1695 23 1298 1695 23 1298 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1694 23 1299 1694 23 1299 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1695 22 1299 -65 ~
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Are you still hanging around here? I told you to go away!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I'm OK. I've been going inside Lord Jabu-Jabu's belly since I was little, but..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Lord Jabu-Jabu is very strange today..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"There are electrified jellyfish and strange holes around..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"On top of that, my precious stone was... But...that's none of your business! Anyway..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You! Go home now! Understand?!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=12..}] run scoreboard players set @s text 1
execute if entity @a[scores={click=12..}] run fill 1696 23 1300 1694 23 1298 minecraft:air

execute if entity @a[scores={click=12..}] run tag @a remove MeetRuto2
execute if entity @a[scores={click=12..}] run scoreboard objectives remove click