execute if score @p RaceTime <= @s lifetime run scoreboard players set @s text 1
execute if score @p RaceTime > @s lifetime run scoreboard players set @s text 2

execute if entity @s[tag=RunAway] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run data merge entity @s {Pose:{RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={time=1}] at @s run tp @s ~ ~.6 ~
execute if entity @s[scores={time=2..8}] at @s run tp @s ~-.5 ~ ~
execute if entity @s[scores={time=9}] at @s run tp @s ~-.5 ~1 ~
execute if entity @s[scores={time=10..24}] at @s run tp @s ~-.5 ~ ~
execute if entity @s[scores={time=25}] at @s run tp @s ~ ~-5 ~
execute if entity @s[scores={time=29}] run tp @s -631 56 -626
execute if entity @s[scores={time=29}] run data merge entity @s {Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f]}}
execute if entity @s[scores={time=29}] run tag @s remove RunAway
execute if entity @s[scores={time=29}] run scoreboard players set @s time 0
