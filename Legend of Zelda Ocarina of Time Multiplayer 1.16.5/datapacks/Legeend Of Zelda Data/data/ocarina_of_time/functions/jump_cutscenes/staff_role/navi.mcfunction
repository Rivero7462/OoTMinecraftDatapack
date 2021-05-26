#Navi
scoreboard players add @s timer 1
execute as @s at @s if entity @s[scores={timer=0..5}] run tp @s ~ 14 ~
execute as @s at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @s at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @s at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @s if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
