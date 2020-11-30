scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3112 108.75 1938.0

execute at @s if entity @s[scores={timer=2..66}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=67..111}] run tp @s ~ ~ ~.3
execute at @s if entity @s[scores={timer=112..133}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=134..154}] run tp @s ~ ~ ~-.3

execute at @s if entity @s[scores={timer=174..194}] run tp @s ~ ~ ~.3
execute at @s if entity @s[scores={timer=195..216}] run tp @s ~-.3 ~ ~
execute at @s if entity @s[scores={timer=217..261}] run tp @s ~ ~ ~-.3
execute at @s if entity @s[scores={timer=262..325}] run tp @s ~-.3 ~ ~


execute at @s if entity @s[scores={timer=345..}] run scoreboard players set @s timer 0
