execute store result entity @s Rotation[0] float 1 run scoreboard players get @s BlueRupee2
execute unless entity @s[tag=WallDown] if entity @s[tag=MirrorCeiling] store result score @s lifetime run data get entity @s Rotation[0]
execute unless entity @s[tag=WallDown] if entity @s[tag=MirrorCeiling] store result score @s GameTimer run data get entity @s Rotation[0]

execute unless entity @s[tag=WallDown] if entity @s[tag=MirrorCeiling] run scoreboard players operation @s lifetime *= bombchuconst lifetime
execute unless entity @s[tag=WallDown] if entity @s[tag=MirrorCeiling] run scoreboard players operation @s GameTimer *= bombchuconst lifetime
execute unless entity @s[tag=WallDown] if entity @s[tag=MirrorCeiling] run scoreboard players add @s GameTimer 180
execute unless entity @s[tag=WallDown] if entity @s[tag=MirrorCeiling] if entity @s[tag=EastWest] store result entity @s Rotation[0] float 1 run scoreboard players get @s lifetime
execute unless entity @s[tag=WallDown] if entity @s[tag=MirrorCeiling] if entity @s[tag=NorthSouth] store result entity @s Rotation[0] float 1 run scoreboard players get @s GameTimer
tag @s remove MirrorCeiling

execute if entity @s[tag=WallUp] run tag @s add MirrorFloor

scoreboard players set @s time 0
tag @s remove Floor
tag @s remove WallUp
tag @s remove WallDown
tag @s remove WallLeft
tag @s remove WallRight
data merge entity @s {Pose:{Head:[180f,0f,0f]}}

tag @s add Ceiling
