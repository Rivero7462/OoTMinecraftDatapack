#Summon
execute unless block -27 117 763 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/boss/summon

#Kotake
execute as @e[type=zombie,tag=Kotake] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/kotake

#Koume
execute as @e[type=zombie,tag=Koume] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/koume

#Ice Beam
execute as @e[type=area_effect_cloud,tag=IceBeam] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/ice_beam

#Fire Beam
execute as @e[type=area_effect_cloud,tag=FireBeam] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/fire_beam

#Platform Spot
execute as @e[type=area_effect_cloud,tag=TwinrovaSpot] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/spot

#Twinrova
execute as @e[type=armor_stand,tag=TwinrovaBody] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/twinrova

#Twinrova Health
execute as @e[type=ravager,tag=TwinrovaHealth] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/health

#Finish
execute unless block -25 117 763 minecraft:gold_block if block -26 117 763 minecraft:gold_block unless entity @e[type=ravager,tag=TwinrovaHealth] as @e[type=armor_stand,tag=Kotake2] at @s run function ocarina_of_time:moving_things/spirit_temple/boss/finish
