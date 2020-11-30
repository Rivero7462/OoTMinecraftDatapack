effect give @s minecraft:regeneration 3 255 true
scoreboard players add @s HeartPiece 1
execute if entity @s[scores={HeartPiece=4..}] run scoreboard players add @s Hearts 1
execute if entity @s[scores={HeartPiece=4..}] run scoreboard players set @s HeartPiece 0
clear @s minecraft:golden_carrot
