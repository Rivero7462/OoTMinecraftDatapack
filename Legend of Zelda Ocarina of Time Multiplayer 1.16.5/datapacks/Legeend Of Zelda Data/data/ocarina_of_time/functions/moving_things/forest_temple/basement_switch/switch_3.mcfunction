scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run gamemode spectator @a
execute if entity @s[scores={timer=1..30}] run tp @a 898 22 -1173 0 0
execute if entity @s[scores={timer=20}] run fill 899 22 -1169 897 24 -1169 minecraft:air
execute if entity @s[scores={timer=31}] run tp @a 898 22 -1138 180 0
execute if entity @s[scores={timer=31}] run gamemode adventure @a
execute if entity @s[scores={timer=31}] run fill 898 22 -1138 898 22 -1138 minecraft:air
execute if entity @s[scores={timer=31}] run fill 898 21 -1138 898 21 -1138 minecraft:gold_block
execute if entity @s[scores={timer=31}] run tag @s remove Switch3
execute if entity @s[scores={timer=31}] run scoreboard players set @s timer 0
