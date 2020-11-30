#Summon
execute unless block 1651 15 962 minecraft:gold_block at @a run function ocarina_of_time:moving_things/shadow_temple/boss/summon

#Cutscene
execute unless block 1652 15 962 minecraft:gold_block as @e[type=armor_stand,tag=BongoHand] at @s run function ocarina_of_time:moving_things/shadow_temple/boss/cutscene

#Hands
execute as @e[type=armor_stand,tag=BongoHand,tag=Attack] at @s run function ocarina_of_time:moving_things/shadow_temple/boss/hands

#Tail
execute as @e[type=armor_stand,tag=BongoTail] at @e[type=armor_stand,tag=BongoEye] run function ocarina_of_time:moving_things/shadow_temple/boss/tail

#Eye Health
execute as @e[type=ravager,tag=EyeHealth] at @e[type=armor_stand,tag=BongoEye] run function ocarina_of_time:moving_things/shadow_temple/boss/eye_health

#Hand Health
execute as @e[type=ravager,tag=HandHealth] at @s run function ocarina_of_time:moving_things/shadow_temple/boss/hand_health

#Item Drops
kill @e[type=zombie,tag=BongoDrop]

#Death Cutscene
execute if block 1651 15 962 minecraft:gold_block unless entity @e[type=ravager,tag=EyeHealth] as @e[type=armor_stand,tag=BongoEye,tag=Attack] at @s run function ocarina_of_time:moving_things/shadow_temple/boss/death
