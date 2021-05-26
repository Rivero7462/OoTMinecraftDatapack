#Summon
execute if entity @a[x=3019,y=45,z=1954,dx=3,dz=4] unless block 3008 40 1958 minecraft:gold_block run function ocarina_of_time:moving_things/fire_temple/boss/summon

#Cutscene
execute as @e[type=zombie,tag=VolvagiaHead,tag=!Attack] at @s run function ocarina_of_time:moving_things/fire_temple/boss/cutscene

#Volvagia
execute as @e[type=zombie,tag=VolvagiaHead,tag=Attack] at @s run function ocarina_of_time:moving_things/fire_temple/boss/volvagia

#Flying Body
execute as @e[type=zombie,tag=VolvagiaBody] at @s unless entity @s[tag=VolvagiaTail] run function ocarina_of_time:moving_things/fire_temple/boss/fly_body

#Flying Tails
execute as @e[type=zombie,tag=VolvagiaTail] at @s run function ocarina_of_time:moving_things/fire_temple/boss/fly_tail

#Ground Body
execute as @e[type=armor_stand,tag=VolvagiaGround] at @s run function ocarina_of_time:moving_things/fire_temple/boss/ground_body

#Death Summon
execute unless block 3008 40 1954 minecraft:gold_block if block 3008 40 1958 minecraft:gold_block unless entity @e[type=zombie,tag=VolvagiaHead] run function ocarina_of_time:moving_things/fire_temple/boss/death_summon

#Death Cutscene
execute as @e[type=zombie,tag=FakeVolvagia] at @s if block 3008 40 1954 minecraft:gold_block run function ocarina_of_time:moving_things/fire_temple/boss/death_cutscene
