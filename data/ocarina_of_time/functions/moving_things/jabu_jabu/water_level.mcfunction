execute unless entity @s[scores={GameTimer=1..}] run fill 1661 18 1323 1661 17 1323 minecraft:air
scoreboard players add @s GameTimer 1

execute if entity @s[scores={GameTimer=20}] run fill 1656 18 1314 1666 18 1332 minecraft:water replace minecraft:air
execute if entity @s[scores={GameTimer=20}] run fill 1660 18 1314 1662 18 1314 minecraft:water

execute if entity @s[scores={GameTimer=40}] run fill 1656 19 1314 1666 19 1332 minecraft:water replace minecraft:air
execute if entity @s[scores={GameTimer=40}] run fill 1660 18 1314 1662 18 1314 minecraft:water

execute if entity @s[scores={GameTimer=140}] run fill 1656 19 1314 1666 19 1332 minecraft:air replace minecraft:water
execute if entity @s[scores={GameTimer=140}] run fill 1660 19 1314 1662 19 1314 minecraft:vine[north=true]

execute if entity @s[scores={GameTimer=180}] run fill 1656 18 1314 1666 18 1332 minecraft:air replace minecraft:water
execute if entity @s[scores={GameTimer=180}] run fill 1660 18 1314 1662 18 1314 minecraft:vine[north=true]

execute if entity @s[scores={GameTimer=181}] run fill 1661 17 1323 1661 17 1323 minecraft:gold_block
execute if entity @s[scores={GameTimer=181}] run fill 1661 18 1323 1661 18 1323 minecraft:light_weighted_pressure_plate
execute if entity @s[scores={GameTimer=181..}] run tag @s remove JabuWater
execute if entity @s[scores={GameTimer=181..}] run scoreboard players set @s GameTimer 0
