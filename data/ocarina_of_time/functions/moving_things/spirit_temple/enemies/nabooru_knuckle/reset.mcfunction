scoreboard players set @s GameTimer 0
tag @s remove Swing
tag @s remove Slash
scoreboard players set @s lifetime 0
data merge entity @s {Pose:{RightArm:[-90f,-40f,90f]}}
execute as @e[type=zombie,tag=NabooruKnuckle] at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
tag @s remove Action
