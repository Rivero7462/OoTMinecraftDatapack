execute store result entity @s Rotation[0] float 1 run scoreboard players get @s BlueRupee2
execute unless entity @s[tag=WallUp] if entity @s[tag=MirrorFloor] store result score @s lifetime run data get entity @s Rotation[0]
execute unless entity @s[tag=WallUp] if entity @s[tag=MirrorFloor] store result score @s GameTimer run data get entity @s Rotation[0]

execute unless entity @s[tag=WallUp] if entity @s[tag=MirrorFloor] run scoreboard players operation @s lifetime *= bombchuconst lifetime
execute unless entity @s[tag=WallUp] if entity @s[tag=MirrorFloor] run scoreboard players operation @s GameTimer *= bombchuconst lifetime
execute unless entity @s[tag=WallUp] if entity @s[tag=MirrorFloor] run scoreboard players add @s GameTimer 180
execute unless entity @s[tag=WallUp] if entity @s[tag=MirrorFloor] if entity @s[tag=EastWest] store result entity @s Rotation[0] float 1 run scoreboard players get @s lifetime
execute unless entity @s[tag=WallUp] if entity @s[tag=MirrorFloor] if entity @s[tag=NorthSouth] store result entity @s Rotation[0] float 1 run scoreboard players get @s GameTimer
tag @s remove MirrorFloor

execute if entity @s[tag=WallDown] run tag @s add MirrorCeiling

scoreboard players set @s time 0
tag @s remove Ceiling
tag @s remove WallUp
tag @s remove WallDown
tag @s remove WallLeft
tag @s remove WallRight
data merge entity @s {Pose:{Head:[0f,0f,0f]}}

tag @s add Floor
