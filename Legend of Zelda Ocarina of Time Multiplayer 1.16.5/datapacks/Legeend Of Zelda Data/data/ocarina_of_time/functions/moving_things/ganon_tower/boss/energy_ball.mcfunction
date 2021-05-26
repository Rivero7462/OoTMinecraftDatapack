data merge entity @s {DeathLootTable:"ocarina_of_time:entities/nothing"}

scoreboard players add @s timer 1
execute at @e[type=zombie,tag=Ganondorf] unless entity @s[distance=..1.2] run scoreboard players add @s lifetime 1

#Attack Player
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=1..5}] facing entity @a feet run tp @s ^ ^ ^.4 ~ ~
execute unless entity @s[tag=Reflect] if entity @s[scores={timer=6..}] run tp @s ^ ^ ^.4 ~ ~

#Attack Phantom
execute if entity @s[tag=Reflect,scores={timer=1..}] facing entity @e[type=zombie,tag=Ganondorf] feet run tp @s ^ ^ ^.4 ~ ~

#Platform
execute unless block ~ ~1 ~ minecraft:air run tag @e[type=zombie,tag=Ganondorf] add FinishBall
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~1 ~ ~ if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~ ~ ~1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute positioned ~ ~1 ~ unless block ~ ~ ~ minecraft:air positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute unless block ~ ~1 ~ minecraft:air run tp @s ~ 3 ~
execute unless block ~ ~1 ~ minecraft:air run kill @s
execute if entity @s[scores={timer=200..}] run tag @e[type=zombie,tag=Ganondorf] add FinishBall
execute if entity @s[scores={timer=200..}] run tp @s ~ 3 ~
execute if entity @s[scores={timer=200..}] run kill @s

#Randomizer
scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=16..}] run scoreboard players set @s GameTimer 0

#Stun Chance
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0,time=1}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0,time=2}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0,time=3}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..1,time=4}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..1,time=5}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..1,time=6}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..1,time=7}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..2,time=8}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..2,time=9}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..3,time=10}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..3,time=11}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..3,time=12}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..4,time=13}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..4,time=14}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..5,time=15}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..5,time=16}] run tag @s add Hit
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect,scores={GameTimer=0..15,time=17..}] run tag @s add Hit

#Switch
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect] unless entity @s[tag=Hit] run function ocarina_of_time:moving_things/ganon_tower/boss/attack
execute at @e[type=zombie,tag=Ganondorf] if entity @s[distance=..1.2,tag=Reflect] if entity @s[tag=Hit] run tag @e[type=zombie,tag=Ganondorf] add Stun

execute unless entity @s[tag=Reflect] if entity @s[nbt={HurtTime:10s}] run function ocarina_of_time:moving_things/ganon_tower/boss/reflect

#Shield
execute if entity @a[distance=..0.4] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @a[distance=..0.4] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..0.4] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..0.4] run tp @s ~ 3 ~
execute if entity @a[distance=..0.4] run tag @e[type=zombie,tag=Ganondorf] add FinishBall
execute if entity @a[distance=..0.4] run kill @s

#Particle
particle minecraft:entity_effect ~ ~.5 ~ 1 1 0 1 0 normal @a
