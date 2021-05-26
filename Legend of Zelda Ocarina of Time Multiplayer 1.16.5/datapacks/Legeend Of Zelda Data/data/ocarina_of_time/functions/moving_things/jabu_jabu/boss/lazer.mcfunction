execute if block ^ ^ ^ minecraft:air run particle minecraft:crit ~ ~ ~ 0 0 0 .1 1 normal
execute if block ^ ^ ^ minecraft:air positioned ^ ^ ^.5 run function ocarina_of_time:moving_things/jabu_jabu/boss/lazer

execute positioned ~ ~-1 ~ if entity @a[distance=..1] run tag @a add Shocker
