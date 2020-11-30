execute if entity @s[distance=..9] positioned ^ ^ ^.5 run function ocarina_of_time:moving_things/fire_temple/boss/fire_breath_2
execute unless entity @s[tag=NoPain] positioned ^ ^-1.6 ^1.8 if entity @a[distance=..1] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute unless entity @s[tag=NoPain] positioned ^ ^-1.6 ^1.8 if entity @a[distance=..1] run effect give @a minecraft:instant_damage 1 0 true
execute unless entity @s[tag=NoPain] positioned ^ ^-1.6 ^1.8 if entity @a[distance=..1] run tag @s add NoPain
execute if entity @s[scores={PushBlock=1..20}] run particle minecraft:flame ^ ^-.6 ^1.8 0.1 0.1 0.1 0 1 normal
