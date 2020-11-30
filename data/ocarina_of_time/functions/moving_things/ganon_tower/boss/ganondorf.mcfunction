#Light Arrow
data merge entity @s {DeathLootTable:"ocarina_of_time:entities/nothing"}

#Armor Stand
execute rotated as @s run tp @e[type=armor_stand,tag=GanondorfBoss] ~ ~ ~ ~ 0

#Rotation
data modify entity @s Rotation[1] set value 0f

#Title
execute if entity @s[scores={timer=20}] run title @a times 5 50 5
execute if entity @s[scores={timer=20}] run title @a subtitle "Great King of Evil"
execute if entity @s[scores={timer=20}] run title @a title "Ganondorf"

#First Ground Pound
execute unless entity @s[scores={timer=121..}] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..20}] run tp @s ~ ~.1 ~.1
execute if entity @s[scores={timer=20}] run tag @s add Idle
execute if entity @s[scores={timer=60}] run tag @s remove Idle
execute if entity @s[scores={timer=60}] run tp @s ~ ~ ~ 0 ~
execute if entity @s[scores={timer=60}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[40f,0f,0f],RightArm:[-40f,10f,0f],LeftArm:[20f,20f,0f],RightLeg:[-30f,0f,0f],LeftLeg:[40f,20f,0f]}}
execute if entity @s[scores={timer=60..70}] run particle minecraft:composter ^-.4 ^.8 ^.5 .1 .1 .1 1 1
execute if entity @s[scores={timer=60..70}] if block ~ ~-.4 ~ minecraft:air run tp @s ~ ~-.4 ~
execute if entity @s[scores={timer=60..70}] unless block ~ ~-.3 ~ minecraft:air run scoreboard players set @s timer 71
execute if entity @s[scores={timer=71}] run particle minecraft:block end_stone_bricks ~ ~ ~ 2.5 .1 2.5 1 50 force
execute if entity @s[scores={timer=75}] run fill -504 90 1610 -493 90 1621 minecraft:air replace minecraft:end_stone_bricks
execute if entity @s[scores={timer=75}] run fill -504 90 1610 -493 90 1621 minecraft:air replace minecraft:black_terracotta
execute if entity @s[scores={timer=75}] run fill -504 90 1610 -493 90 1621 minecraft:air replace minecraft:terracotta
execute if entity @s[scores={timer=75}] run fill -504 89 1610 -493 89 1621 minecraft:air replace minecraft:polished_andesite
execute if entity @s[scores={timer=75}] run fill -499 90 1616 -498 90 1615 minecraft:terracotta
execute if entity @s[scores={timer=75}] run clone -502 87 1614 -502 88 1617 -502 89 1614
execute if entity @s[scores={timer=75}] run clone -500 87 1619 -497 88 1619 -500 89 1619
execute if entity @s[scores={timer=75}] run clone -500 87 1612 -497 88 1612 -500 89 1612
execute if entity @s[scores={timer=75}] run clone -495 87 1614 -495 88 1617 -495 89 1614
execute if entity @s[scores={timer=80}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=80..119}] run tp @s ~ ~.07 ~.17
execute if entity @s[scores={timer=120}] run tp @s -498.0 94 1616.0
execute if entity @s[scores={timer=120}] run tag @s add Idle

#Health
execute store result score @s BlueRupee run data get entity @s Health
execute if entity @s[scores={BlueRupee=..51}] run scoreboard players add @s BlueRupee2 1
execute if entity @s[scores={BlueRupee2=3..}] run scoreboard players set @s BlueRupee2 0

#Idle
execute unless entity @s[tag=Idle] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Idle] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Idle,scores={lifetime=1..4}] facing entity @p feet rotated ~ 0 run tp @s ~ 94 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=5..10}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.02 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=11..15}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.03 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=16..20}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.02 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=21..25}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.03 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=26..30}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.02 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=31..35}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.03 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=36..40}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.02 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=41..45}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.03 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=46..50}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.02 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=51..55}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.03 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=56..60}] facing entity @p feet rotated ~ 0 run tp @s ~ ~-.02 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=61..62}] facing entity @p feet rotated ~ 0 run tp @s ~ 94 ~ ~ 0
execute if entity @s[tag=Idle,scores={lifetime=63..}] if entity @a[x=-502,y=92,z=1612,dx=7,dz=7] run tag @s add GroundPound
execute if entity @s[tag=Idle,scores={lifetime=63..}] unless entity @s[scores={BlueRupee2=1}] unless entity @a[x=-502,y=92,z=1612,dx=7,dz=7] if entity @a[x=-510,y=92,z=1604,dx=23,dz=23] run tag @s add Ball
execute if entity @s[tag=Idle,scores={lifetime=63..}] if entity @s[scores={BlueRupee2=1}] unless entity @a[x=-502,y=92,z=1612,dx=7,dz=7] if entity @a[x=-510,y=92,z=1604,dx=23,dz=23] run tag @s add BigBall
execute if entity @s[tag=Idle,scores={lifetime=63..}] run tp @s -498.0 94 1616.0
execute if entity @s[tag=Idle,scores={lifetime=63..}] run scoreboard players reset @s lifetime

#Ground Pound
execute if entity @s[tag=GroundPound] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=123}] run tag @s remove Idle
execute if entity @s[scores={timer=123}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[40f,0f,0f],RightArm:[-40f,10f,0f],LeftArm:[20f,20f,0f],RightLeg:[-30f,0f,0f],LeftLeg:[40f,20f,0f]}}
execute if entity @s[scores={timer=123..132}] run particle minecraft:composter ^-.4 ^.8 ^.5 .1 .1 .1 1 1
execute if entity @s[scores={timer=123..132}] if block ~ ~-.4 ~ minecraft:air run tp @s ~ ~-.4 ~
execute if entity @s[scores={timer=123..132}] unless block ~ ~-.3 ~ minecraft:air run scoreboard players set @s timer 133
execute if entity @s[scores={timer=133}] run particle minecraft:block end_stone_bricks ~ ~ ~ 2.5 .1 2.5 1 50 force
execute if entity @s[scores={timer=133}] if entity @a[distance=..5] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[scores={timer=137}] positioned ^ ^-1 ^7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-1 ^-1 ^7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^1 ^-1 ^7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^ ^-1 ^8 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-1 ^-1 ^8 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^1 ^-1 ^8 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^ ^-1 ^9 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-1 ^-1 ^9 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^1 ^-1 ^9 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^5 ^-1 ^-7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^4 ^-1 ^-7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^6 ^-1 ^-7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^5 ^-1 ^-6 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^4 ^-1 ^-6 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^6 ^-1 ^-6 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-5 ^-1 ^-7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-4 ^-1 ^-7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-6 ^-1 ^-7 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-5 ^-1 ^-6 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-4 ^-1 ^-6 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=137}] positioned ^-6 ^-1 ^-6 if block ~ ~ ~ minecraft:terracotta run function ocarina_of_time:moving_things/ganon_tower/boss/remove_platform
execute if entity @s[scores={timer=142}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=142..181}] run tp @s ~ ~.07 ~
execute if entity @s[scores={timer=182..}] run tp @s -498.0 94 1616.0
execute if entity @s[scores={timer=182..}] run tag @s add Idle
execute if entity @s[scores={timer=182..}] run tag @s remove GroundPound
execute if entity @s[scores={timer=182..}] run scoreboard players set @s timer 121

#Ball
execute if entity @s[tag=Ball] run scoreboard players add @s time 1
execute if entity @s[tag=Ball,scores={time=2}] run tag @s remove Idle
execute if entity @s[tag=Ball,scores={time=2}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{RightArm:[-130f,20f,0f]}}
execute if entity @s[tag=Ball,scores={time=2..}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Ball,scores={time=2..30}] run particle minecraft:composter ^-.5 ^1.8 ^.5 .1 .1 .1 1 1
execute if entity @s[tag=Ball,scores={time=30}] run summon minecraft:zombie ~ ~2 ~ {Tags:["EnergyBall","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=Ball,scores={time=30}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{RightArm:[0f,0f,0f]}}

#Big Ball
execute if entity @s[tag=BigBall] run scoreboard players add @s time 1
execute if entity @s[tag=BigBall,scores={time=2}] run tag @s remove Idle
execute if entity @s[tag=BigBall,scores={time=2..99}] if entity @e[type=arrow,tag=LightArrow] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=BigBall,scores={time=2..99}] unless entity @e[type=arrow,tag=LightArrow] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=BigBall,scores={time=2}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[-30f,0f,0f],RightArm:[-130f,40f,0f],LeftArm:[-130f,-40f,0f]}}
execute if entity @s[tag=BigBall,scores={time=2..}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=BigBall,scores={time=2..99}] run particle minecraft:sneeze ~ ~5 ~ .4 .4 .4 0 10 normal
execute if entity @s[tag=BigBall,scores={time=2..99}] run particle minecraft:squid_ink ~ ~5 ~ .3 .3 .3 .1 1 normal
execute if entity @s[tag=BigBall,scores={time=100}] run particle minecraft:flash ~ ~5 ~ .3 .3 .3 .1 1 normal
execute if entity @s[tag=BigBall,scores={time=100}] run summon minecraft:zombie ^1 ^5 ^ {Tags:["EnergyBall2","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=BigBall,scores={time=100}] run summon minecraft:zombie ^-1 ^5 ^ {Tags:["EnergyBall2","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=BigBall,scores={time=100}] run summon minecraft:zombie ^ ^5 ^2 {Tags:["EnergyBall2","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=BigBall,scores={time=100}] run summon minecraft:zombie ^ ^5 ^-2 {Tags:["EnergyBall2","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=BigBall,scores={time=100}] run summon minecraft:zombie ^3 ^5 ^ {Tags:["EnergyBall2","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=BigBall,scores={time=100}] run summon minecraft:zombie ^-3 ^5 ^ {Tags:["EnergyBall2","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=BigBall,scores={time=100}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @s[tag=BigBall,scores={time=100}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=BigBall,scores={time=2..99}] if entity @s[nbt={HurtTime:10s}] run tag @s add Light

#Remove Ball
execute if entity @s[tag=Stun] run tag @s remove BigBall
execute if entity @s[tag=Stun] run tag @s remove Ball
execute if entity @s[tag=Stun] run scoreboard players set @s time 0

execute if entity @s[tag=FinishBall] run tag @s add Idle
execute if entity @s[tag=FinishBall] run tag @s remove Ball
execute if entity @s[tag=FinishBall] run tag @s remove BigBall
execute if entity @s[tag=FinishBall] run scoreboard players set @s time 0
execute if entity @s[tag=FinishBall] run tag @s remove FinishBall

#Stunned
execute if entity @s[tag=Stun] run scoreboard players add @s ArrowCount 1
execute if entity @s[tag=Stun,scores={ArrowCount=1}] run kill @e[type=zombie,tag=EnergyBall]
execute if entity @s[tag=Stun,scores={ArrowCount=1..99}] run particle minecraft:entity_effect ^ ^.5 ^.2 1 1 0 1 0 normal @a
execute if entity @s[tag=Stun,scores={ArrowCount=100..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Stun,scores={ArrowCount=100..}] run tag @s add Idle
execute if entity @s[tag=Stun,scores={ArrowCount=100..}] run tag @s remove Stun
execute if entity @s[tag=!Light,scores={ArrowCount=100..}] run scoreboard players set @s ArrowCount 0

#Light Arrows
execute if entity @e[type=arrow,tag=LightArrow] if entity @s[scores={ArrowCount=1..99}] run data merge entity @s {Invulnerable:0b}
execute unless entity @e[type=arrow,tag=LightArrow] if entity @s[scores={ArrowCount=1..99}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[nbt={HurtTime:10s},scores={ArrowCount=1..99}] run tag @s add Light

#Light
execute if entity @s[tag=Light] run tag @s remove BigBall
execute if entity @s[tag=Light] run scoreboard players set @s time 0
execute if entity @s[tag=Light] run tag @s remove Stun
execute if entity @s[tag=Light,scores={ArrowCount=..99}] run scoreboard players set @s ArrowCount 100
execute if entity @s[tag=Light] run scoreboard players add @s ArrowCount 1
execute if entity @s[tag=Light,scores={ArrowCount=101}] run particle minecraft:flash ^ ^.5 ^.4 0 0 0 0 2
execute if entity @s[tag=Light,scores={ArrowCount=102}] run particle minecraft:flash ^1 ^.5 ^.4 0 0 0 0 2
execute if entity @s[tag=Light,scores={ArrowCount=103}] run particle minecraft:flash ^-1 ^.5 ^.4 0 0 0 0 2
execute if entity @s[tag=Light,scores={ArrowCount=101..219}] run particle minecraft:entity_effect ^ ^.5 ^.2 1 1 0 1 0 normal @a
execute if entity @s[tag=Light,scores={ArrowCount=110}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[40f,20f,0f],RightArm:[0f,30f,0f],LeftArm:[-30f,20f,0f],RightLeg:[-40f,10f,0f],LeftLeg:[50f,20f,0f]}}
execute if entity @s[tag=Light,scores={ArrowCount=110..219}] if block ~ ~ ~ minecraft:air run tp @s ~ ~-.1 ~
execute if entity @s[tag=Light,scores={ArrowCount=110..}] unless block ~ ~ ~ minecraft:air run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Light,scores={ArrowCount=110..}] unless block ~ ~ ~ minecraft:air run tag @s remove Resist
execute if entity @s[tag=Light,scores={ArrowCount=110..}] unless block ~ ~ ~ minecraft:air run effect clear @s minecraft:resistance
execute if entity @s[tag=Light,scores={ArrowCount=220}] run tag @s add Resist
execute if entity @s[tag=Light,scores={ArrowCount=220}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Light,scores={ArrowCount=220}] run data merge entity @e[type=armor_stand,tag=GanondorfBoss,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[tag=Light,scores={ArrowCount=220..245}] run tp @s ~ ~.1 ~
execute if entity @s[scores={ArrowCount=245..}] run scoreboard players set @s RedRupee 0
execute if entity @s[scores={ArrowCount=245..}] run tag @s add Idle
execute if entity @s[scores={ArrowCount=245..}] run tag @s remove Light
execute if entity @s[scores={ArrowCount=245..}] run scoreboard players set @s ArrowCount 0

execute if entity @s[tag=Light,nbt={HurtTime:10s},scores={ArrowCount=105..}] run scoreboard players add @s RedRupee 1
execute if entity @s[scores={RedRupee=4..,ArrowCount=101..218}] run scoreboard players set @s ArrowCount 219

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={timer=60}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={timer=123}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=Ball,scores={time=2}] run playsound minecraft:entity.wither_skeleton.death hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=Ball,scores={time=30}] run playsound minecraft:entity.ravager.death hostile @a ~ ~ ~ 1 2
execute if entity @a[nbt={HurtTime:10s}] run playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[tag=Stun,scores={ArrowCount=1}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 1.3
execute if entity @s[tag=Light,scores={ArrowCount=101}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 1.3
execute if entity @s[tag=Stun,scores={ArrowCount=100..}] run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=Light,nbt={HurtTime:10s},scores={ArrowCount=105..}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 1.3
execute if entity @s[scores={ArrowCount=245..}] run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=BigBall,scores={time=100}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 1 1.3
