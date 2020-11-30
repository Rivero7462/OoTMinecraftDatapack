scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3129.0 108.75 1970.0
execute at @s if entity @s[scores={timer=2..74}] run tp @s ~ ~ ~-.3

execute at @s if entity @s[scores={timer=94..166}] run tp @s ~ ~ ~.3
execute at @s if entity @s[scores={timer=186..}] run scoreboard players set @s timer 0
