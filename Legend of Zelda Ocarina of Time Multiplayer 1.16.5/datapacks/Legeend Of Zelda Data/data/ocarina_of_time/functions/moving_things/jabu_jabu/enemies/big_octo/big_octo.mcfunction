#Spin
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Burrow] run scoreboard players add @s lifetime 1
#Direction 1
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=0}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^ ^7.8 ~-100 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=0,lifetime=1..30}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~-3 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @a[distance=..7] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=0,lifetime=31..}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~-.8 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @a[distance=..7] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=0,lifetime=31..}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~-1.5 ~
#Direction 2
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=1}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^ ^7.8 ~100 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=1,lifetime=1..30}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~3 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @a[distance=..7] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=1,lifetime=31..}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~.8 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @a[distance=..7] unless entity @s[tag=Burrow] if entity @s[scores={ArrowCount=1,lifetime=31..}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~1.5 ~

#Attack
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Cooldown] positioned ^ ^ ^1 if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Cooldown] positioned ^ ^ ^1 if entity @a[distance=..3] run scoreboard players add @s ArrowCount 1
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Cooldown] positioned ^ ^ ^1 if entity @a[distance=..3] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] positioned ^ ^ ^1 if entity @a[distance=..3] run tag @s add Cooldown
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={ArrowCount=2..}] run scoreboard players set @s ArrowCount 0

#Opposite side
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={lifetime=201..}] unless entity @s[tag=Cooldown] at @e[type=armor_stand,tag=OctoSpin] positioned ^ ^ ^-7.8 if entity @a[distance=..3] run scoreboard players add @s ArrowCount 1
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={lifetime=201..}] unless entity @s[tag=Cooldown] at @e[type=armor_stand,tag=OctoSpin] positioned ^ ^ ^-7.8 if entity @a[distance=..3] run scoreboard players set @s lifetime 31
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={lifetime=201..}] at @e[type=armor_stand,tag=OctoSpin] positioned ^ ^ ^-7.8 if entity @a[distance=..3] run tag @s add Cooldown

#Spin Cooldown
execute unless entity @s[tag=Hurt] if entity @s[tag=Cooldown] run scoreboard players add @s BlueRupee2 1
execute unless entity @s[tag=Hurt] if entity @s[scores={BlueRupee2=10..}] run tag @s remove Cooldown
execute unless entity @s[tag=Hurt] if entity @s[scores={BlueRupee2=10..}] run scoreboard players set @s BlueRupee2 0

#Burrow
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[scores={lifetime=0..30}] unless entity @s[tag=Cooldown] if entity @a[distance=..3] run tag @s add Burrow
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[tag=Burrow] run scoreboard players add @s timer 1
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=1}] run scoreboard players set @s lifetime 31
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=1}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~180 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=1}] run tp @s ~ ~-5 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=10,ArrowCount=0}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^-5 ^7.8 ~-100 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=10,ArrowCount=1}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^-5 ^7.8 ~100 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=20,ArrowCount=0}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^ ^7.8 ~-100 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=20,ArrowCount=1}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^ ^7.8 ~100 ~
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=30..}] run tag @s remove Burrow
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] if entity @s[scores={timer=30..}] run scoreboard players set @s timer 0

#Randomizer
scoreboard players add @s BlueRupee 1
execute if entity @s[scores={BlueRupee=2..}] run scoreboard players set @s BlueRupee 0

#Stun1
execute if entity @s[tag=Stun1] run scoreboard players add @s time 1
execute if entity @s[tag=Stun1,scores={time=1}] run fill ^1.5 ^ ^3 ^-1.5 ^3 ^3 minecraft:barrier replace minecraft:air
execute if entity @s[tag=Stun1,scores={time=1}] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[tag=Stun1,scores={time=1}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Stun1,scores={time=1..90}] run particle minecraft:falling_dust blue_wool ^ ^3 ^2 .8 .3 .8 1 2
execute if entity @s[tag=Stun1,scores={time=90}] run fill 1689 27 1252 1707 25 1270 minecraft:air replace minecraft:barrier
execute if entity @s[tag=Stun1,scores={time=90}] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[tag=Stun1,scores={time=91..109}] run tp @s ~ ~ ~ ~45 ~
execute if entity @s[tag=Stun1,scores={time=109,BlueRupee=0}] run scoreboard players add @s ArrowCount 1
execute if entity @s[tag=Stun1,scores={time=110..}] run tag @s remove Stun1

#Stun2
execute if entity @s[tag=Stun2] run scoreboard players add @s time 1
execute if entity @s[tag=Stun2,scores={time=1}] run fill ^1.5 ^ ^3 ^-1.5 ^3 ^3 minecraft:barrier replace minecraft:air
execute if entity @s[tag=Stun2,scores={time=1}] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[tag=Stun2,scores={time=1}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Stun2,scores={time=20}] run scoreboard players set @s time 109
execute if entity @s[tag=Stun2,scores={time=1..110}] run particle minecraft:falling_dust blue_wool ^ ^3 ^2 .8 .3 .8 1 2
execute if entity @s[tag=Stun2,scores={time=110..}] run fill 1689 27 1252 1707 25 1270 minecraft:air replace minecraft:barrier
execute if entity @s[tag=Stun2,scores={time=110..}] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[tag=Stun2,scores={time=110..}] run tag @s remove Stun2
execute if entity @s[scores={time=110..}] run scoreboard players set @s time 0

execute at @a if block ~ ~1 ~ minecraft:barrier at @s positioned ^ ^ ^5 run tp @p ~ ~ ~

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Hurt
execute if entity @s[tag=Hurt] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run fill 1689 27 1252 1707 25 1270 minecraft:air replace minecraft:barrier
execute if entity @s[scores={GameTimer=1}] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s lifetime 31
execute if entity @s[scores={GameTimer=1}] run tag @s remove Stun1
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s time 0
execute if entity @s[scores={GameTimer=1..10,ArrowCount=0}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^ ^7.8 ~-100 ~
execute if entity @s[scores={GameTimer=1..10,ArrowCount=1}] at @e[type=armor_stand,tag=OctoSpin] run tp @s ^ ^ ^7.8 ~100 ~
execute if entity @s[scores={GameTimer=1..10,ArrowCount=0}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~-7 ~
execute if entity @s[scores={GameTimer=1..10,ArrowCount=1}] as @e[type=armor_stand,tag=OctoSpin] at @s run tp @s ~ ~ ~ ~7 ~
execute if entity @s[scores={GameTimer=20..}] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={GameTimer=20..}] run tag @s remove Hurt
execute if entity @s[scores={GameTimer=20..}] run scoreboard players set @s GameTimer 0

#Sounds
execute unless entity @s[tag=Hurt] unless entity @s[scores={time=1..}] unless entity @s[tag=Burrow] if entity @s[scores={BlueRupee=0}] at @a run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ .1 2
execute if entity @s[scores={time=1}] run playsound minecraft:block.honey_block.break hostile @a ~ ~ ~ 1 .5
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.panda.hurt hostile @a ~ ~ ~ .5 1.2
execute if entity @s[tag=Stun1,scores={time=91}] run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=Stun1,scores={time=99}] run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=Stun1,scores={time=107}] run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={timer=1}] run playsound minecraft:ambient.underwater.enter hostile @a ~ ~ ~ .3 2
