#Finish
scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run clone 1593 87 925 1593 87 925 1592 91 925 replace move
execute if entity @s[scores={GameTimer=1}] run tag @s remove Attack
execute if entity @s[scores={GameTimer=1}] run function ocarina_of_time:music/shadow_temple
execute if entity @s[scores={GameTimer=1}] run data merge entity @s {HandItems:[{},{}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:31}}]}
execute if entity @s[scores={GameTimer=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={GameTimer=1}] run kill @e[type=wither_skeleton,tag=DeadHand]
execute if entity @s[scores={GameTimer=1}] run fill 1609 91 925 1609 91 925 minecraft:stone_pressure_plate
execute if entity @s[scores={GameTimer=100..}] run fill 1591 88 925 1591 88 925 minecraft:gold_block
execute if entity @s[scores={GameTimer=100..}] run kill @s
