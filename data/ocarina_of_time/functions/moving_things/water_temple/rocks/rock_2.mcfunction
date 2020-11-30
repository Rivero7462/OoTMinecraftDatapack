scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 1046 37.8 3092.0
execute at @s if entity @s[scores={timer=2..41}] run tp @s ~.2 ~ ~
execute at @s if entity @s[scores={timer=42..60}] run tp @s ~ ~-.3 ~
execute at @s if entity @s[scores={timer=61..139}] run tp @s ~.2 ~ ~


execute at @s if entity @s[scores={timer=140..160}] run tp @s ~ ~-.3 ~
execute at @s if entity @s[scores={timer=161}] run tp @s 1046 27 3092.0

execute at @s if entity @s[scores={timer=163..}] run scoreboard players set @s timer 0
