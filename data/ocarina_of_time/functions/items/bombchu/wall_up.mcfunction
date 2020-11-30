scoreboard players set @s time 0
tag @s remove EastWest
tag @s remove NorthSouth
tag @s remove Ceiling
tag @s remove Floor
tag @s remove WallDown
tag @s remove WallLeft
tag @s remove WallRight
data merge entity @s {Pose:{Head:[-90f,0f,0f]}}

execute store result score @s BlueRupee2 run data get entity @s Rotation[0]

tag @s add WallUp
