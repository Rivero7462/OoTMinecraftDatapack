scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tp @s 482.9 31.4 1343
execute if entity @s[scores={timer=2..5}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=10..15}] run tp @s ~ ~ ~.1
execute if entity @s[scores={timer=16..29}] run tp @s ~ ~-.1 ~
execute if entity @s[scores={timer=30..47}] run tp @s ~ ~ ~-.1
execute if entity @s[scores={timer=48..61}] run tp @s ~ ~.1 ~
execute if entity @s[scores={timer=62..67}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=72..75}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=76..}] run scoreboard players set @s timer 0
