scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tp @s 482.9 30 1344
execute if entity @s[scores={timer=2..19}] run tp @s ~ ~ ~-.1

execute if entity @s[scores={timer=20..33}] run tp @s ~ ~.1 ~
execute if entity @s[scores={timer=34..39}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=44..51}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=56..61}] run tp @s ~ ~ ~.1
execute if entity @s[scores={timer=62..75}] run tp @s ~ ~-.1 ~

execute if entity @s[scores={timer=76..}] run scoreboard players set @s timer 0
