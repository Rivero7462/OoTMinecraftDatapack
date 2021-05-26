#Reset
execute if entity @s[scores={timer=0}] run tp @s 3096 103 1955

#Particles
particle minecraft:flame ~ ~ ~ 0 1 3 0 1 normal

#Direction 1
execute if entity @s[tag=Direction1] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tp @s 3108 110 1975 135 ~






execute if entity @s[scores={timer=200}] run tp @s 3096 110 1960 180 ~

#Direction 2






