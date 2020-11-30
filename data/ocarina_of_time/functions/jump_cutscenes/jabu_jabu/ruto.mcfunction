tag @e[type=zombie,tag=Biri] add Stun

execute unless entity @a[scores={click=0..}] run fill 1685 53 1294 1685 53 1294 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1684 53 1295 1684 53 1295 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1683 53 1294 1683 53 1294 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1684 53 1293 1684 53 1293 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @s 1687 52 1296 120 46
execute unless entity @a[scores={click=0..}] run tp @a 1684 52 1294 300 ~
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You! Who are you?!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I am "},{"text":"Ruto","color":"red"},{"text":", Princess of the Zoras."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"What?! Are you saying my father asked you to come here to save me?"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I'd never ask anyone to do such a thing!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"\"Letter in a bottle\"? I have no idea what you're talking about!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"My father is worried about me?"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I don't care!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Anyway, I can't go home right now. And you... Get out of here! Understand?!"}]
execute if entity @a[scores={click=15}] run tag @s add Walk
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16

execute if entity @s[tag=Walk] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=15}] run data merge entity @s {Rotation:[-65f]}
execute if entity @s[scores={timer=20..60}] at @s run tp @s ~.2 ~ ~.1
execute if entity @s[scores={timer=61}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Ooooh noooooo!"}]

execute if entity @s[scores={timer=75..}] run tp @s 1697 22 1300 120 ~
execute if entity @s[scores={timer=82..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=82..}] run tag @s remove Walk
execute if entity @s[scores={timer=82..}] run data merge entity @s {NoGravity:1b}
execute if entity @s[scores={timer=82..}] run fill 1685 53 1295 1683 53 1293 minecraft:air
execute if entity @s[scores={timer=82..}] run tag @a add MeetRuto2
execute if entity @s[scores={timer=82..}] run tag @a remove MeetRuto
execute if entity @s[scores={timer=82..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=82..}] run scoreboard players set @s timer 0
