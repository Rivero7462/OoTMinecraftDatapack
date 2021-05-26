tp @s ~ 88 ~

#Get Middle
scoreboard players set @s lifetime -62500
scoreboard players set @s time 829500

#Operation
#1
scoreboard players operation @s timer -= @s lifetime
scoreboard players operation @s GameTimer -= @s time

#Teleport
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation @s lifetime -= @s timer
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation @s time -= @s GameTimer

execute positioned -63 88 829 unless entity @a[distance=..11] facing entity @p feet rotated ~ 0 run tp @s -63 86 829 ~ 0
