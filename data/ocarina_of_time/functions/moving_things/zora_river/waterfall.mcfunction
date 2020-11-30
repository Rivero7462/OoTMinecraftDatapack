scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run fill 1609 81 2284 1609 98 2288 minecraft:air
execute if entity @s[scores={timer=1}] run fill 1610 81 2284 1610 98 2284 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1610 80 2284 1610 80 2288 minecraft:water
execute if entity @s[scores={timer=1}] run fill 1610 98 2285 1610 81 2287 minecraft:air
execute if entity @s[scores={timer=1}] run fill 1610 81 2288 1610 98 2288 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1611 89 2285 1611 91 2287 minecraft:air
execute if entity @s[scores={timer=1}] run fill 1610 98 2285 1610 98 2287 minecraft:barrier
execute if entity @s[scores={timer=1}] run tp @a 1606 89 2286 -90 -23

execute if entity @s[scores={timer=400..}] run fill 1610 80 2284 1610 80 2288 minecraft:barrier
execute if entity @s[scores={timer=400..}] run fill 1611 89 2285 1611 91 2287 minecraft:barrier
execute if entity @s[scores={timer=400..}] run fill 1609 81 2284 1609 98 2288 minecraft:barrier
execute if entity @s[scores={timer=400..}] run fill 1610 80 2284 1610 80 2288 minecraft:barrier
execute if entity @s[scores={timer=400..}] run fill 1610 98 2284 1610 80 2288 minecraft:air

execute if entity @s[scores={timer=400..}] run tag @s remove Open
execute if entity @s[scores={timer=400..}] run scoreboard players set @s timer 0