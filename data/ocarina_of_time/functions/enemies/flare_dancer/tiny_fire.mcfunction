#Scores
scoreboard players add @s timer 1

#Particle
execute if entity @s[tag=Red] run particle minecraft:flame ~ ~.2 ~ .1 .1 .1 0 1 normal
execute if entity @s[tag=Red] run data merge entity @s {Attributes:[{Name:"generic.movement_speed",Base:0.0}]}

execute if entity @s[tag=Blue] run particle minecraft:soul_fire_flame ~ ~.2 ~ .1 .1 .1 0 1 normal

#Movement
execute if entity @s[scores={timer=1..10}] run tp @s ^ ^ ^.2

#Death
execute if entity @s[scores={timer=200..}] run tp @s ~ ~-5 ~
execute if entity @s[scores={timer=200..}] run kill @s
