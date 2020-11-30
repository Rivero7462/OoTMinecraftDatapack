fill -499 113 1615 -499 113 1615 minecraft:gold_block

#Attack
execute as @e[type=zombie,tag=Ganondorf] at @s run function ocarina_of_time:moving_things/ganon_tower/boss/ganondorf

#Energy Ball
execute as @e[type=zombie,tag=EnergyBall] at @s run function ocarina_of_time:moving_things/ganon_tower/boss/energy_ball

#Energy Ball
execute as @e[type=zombie,tag=EnergyBall2] at @s run function ocarina_of_time:moving_things/ganon_tower/boss/energy_ball_2

#Death Cutscene
execute if block -499 113 1615 minecraft:gold_block unless block -498 113 1615 minecraft:gold_block unless entity @e[type=zombie,tag=Ganondorf] as @e[type=armor_stand,tag=GanondorfBoss] at @s run function ocarina_of_time:moving_things/ganon_tower/boss/death
