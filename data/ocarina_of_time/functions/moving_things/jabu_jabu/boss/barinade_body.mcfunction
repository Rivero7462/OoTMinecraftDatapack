execute if entity @s[scores={ArrowCount=2..}] run scoreboard players set @s ArrowCount 0

#Spinning
execute unless entity @s[tag=Phase3] unless entity @s[tag=Phase4] unless entity @s[scores={time=1..}] if block 1681 44 1329 minecraft:gold_block run scoreboard players add @s timer 1

execute if block 1681 44 1329 minecraft:gold_block unless entity @s[scores={ArrowCount=1}] if entity @s[scores={timer=1..150}] run tp @s ~ ~ ~ ~5 ~
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..150,ArrowCount=1}] run tp @s ~ ~ ~ ~-5 ~
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..}] positioned ^ ^ ^13 facing entity @s feet run tp @e[type=zombie,tag=BariJelly1] ~ ~ ~ ~ 0
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..}] positioned ^3 ^ ^3 facing entity @s feet run tp @e[type=zombie,tag=BariJelly2] ~ ~ ~ ~ 0
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..}] positioned ^-9 ^ ^ facing entity @s feet run tp @e[type=zombie,tag=BariJelly3] ~ ~ ~ ~ 0
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..}] positioned ^ ^ ^-7 facing entity @s feet run tp @e[type=zombie,tag=BariJelly4] ~ ~ ~ ~ 0
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..}] positioned ^8 ^ ^ facing entity @s feet run tp @e[type=zombie,tag=BariJelly5] ~ ~ ~ ~ 0

#Particle
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..150}] as @e[type=zombie,tag=BariJelly] at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ -3 run function ocarina_of_time:moving_things/jabu_jabu/boss/particle
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=151..320}] at @e[type=zombie,tag=BariJelly] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .4 .2 .4 1 1
execute if block 1681 44 1329 minecraft:gold_block if entity @s[scores={timer=1..150}] at @e[type=zombie,tag=BariJelly] if entity @a[distance=..1] run tag @a add Shocker

#Slow
execute if entity @s[scores={timer=151}] as @e[type=zombie,tag=BariJelly] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={timer=151}] run tag @e[type=armor_stand,tag=BarinadeControl] add Lazer
execute unless entity @s[scores={ArrowCount=1}] if entity @s[scores={timer=151..320}] run tp @s ~ ~ ~ ~2 ~
execute if entity @s[scores={timer=151..320,ArrowCount=1}] run tp @s ~ ~ ~ ~-2 ~

execute if entity @s[scores={timer=321..}] as @e[type=zombie,tag=BariJelly] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={timer=321..}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute if entity @s[scores={timer=321..}] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={timer=321..}] run scoreboard players set @s timer 0

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[tag=Stun,scores={time=1}] run playsound minecraft:block.wet_grass.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Stun,scores={time=1}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute if entity @s[tag=Stun,scores={time=1}] unless entity @e[type=armor_stand,tag=BarinadeControl,tag=Phase2] run tag @e[type=armor_stand,tag=BarinadeControl] add Lazer
execute if entity @s[tag=Stun,scores={time=1}] if entity @s[tag=Phase3] as @e[type=armor_stand,tag=BarinadeControl] at @s run tp @s ~ 49.5 ~
execute if entity @s[tag=Stun,scores={time=1}] as @e[type=zombie,tag=BariJelly] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Stun,scores={time=1}] unless entity @s[tag=Phase3] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Stun,scores={time=1}] run scoreboard players set @s timer 0
execute if entity @s[tag=Stun,scores={time=1..100}] at @e[type=zombie,tag=BariJelly] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .4 .2 .4 1 1
execute if entity @s[tag=Stun,scores={time=1..100}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ 1 1 1 1 1
execute if entity @s[tag=Stun,scores={time=101..}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute if entity @s[tag=Stun,scores={time=101..}] as @e[type=zombie,tag=BariJelly] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Stun,scores={time=101..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Stun,scores={time=101..}] if entity @s[tag=Phase3] run scoreboard players set @s lifetime 2
execute if entity @s[tag=Stun,scores={time=101..}] if entity @s[tag=Phase3] run scoreboard players set @e[type=armor_stand,tag=BarinadeControl] lifetime 2
execute if entity @s[tag=Stun,scores={time=101..}] run tag @s remove Stun

#Phase 3
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s Hearts 1
execute if entity @s[scores={Hearts=4..}] run fill 1681 44 1327 1681 44 1327 minecraft:gold_block
execute if block 1681 44 1329 minecraft:gold_block unless entity @e[type=zombie,tag=BariJelly] run fill 1681 44 1327 1681 44 1327 minecraft:gold_block
execute unless entity @s[tag=Phase4] if block 1681 44 1327 minecraft:gold_block run tag @s add Phase3
execute if entity @s[tag=Phase3] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run scoreboard players set @s Hearts 0
execute if entity @s[scores={lifetime=1}] run kill @e[type=zombie,tag=BariJelly]
execute if entity @s[scores={lifetime=1}] run data merge entity @s {Invulnerable:1b,Health:40}
execute if entity @s[scores={lifetime=1}] run tag @s remove Stun
execute if entity @s[scores={lifetime=1}] run scoreboard players set @s time 0
execute if entity @s[scores={lifetime=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=1}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute if entity @s[scores={lifetime=15..}] if entity @s[tag=Phase3] unless entity @s[tag=Stun,scores={time=1..100}] at @e[type=zombie,tag=BariJelly] if entity @a[distance=..1] run tag @a add Shocker

#Moving
execute unless entity @s[tag=Stun] unless entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] if block ^ ^ ^5 minecraft:air run tp @s ^ ^ ^.15
execute unless entity @s[tag=Stun] unless entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] unless block ^ ^ ^5 minecraft:air run scoreboard players add @s CuccoCount 1
execute unless entity @s[tag=Stun] unless entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] unless block ^ ^ ^5 minecraft:air if entity @s[scores={CuccoCount=2..}] run scoreboard players set @s CuccoCount 0
execute unless entity @s[tag=Stun] unless entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..,CuccoCount=1}] unless block ^ ^ ^5 minecraft:air run tp @s ~ ~ ~ ~170 ~
execute unless entity @s[tag=Stun] unless entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..,CuccoCount=0}] unless block ^ ^ ^5 minecraft:air facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
#Spinning
execute unless entity @s[tag=Stun] if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer,scores={lifetime=151..199}] if entity @s[scores={lifetime=2..}] run tp @s ~ ~ ~ ~10 ~
execute unless entity @s[tag=Stun] if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer,scores={lifetime=351..399}] if entity @s[scores={lifetime=2..}] run tp @s ~ ~ ~ ~-20 ~
execute unless entity @s[tag=Stun] if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] as @e[type=zombie,tag=BariJelly] at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ -20 run function ocarina_of_time:moving_things/jabu_jabu/boss/particle
execute if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] positioned ^ ^.3 ^5 facing entity @s feet run tp @e[type=zombie,tag=BariJelly6] ~ ~ ~ ~ 0
execute if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] positioned ^5 ^.3 ^ facing entity @s feet run tp @e[type=zombie,tag=BariJelly7] ~ ~ ~ ~ 0
execute if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] positioned ^-5 ^.3 ^ facing entity @s feet run tp @e[type=zombie,tag=BariJelly8] ~ ~ ~ ~ 0
execute if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] positioned ^3 ^.3 ^-4 facing entity @s feet run tp @e[type=zombie,tag=BariJelly9] ~ ~ ~ ~ 0
execute if entity @e[type=armor_stand,tag=BarinadeControl,tag=Lazer] if entity @s[scores={lifetime=2..}] positioned ^-3 ^.3 ^-4 facing entity @s feet run tp @e[type=zombie,tag=BariJelly10] ~ ~ ~ ~ 0

#Phase 4
execute if entity @s[scores={lifetime=2..}] unless entity @e[type=zombie,tag=BariJelly] run fill 1681 44 1325 1681 44 1325 minecraft:gold_block
execute if block 1681 44 1325 minecraft:gold_block run tag @s add Phase4
execute if entity @s[tag=Phase4] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run tag @s remove Phase3
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={GameTimer=1}] run kill @e[type=zombie,tag=BariJelly]
execute if entity @s[scores={GameTimer=1}] run data merge entity @s {Invulnerable:1b,Health:40}
execute if entity @s[scores={GameTimer=1}] run tag @s remove Stun
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s time 0
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s timer 0

#Moving
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=2..200}] if block ^ ^ ^5 minecraft:air run tp @s ^ ^ ^.3
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=2..200}] unless block ^ ^ ^5 minecraft:air run scoreboard players add @s CuccoCount 1
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=2..200}] unless block ^ ^ ^5 minecraft:air if entity @s[scores={CuccoCount=2..}] run scoreboard players set @s CuccoCount 0
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=2..200,CuccoCount=1}] unless block ^ ^ ^5 minecraft:air run tp @s ~ ~ ~ ~170 ~
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=2..200,CuccoCount=0}] unless block ^ ^ ^5 minecraft:air facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=201}] run tag @e[type=armor_stand,tag=BarinadeControl] add Lazer
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=201..300}] as @e[type=armor_stand,tag=BarinadeControl] at @s run tp @s ~ 49.5 ~
execute unless entity @s[tag=Stun2] if entity @s[scores={GameTimer=201..300}] as @e[type=armor_stand,tag=BarinadeControl] at @s run function ocarina_of_time:moving_things/jabu_jabu/boss/control
execute if entity @s[scores={GameTimer=301..}] run scoreboard players set @e[type=armor_stand,tag=BarinadeControl] GameTimer 1
execute if entity @s[scores={GameTimer=301..}] run scoreboard players set @s GameTimer 1

#Stun 2
execute if entity @s[tag=Stun2] run scoreboard players add @s time 1
execute if entity @s[tag=Stun2,scores={time=1}] run playsound minecraft:block.wet_grass.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Stun2,scores={time=1..10}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Stun2,scores={time=1..90}] run tp @s ~ 53 ~
execute if entity @s[tag=Stun2,scores={time=1..100}] run particle minecraft:falling_dust blue_wool ~ ~2 ~ 1.1 1.5 1.1 1 2
execute if entity @s[tag=Stun2,scores={time=101..}] run tp @s ~ 52 ~
execute if entity @s[tag=Stun2,scores={time=101..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Stun2,scores={time=101..}] run scoreboard players set @s GameTimer 1
execute if entity @s[tag=Stun2,scores={time=101..}] run tag @s remove Stun2
execute if entity @s[scores={time=101..}] run scoreboard players set @s time 0

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:ui.stonecutter.take_result hostile @a ~ ~ ~ 2 1.8
execute if entity @s[tag=Phase4,scores={Hearts=2..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Phase4,scores={Hearts=2..}] run tag @s remove Stun2
execute if entity @s[tag=Phase4,scores={Hearts=2..}] run scoreboard players set @s time 0
execute if entity @s[tag=Phase4,scores={Hearts=2..}] run tp @s ~ 52 ~
execute if entity @s[tag=Phase4,scores={Hearts=2..}] run scoreboard players set @s GameTimer 200
execute if entity @s[tag=Phase4,scores={Hearts=2..}] run scoreboard players set @s Hearts 0
execute unless entity @s[tag=Stun] unless entity @s[tag=Stun2] if entity @a[distance=..2] run tag @a add Shocker
