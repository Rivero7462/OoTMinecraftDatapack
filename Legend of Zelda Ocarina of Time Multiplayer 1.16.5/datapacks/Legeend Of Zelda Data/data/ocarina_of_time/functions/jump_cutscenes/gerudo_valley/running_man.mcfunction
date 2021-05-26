execute unless entity @a[scores={click=0..}] run tp @a 328 64 2023
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tag @s add stoptext
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run fill 328 65 2022 328 65 2022 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 329 65 2023 329 65 2023 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 328 65 2024 328 65 2024 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 327 65 2023 327 65 2023 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" Excellent! Then..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" You go first. I'll give you a head start."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" Now! Go ahead."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6

execute if entity @a[scores={click=6}] run fill 329 65 2022 327 65 2024 minecraft:air

execute if entity @a[scores={click=6}] run tag @a remove NoOcarina
execute if entity @a[scores={click=6}] as @a run forceload add 328 2020 328 2020
execute if entity @a[scores={click=6}] run scoreboard players set @s text 4
execute if entity @a[scores={click=6}] run tag @a add TimedRace
execute if entity @a[scores={click=6}] run tag @a add TimedRace4
execute if entity @a[scores={click=6}] run tag @a remove RaceRunningMan
execute if entity @a[scores={click=6}] run scoreboard objectives remove click
