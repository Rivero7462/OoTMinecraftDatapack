execute unless entity @a[scores={click=0..}] run stopsound @a
execute unless entity @a[scores={click=0..}] run fill 1399 76 499 1399 76 499 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1398 76 498 1398 76 498 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1399 76 497 1399 76 497 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1400 76 498 1400 76 498 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 1399 75 498
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"selector":"@p"},{"text":"...can you hear me? It's Rauru, the Sage."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"We six will gather our power to create a bridge to the castle where Ganondorf dwells..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The castle's keep, which is known as Ganon's Tower, is protected by "},{"text":"six evil barriers","color":"red"},{"text":"."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Bring down the six barriers, and save Princess Zelda!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=8..}] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..100}] run particle minecraft:entity_effect 1396 77 492 1 2 2 1 20
execute if entity @s[scores={timer=79}] at @a anchored eyes positioned ^ ^ ^1 run particle minecraft:flash ^ ^ ^ 0 0 0 1 2 normal
execute if entity @s[scores={timer=80}] run clone 1388 53 510 1397 63 524 1391 74 484
execute if entity @s[scores={timer=100..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=100..}] run fill 1398 76 497 1400 76 499 minecraft:air replace minecraft:barrier
execute if entity @s[scores={timer=100..}] run tag @a remove SageBridge
execute if entity @s[scores={timer=100..}] run tag @a remove SageBridge2
execute if entity @s[scores={timer=100..}] run scoreboard objectives remove click
