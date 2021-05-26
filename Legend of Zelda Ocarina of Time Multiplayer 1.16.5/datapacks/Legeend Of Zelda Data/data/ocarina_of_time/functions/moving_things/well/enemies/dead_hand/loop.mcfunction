#Attack
execute as @e[type=armor_stand,tag=DeadHand,tag=Attack] at @s if entity @e[type=zombie,tag=DeadHandHealth] run function ocarina_of_time:moving_things/well/enemies/dead_hand/dead_hand

#Health
execute as @e[type=zombie,tag=DeadHandHealth] at @e[type=armor_stand,tag=DeadHand] run function ocarina_of_time:moving_things/well/enemies/dead_hand/health

#Hand
execute as @e[type=wither_skeleton,tag=Hand] at @s run function ocarina_of_time:moving_things/well/enemies/dead_hand/hand

#Finish
execute as @e[type=armor_stand,tag=DeadHand] unless entity @e[type=zombie,tag=DeadHandHealth] at @s run function ocarina_of_time:moving_things/well/enemies/dead_hand/finish
