execute if entity @s[scores={timer=19..25}] positioned ^-1.5 ^-2 ^3 if entity @a[distance=..2] unless entity @s[tag=Hurt] run effect give @a minecraft:resistance 1 1 true
execute if entity @s[scores={timer=19..25}] positioned ^-1.5 ^-2 ^3 if entity @a[distance=..2] unless entity @s[tag=Hurt] run effect give @a minecraft:instant_damage 1 1 true
execute if entity @s[scores={timer=19..25}] positioned ^-1.5 ^-2 ^3 if entity @a[distance=..2] unless entity @s[tag=Hurt] run tag @s add Hurt
execute if entity @s[scores={timer=19..25}] positioned ^1.5 ^-2 ^3 if entity @a[distance=..2] unless entity @s[tag=Hurt] run effect give @a minecraft:resistance 1 1 true
execute if entity @s[scores={timer=19..25}] positioned ^1.5 ^-2 ^3 if entity @a[distance=..2] unless entity @s[tag=Hurt] run effect give @a minecraft:instant_damage 1 1 true
execute if entity @s[scores={timer=19..25}] positioned ^1.5 ^-2 ^3 if entity @a[distance=..2] unless entity @s[tag=Hurt] run tag @s add Hurt
