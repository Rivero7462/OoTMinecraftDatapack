scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3123.0 108.75 1935.0

execute at @s if entity @s[scores={timer=2..12}] run tp @s ~ ~ ~-.3
execute at @s if entity @s[scores={timer=13..36}] run tp @s ~-.3 ~ ~
execute at @s if entity @s[scores={timer=37..47}] run tp @s ~ ~ ~.3

execute at @s if entity @s[scores={timer=67..77}] run tp @s ~ ~ ~-.3
execute at @s if entity @s[scores={timer=78..101}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=102..112}] run tp @s ~ ~ ~.3

execute at @s if entity @s[scores={timer=140..}] run scoreboard players set @s timer 0
