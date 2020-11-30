tag @a remove TimerRoom1
tag @a add HideDisplayScore
scoreboard players set @a MiniGameTime 0
execute unless block 1762 52 1275 minecraft:chest run fill 1762 46 1273 1762 46 1273 minecraft:air
execute as @e[type=zombie,tag=SpecialShabom] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=SpecialShabom]
fill 1751 52 1277 1751 56 1273 minecraft:air replace minecraft:vine
tp @a 1680 59 1294
