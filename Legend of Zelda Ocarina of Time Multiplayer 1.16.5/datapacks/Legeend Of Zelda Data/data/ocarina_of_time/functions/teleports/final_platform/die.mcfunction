scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run stopsound @a music

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:moving_things/final_platform/boss/fire_wall/remove
execute if entity @s[scores={LoadZone=1..15}] run fill -589 58 288 -613 52 263 minecraft:air
execute if entity @s[scores={LoadZone=1..15}] if block -594 52 274 minecraft:air run clone -610 47 201 -596 54 223 -608 52 264
execute if entity @s[scores={LoadZone=15..}] run data merge entity @e[type=armor_stand,tag=PrincessZelda5,limit=1] {Pose:{Head:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f]}}
execute if entity @s[scores={LoadZone=15..}] run tp @e[type=armor_stand,tag=PrincessZelda5] -567 52 275 90 ~
execute if entity @s[scores={LoadZone=15..}] run tp @e[type=armor_stand,tag=Ganondorf7] -602 49 276 -90 ~

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run tag @s add NoTeleport
execute if entity @s[scores={LoadZone=15..}] run tp @s -638 91 909
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
