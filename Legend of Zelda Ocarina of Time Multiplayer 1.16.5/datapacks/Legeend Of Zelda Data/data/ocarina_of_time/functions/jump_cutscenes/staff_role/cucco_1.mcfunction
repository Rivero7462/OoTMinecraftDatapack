scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tp @s 482.9 30 1342
execute if entity @s[scores={timer=2..15}] run tp @s ~ ~.1 ~
execute if entity @s[scores={timer=16..21}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=26..33}] run tp @s ~ ~ ~.1

execute if entity @s[scores={timer=38..43}] run tp @s ~ ~ ~.1
execute if entity @s[scores={timer=44..57}] run tp @s ~ ~-.1 ~
execute if entity @s[scores={timer=58..75}] run tp @s ~ ~ ~-.1

execute if entity @s[scores={timer=76..}] run scoreboard players set @s timer 0
