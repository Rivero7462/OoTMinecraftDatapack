#Summon 2
execute if block 1065 52 3092 minecraft:gold_block unless block 1064 52 3092 minecraft:gold_block run function ocarina_of_time:moving_things/water_temple/boss/summon_2

#Summon
execute unless block 1064 52 3092 minecraft:gold_block at @a if block ~ ~-1 ~ minecraft:polished_andesite run function ocarina_of_time:moving_things/water_temple/boss/summon

#Cutscene
execute as @e[type=area_effect_cloud,tag=MorphaCutscene] at @s run function ocarina_of_time:moving_things/water_temple/boss/cutscene

#Attack
execute as @e[type=zombie,tag=Morpha,tag=Attack] at @s run function ocarina_of_time:moving_things/water_temple/boss/morpha

#Real Tentacle
execute as @e[type=armor_stand,tag=RealTentacle] at @s run function ocarina_of_time:moving_things/water_temple/boss/real_tentacle

#Fake Tentacle
execute as @e[type=dolphin,tag=RandomMorpha] at @s run function ocarina_of_time:moving_things/water_temple/boss/fake_tentacle_1
execute as @e[type=armor_stand,tag=FakeTentacle] at @s run function ocarina_of_time:moving_things/water_temple/boss/fake_tentacle_2

#Shake
execute as @e[type=zombie,tag=ShakeTentacle] at @s run function ocarina_of_time:moving_things/water_temple/boss/shake
execute as @e[type=zombie,tag=ShakeTentacle] at @s run function ocarina_of_time:moving_things/water_temple/boss/shake

#End
execute unless block 1062 52 3092 minecraft:gold_block if block 1064 52 3092 minecraft:gold_block unless entity @e[type=zombie,tag=MorphaEye] unless entity @e[type=area_effect_cloud,tag=FinishMorpha] run summon minecraft:area_effect_cloud 1063 56 3092 {Tags:["FinishMorpha"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless block 1062 52 3092 minecraft:gold_block as @e[type=area_effect_cloud,tag=FinishMorpha] run function ocarina_of_time:moving_things/water_temple/boss/finish
