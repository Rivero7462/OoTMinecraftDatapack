scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3118 108.75 1982

execute at @s if entity @s[scores={timer=2..12}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=13..63}] run tp @s ~ ~ ~-.3

execute at @s if entity @s[scores={timer=83..133}] run tp @s ~ ~ ~.3
execute at @s if entity @s[scores={timer=134..144}] run tp @s ~-.3 ~ ~

execute at @s if entity @s[scores={timer=164..}] run scoreboard players set @s timer 0
