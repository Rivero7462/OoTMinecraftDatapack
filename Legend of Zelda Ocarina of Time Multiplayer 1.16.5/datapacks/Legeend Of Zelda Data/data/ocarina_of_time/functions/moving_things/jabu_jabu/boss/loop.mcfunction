#Summon
execute unless block 1681 44 1331 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/boss/summon

#Cutscene
execute as @e[type=armor_stand,tag=BarinadeControl,tag=!Attack] at @s run function ocarina_of_time:moving_things/jabu_jabu/boss/cutscene

#Control
execute as @e[type=armor_stand,tag=BarinadeControl,tag=Attack] at @s unless entity @s[tag=Kill] run function ocarina_of_time:moving_things/jabu_jabu/boss/control

#Health
execute as @e[type=ravager,tag=BarinadeBody] at @s run function ocarina_of_time:moving_things/jabu_jabu/boss/barinade_body

#BariJelly
execute as @e[type=zombie,tag=BariJelly] at @s run function ocarina_of_time:moving_things/jabu_jabu/boss/jellyfish

#Tentacle
execute as @e[type=armor_stand,tag=BarinadeTentacle,tag=Kill] at @s run function ocarina_of_time:moving_things/jabu_jabu/boss/tentacle

#Shock
execute as @a at @s if entity @s[tag=Shocker] run function ocarina_of_time:moving_things/jabu_jabu/boss/shock
execute unless entity @a[tag=Shocker] run scoreboard players reset @a Shock

#End
execute as @e[type=armor_stand,tag=BarinadeControl,tag=Kill] at @s run function ocarina_of_time:moving_things/jabu_jabu/boss/death
