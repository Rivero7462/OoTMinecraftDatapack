scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run gamemode spectator @a
execute if entity @s[scores={timer=1..30}] run tp @a 898 22 -1136 180 0
execute if entity @s[scores={timer=20}] run fill 897 22 -1141 899 24 -1141 minecraft:air
execute if entity @s[scores={timer=31}] run tp @a 915 22 -1155 90 0
execute if entity @s[scores={timer=31}] run gamemode adventure @a
execute if entity @s[scores={timer=31}] run fill 915 22 -1155 915 22 -1155 minecraft:air
execute if entity @s[scores={timer=31}] run fill 915 21 -1155 915 21 -1155 minecraft:gold_block
execute if entity @s[scores={timer=31}] run tag @s remove Switch2
execute if entity @s[scores={timer=31}] run scoreboard players set @s timer 0
