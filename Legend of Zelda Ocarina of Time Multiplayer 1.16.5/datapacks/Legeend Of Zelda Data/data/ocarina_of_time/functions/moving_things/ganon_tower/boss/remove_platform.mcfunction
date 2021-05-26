playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.5
execute unless block ~1 ~ ~ minecraft:green_terracotta unless block ~1 ~ ~ minecraft:terracotta run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air
execute as @e[type=zombie,tag=EnergyBall] at @s run tp @s ~ 3 ~
execute as @s[tag=EnergyBall2] at @s run tp @s ~ 3 ~
execute if entity @e[type=zombie,tag=EnergyBall] run tag @e[type=zombie,tag=Ganondorf] add FinishBall
execute if entity @s[tag=EnergyBall2] run tag @e[type=zombie,tag=Ganondorf] add FinishBall
kill @e[type=zombie,tag=EnergyBall]
kill @s[tag=EnergyBall2]
