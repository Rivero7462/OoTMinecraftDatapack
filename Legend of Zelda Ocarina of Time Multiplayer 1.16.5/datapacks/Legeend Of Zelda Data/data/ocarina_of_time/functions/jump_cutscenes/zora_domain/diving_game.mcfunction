execute unless entity @a[scores={click=0..}] run fill 1756 55 2305 1756 55 2305 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1755 55 2306 1755 55 2306 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1754 55 2305 1754 55 2305 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1755 55 2304 1755 55 2304 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1759 53 2303 1759 53 2303 minecraft:gold_block
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tp @a 1755 54 2305 -65 0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"OK!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"Pick up all the Rupees I throw from here. You have only a limited amount of time!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Zora: ","color":"gold"},{"text":"When you pick them all up, come back here! I'll give you something very nice!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6

execute if entity @a[scores={click=7}] run tag @a remove NoOcarina
execute if entity @a[scores={click=7}] run fill 1756 55 2306 1754 55 2304 minecraft:air
execute if entity @a[scores={click=7}] run tag @a remove DivingTutorial
execute if entity @a[scores={click=7}] run scoreboard objectives remove click
