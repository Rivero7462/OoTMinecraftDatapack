#Cutscene
execute as @e[type=zombie,tag=Octo] at @s unless block 1701 17 1259 minecraft:gold_block if entity @e[type=area_effect_cloud,tag=MiniBossPlatform,tag=Version1] run function ocarina_of_time:moving_things/jabu_jabu/enemies/big_octo/cutscene

#Summon
execute unless block 1701 17 1259 minecraft:gold_block if entity @e[type=area_effect_cloud,tag=MiniBossPlatform,tag=!Version1] run function ocarina_of_time:moving_things/jabu_jabu/enemies/big_octo/summon

#Big Octo
execute as @e[type=zombie,tag=Octo,tag=Attack] at @s run function ocarina_of_time:moving_things/jabu_jabu/enemies/big_octo/big_octo

#Death
execute if block 1688 25 1261 minecraft:red_terracotta if block 1689 25 1266 minecraft:red_terracotta if block 1703 26 1270 minecraft:red_terracotta as @e[type=armor_stand,tag=OctoSpin] unless entity @e[type=zombie,tag=Octo] run function ocarina_of_time:moving_things/jabu_jabu/enemies/big_octo/death
