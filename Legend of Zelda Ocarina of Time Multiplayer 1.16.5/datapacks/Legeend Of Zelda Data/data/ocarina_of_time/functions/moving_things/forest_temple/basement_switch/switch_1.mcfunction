scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run gamemode spectator @a
execute if entity @s[scores={timer=1..30}] run tp @a 917 22 -1155 90 0
execute if entity @s[scores={timer=20}] run fill 912 22 -1154 912 24 -1156 minecraft:air
execute if entity @s[scores={timer=31}] run tp @a 885 22 -1168 -45 0
execute if entity @s[scores={timer=31}] run gamemode adventure @a
execute if entity @s[scores={timer=31}] run fill 885 22 -1168 885 22 -1168 minecraft:air
execute if entity @s[scores={timer=31}] run fill 885 21 -1168 885 21 -1168 minecraft:gold_block
execute if entity @s[scores={timer=31}] run tag @s remove Switch1
execute if entity @s[scores={timer=31}] run scoreboard players set @s timer 0
