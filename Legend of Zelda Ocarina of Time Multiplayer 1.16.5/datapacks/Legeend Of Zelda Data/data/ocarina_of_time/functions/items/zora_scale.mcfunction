scoreboard objectives add SwimTime dummy
scoreboard players add @s SwimTime 1
scoreboard objectives add Swimming minecraft.custom:minecraft.swim_one_cm

execute unless entity @a[gamemode=creative] unless entity @a[gamemode=spectator] if entity @s[scores={SwimTime=1..}] if block ~ ~ ~ #ocarina_of_time:zora_scale if block ~ ~1 ~ #ocarina_of_time:zora_scale if block ~ ~2 ~ #ocarina_of_time:zora_scale run tp @s ~ ~.3 ~
execute unless entity @a[gamemode=creative] unless entity @a[gamemode=spectator] if entity @s[scores={Swimming=20..}] if block ~ ~ ~ #ocarina_of_time:zora_scale if block ~ ~1 ~ #ocarina_of_time:zora_scale if block ~ ~2 ~ #ocarina_of_time:zora_scale run tp @s ~ ~.7 ~
execute unless entity @a[gamemode=creative] unless entity @a[gamemode=spectator] if entity @s[scores={SwimTime=1..}] if block ~ ~2.5 ~ minecraft:ladder run tp @s ~ ~.3 ~
execute unless entity @a[gamemode=creative] unless entity @a[gamemode=spectator] if entity @s[scores={Swimming=20..}] if block ~ ~3 ~ minecraft:ladder run tp @s ~ ~.7 ~

execute if block ~ ~1 ~ minecraft:air run tag @s remove SwimUp
execute if block ~ ~1 ~ minecraft:air run scoreboard players reset @s SwimTime
execute if block ~ ~1 ~ minecraft:air run scoreboard players reset @s Swimming

execute if block ~ ~1 ~ minecraft:ladder[waterlogged=false] run tag @s remove SwimUp
execute if block ~ ~1 ~ minecraft:ladder[waterlogged=false] run scoreboard players reset @s SwimTime
execute if block ~ ~1 ~ minecraft:ladder[waterlogged=false] run scoreboard players reset @s Swimming
