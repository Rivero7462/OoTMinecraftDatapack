scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3125.0 108.75 1964.0

execute at @s if entity @s[scores={timer=2..35}] run tp @s ~ ~ ~-.3
execute at @s if entity @s[scores={timer=36..95}] run tp @s ~-.15 ~ ~-.15

execute at @s if entity @s[scores={timer=115..175}] run tp @s ~.15 ~ ~.15
execute at @s if entity @s[scores={timer=176..209}] run tp @s ~ ~ ~.3

execute at @s if entity @s[scores={timer=229..}] run scoreboard players set @s timer 0
