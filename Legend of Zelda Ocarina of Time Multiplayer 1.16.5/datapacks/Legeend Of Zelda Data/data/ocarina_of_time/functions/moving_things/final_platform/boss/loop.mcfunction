#Cutscene/Summon
execute unless block -597 46 278 minecraft:gold_block as @e[type=armor_stand,tag=Ganondorf7] at @s run function ocarina_of_time:moving_things/final_platform/boss/summon

#Attack
execute as @e[type=armor_stand,tag=GanonBody,tag=Attack] at @s run function ocarina_of_time:moving_things/final_platform/boss/attack

#Tail Health
execute as @e[type=zombie,tag=TailHealth] at @s run function ocarina_of_time:moving_things/final_platform/boss/tail/health

#Head Health
execute as @e[type=zombie,tag=GanonHead] at @s run function ocarina_of_time:moving_things/final_platform/boss/head

#Halfway Point
execute if block -597 46 278 minecraft:gold_block unless entity @e[type=armor_stand,tag=MasterSword] run tag @e[type=armor_stand,tag=GanonBody,tag=Attack] add Halfway

#Death Cutscene
execute if block -597 46 278 minecraft:gold_block unless entity @e[type=zombie,tag=GanonHead] as @e[type=area_effect_cloud,tag=Progress] run function ocarina_of_time:moving_things/final_platform/boss/death
