scoreboard players set @s GameTimer 0
tag @s remove Swing
tag @s remove Slash
scoreboard players set @s lifetime 0
data merge entity @s {Pose:{RightArm:[-90f,-40f,90f]}}
execute if entity @s[tag=IronKnuckle1] as @e[type=zombie,tag=IronKnuckle1] at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=IronKnuckle2] as @e[type=zombie,tag=IronKnuckle2] at @s facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
tag @s remove Action
