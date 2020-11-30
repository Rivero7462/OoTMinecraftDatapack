#Stare
execute if block ^ ^ ^ minecraft:air positioned ^ ^ ^.5 run function ocarina_of_time:moving_things/deku_tree/boss/stare
execute if entity @s[distance=..1.5] at @s facing entity @p eyes run tp @s ~ ~ ~ ~180 -90
execute if entity @s[distance=..1.5] run scoreboard players remove @s timer 1

execute if entity @s[distance=..1.5] run tag @s add Looking
execute unless entity @s[distance=..1.5] if entity @s[tag=Looking,scores={timer=1..}] run scoreboard players set @s timer 0
execute unless entity @s[distance=..1.5] run tag @s remove Looking
