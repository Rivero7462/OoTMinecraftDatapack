scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3033.0 108.75 1946

execute at @s if entity @s[scores={timer=2..51}] run tp @s ~.18 ~ ~-.2
execute at @s if entity @s[scores={timer=71..120}] run tp @s ~-.18 ~ ~.2

execute at @s if entity @s[scores={timer=140..}] run scoreboard players set @s timer 0
