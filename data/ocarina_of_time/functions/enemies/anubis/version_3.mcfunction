tp @s ~ 111 ~

#Get Middle
scoreboard players set @s lifetime 8000
scoreboard players set @s time 878000

#Operation
#1
scoreboard players operation @s timer -= @s lifetime
scoreboard players operation @s GameTimer -= @s time

#Teleport
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s lifetime -= @s timer
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s time -= @s GameTimer
