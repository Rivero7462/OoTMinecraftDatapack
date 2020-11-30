data merge entity @s {DeathLootTable:"ocarina_of_time:entities/nothing"}

scoreboard players add @s timer 1
execute at @e[type=zombie,tag=Ganondorf] unless entity @s[distance=..1.2] run scoreboard players add @s lifetime 1

#Attack Player
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=1..20}] facing entity @a feet run tp @s ^ ^ ^.7 ~ ~
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=21..}] run tp @s ^ ^ ^.7 ~ ~

#Attack Phantom
execute if entity @s[tag=Reflect,scores={timer=1..}] facing entity @e[type=zombie,tag=Ganondorf] feet run tp @s ^ ^ ^.7 ~ ~

#Platform
execute unless block ~ ~1 ~ #ocarina_of_time:ganondorf run tag @e[type=zombie,tag=Ganondorf] add FinishBall
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~1 ~ ~ if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~ ~ ~1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ #ocarina_of_time:ganondorf positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute unless block ~ ~1 ~ #ocarina_of_time:ganondorf run tp @s ~ 3 ~
execute unless block ~ ~1 ~ #ocarina_of_time:ganondorf run kill @s
execute if entity @s[scores={timer=200..}] run tag @e[type=zombie,tag=Ganondorf] add FinishBall
execute if entity @s[scores={timer=200..}] run tp @s ~ 3 ~
execute if entity @s[scores={timer=200..}] run kill @s

#Randomizer
scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=16..}] run scoreboard players set @s GameTimer 0

#Stun
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect] run tag @e[type=zombie,tag=Ganondorf] add Stun

#Switch
execute unless entity @s[tag=Reflect] if entity @s[nbt={HurtTime:10s}] run function ocarina_of_time:moving_things/ganon_tower/boss/reflect

#Shield
execute if entity @a[distance=..0.4] unless entity @a[nbt={ActiveEffects:[{Id:11b}]}] run effect give @a minecraft:resistance 1 2 true
execute if entity @a[distance=..0.4] unless entity @a[nbt={ActiveEffects:[{Id:11b}]}] run effect give @a minecraft:instant_damage 1 2 true
execute if entity @a[distance=..0.4] run tag @e[type=zombie,tag=Ganondorf] add FinishBall
execute if entity @a[distance=..0.4] run tp @s ~ 3 ~
execute if entity @a[distance=..0.4] run kill @s

#Particle
particle minecraft:entity_effect ~ ~.5 ~ 1 1 0 1 0 normal @a
