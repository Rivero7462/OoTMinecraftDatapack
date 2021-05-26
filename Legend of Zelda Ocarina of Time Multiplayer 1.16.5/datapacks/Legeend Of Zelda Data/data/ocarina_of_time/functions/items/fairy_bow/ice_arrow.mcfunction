data merge entity @s {NoGravity:1b,Color:-1,pickup:0b}
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0 1

#Kill
execute unless entity @a[distance=..80] run kill @s
execute if entity @s[nbt={life:50s}] run kill @s
execute if entity @s[nbt={life:0s}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=100..}] run kill @s

#Rebound
execute if entity @s[scores={lifetime=2}] store result score @s timer run data get entity @s Rotation[0]
execute if entity @s[scores={lifetime=3..}] store result score @s GameTimer run data get entity @s Rotation[0]
execute if entity @s[scores={lifetime=3..}] unless score @s timer = @s GameTimer run kill @s
