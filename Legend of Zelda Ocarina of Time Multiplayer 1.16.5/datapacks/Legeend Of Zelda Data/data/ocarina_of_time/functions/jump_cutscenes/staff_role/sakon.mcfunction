scoreboard players add @s timer 1

execute if entity @s[scores={timer=32..120}] run tp @s ^ ^ ^.15
execute if entity @s[scores={timer=249}] run tp @s 479 30 1337 -90 ~
execute if entity @s[scores={timer=250..400}] run tp @s ^ ^ ^.15
execute if entity @s[scores={timer=401}] run tp @s ^ ^ ^.15 0 ~
execute if entity @s[scores={timer=402..}] run tp @s ^ ^ ^.15
