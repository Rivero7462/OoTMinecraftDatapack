execute unless entity @a[scores={click=0..}] run fill -559 76 -685 -559 76 -685 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -560 76 -686 -560 76 -686 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -559 76 -687 -559 76 -687 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -558 76 -686 -558 76 -686 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @s add stoptext
execute unless entity @a[scores={click=0..}] run tp @a -559 75 -686
execute unless entity @a[scores={click=0..}] run tag @s add stoptext
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"That melody?!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"Saria plays that song all the time! You... Do you know Saria?"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"That song..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"Saria taught that song only to her friends..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"OK... I trust you."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Mido: ","color":"gold"},{"text":"When I see you... I don't know why, but I remember...him..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tp @s -559 75 -688 -90 ~
execute if entity @s[scores={timer=2..22}] run tp @s ~.2 ~ ~
execute if entity @s[scores={timer=23}] run fill -555 72 -688 -555 72 -688 minecraft:gold_block
execute if entity @s[scores={timer=23}] run tp @s -555 75 -688 0 ~

execute if entity @s[scores={timer=24..}] run fill -560 76 -687 -558 76 -685 minecraft:air

execute if entity @s[scores={timer=24..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=24..}] run tag @a remove MidoSaria
execute if entity @s[scores={timer=24..}] run scoreboard objectives remove click
execute if entity @s[scores={timer=24..}] run scoreboard players set @s timer 0
