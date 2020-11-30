execute if entity @s[distance=..9] positioned ^ ^ ^.5 run function ocarina_of_time:moving_things/fire_temple/boss/fire_breath
particle minecraft:flame ^ ^-.6 ^1.8 0.1 0.1 0.1 0 1 normal
execute unless entity @s[tag=NoPain] positioned ^ ^-1 ^1.8 if entity @a[distance=..1.4] run effect give @a minecraft:instant_damage 1 0 true
execute positioned ^ ^-1 ^1.8 if entity @a[distance=..1.4] run tag @s add NoPain
