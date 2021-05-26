scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3036 108.75 1950.0

execute at @s if entity @s[scores={timer=2..55}] run tp @s ~.18 ~ ~-.2
execute at @s if entity @s[scores={timer=75..128}] run tp @s ~-.18 ~ ~.2

execute at @s if entity @s[scores={timer=148..}] run scoreboard players set @s timer 0
