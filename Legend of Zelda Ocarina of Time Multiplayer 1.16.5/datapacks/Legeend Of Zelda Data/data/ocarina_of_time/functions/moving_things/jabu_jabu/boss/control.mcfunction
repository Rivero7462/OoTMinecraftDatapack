#Lazers
#1
execute if entity @s[tag=Lazer] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.58] run tag @s add Lazer1
execute if entity @s[tag=Lazer1] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=30}] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["LazerPoint1","LazerPoint","Barinade"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={ArrowCount=30}] anchored eyes positioned ^ ^2 ^-3.4 anchored feet run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0 15 normal
execute if entity @s[scores={ArrowCount=45..65}] anchored eyes positioned ^ ^2 ^-3.4 anchored feet facing entity @e[type=area_effect_cloud,tag=LazerPoint1] eyes rotated ~ ~-5 run function ocarina_of_time:moving_things/jabu_jabu/boss/lazer
execute if entity @s[scores={ArrowCount=45..50}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ .15 1.2
execute if entity @s[scores={ArrowCount=66..}] run tag @s remove Lazer1
execute unless entity @s[tag=Lazer1] run scoreboard players set @s ArrowCount 0
execute unless entity @s[tag=Lazer1] run kill @e[type=area_effect_cloud,tag=LazerPoint1]
#2
execute if entity @s[tag=Lazer] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s rotated ~120 ~ positioned ^ ^ ^-1 unless entity @s[distance=..1.58] run tag @s add Lazer2
execute if entity @s[tag=Lazer2] run scoreboard players add @s PushBlock 1
execute if entity @s[scores={PushBlock=30}] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["LazerPoint2","LazerPoint","Barinade"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={PushBlock=30}] anchored eyes positioned ^3 ^2 ^1.4 anchored feet run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0 15 normal
execute if entity @s[scores={PushBlock=45..65}] anchored eyes positioned ^3 ^2 ^1.4 anchored feet facing entity @e[type=area_effect_cloud,tag=LazerPoint2] eyes rotated ~ ~-5 run function ocarina_of_time:moving_things/jabu_jabu/boss/lazer
execute if entity @s[scores={PushBlock=45..50}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ .15 1.2
execute if entity @s[scores={PushBlock=66..}] run tag @s remove Lazer2
execute unless entity @s[tag=Lazer2] run scoreboard players set @s PushBlock 0
execute unless entity @s[tag=Lazer2] run kill @e[type=area_effect_cloud,tag=LazerPoint2]
#3
execute if entity @s[tag=Lazer] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s rotated ~-120 ~ positioned ^ ^ ^-1 unless entity @s[distance=..1.58] run tag @s add Lazer3
execute if entity @s[tag=Lazer3] run scoreboard players add @s nearbyBomb 1
execute if entity @s[scores={nearbyBomb=30}] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["LazerPoint3","LazerPoint","Barinade"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={nearbyBomb=30}] anchored eyes positioned ^-3 ^2 ^1.4 anchored feet run particle minecraft:crit ~ ~ ~ 0.3 0.3 0.3 0 15 normal
execute if entity @s[scores={nearbyBomb=45..65}] anchored eyes positioned ^-3 ^2 ^1.4 anchored feet facing entity @e[type=area_effect_cloud,tag=LazerPoint3] eyes rotated ~ ~-5 run function ocarina_of_time:moving_things/jabu_jabu/boss/lazer
execute if entity @s[scores={nearbyBomb=45..50}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ .15 1.2
execute if entity @s[scores={nearbyBomb=66..}] run tag @s remove Lazer3
execute unless entity @s[tag=Lazer3] run scoreboard players set @s nearbyBomb 0
execute unless entity @s[tag=Lazer3] run kill @e[type=area_effect_cloud,tag=LazerPoint3]

#Phase2
execute unless entity @s[tag=Phase2] unless entity @s[tag=Phase3] unless entity @s[tag=Phase4] unless entity @e[type=armor_stand,tag=BarinadeTentacle] run scoreboard players add @s PurpleRupee 1
execute if entity @s[scores={PurpleRupee=20..}] run tag @s add Phase2
execute if entity @s[tag=Phase2] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute if entity @s[scores={timer=1}] run scoreboard players reset @s PurpleRupee
#Summon Jellyfish
execute if entity @s[scores={timer=5}] run data merge entity @s {ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:6}}]}
execute if entity @s[scores={timer=5}] run tp @s ~ ~-1.8 ~
execute if entity @s[scores={timer=5}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly1","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=5}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly2","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=5}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly3","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=5}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly4","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=5}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly5","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={timer=5}] run fill 1681 44 1329 1681 44 1329 minecraft:gold_block

#Phase 3
execute unless entity @s[tag=Phase4] if block 1681 44 1327 minecraft:gold_block run tag @s add Phase3
execute if entity @s[tag=Phase3] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run tag @s remove Phase2
execute if entity @s[scores={lifetime=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly6","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly7","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly8","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly9","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie ^ ^ ^ {Tags:["BariJelly","BariJelly10","Barinade","Invisible","Fire"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:4}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}

execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] if entity @s[scores={lifetime=1..150}] positioned as @e[type=ravager,tag=BarinadeBody] run tp @s ~ ~.25 ~ ~-20 ~
execute if entity @s[scores={lifetime=150}] run tag @s add Lazer
execute if entity @s[scores={lifetime=200}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] if entity @s[scores={lifetime=200..350}] positioned as @e[type=ravager,tag=BarinadeBody] run tp @s ~ ~.25 ~ ~10 ~
execute if entity @s[scores={lifetime=350}] run tag @s add Lazer
execute if entity @s[scores={lifetime=400}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute if entity @s[scores={lifetime=401..}] run scoreboard players set @s lifetime 2

#Spinning
#1
execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @s[tag=Lazer] if entity @s[scores={lifetime=1..}] as @e[type=zombie,tag=BariJelly] at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~ -20 run function ocarina_of_time:moving_things/jabu_jabu/boss/particle
execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @s[tag=Lazer] if entity @s[scores={lifetime=1..}] positioned ^ ^ ^5 facing entity @s feet run tp @e[type=zombie,tag=BariJelly6] ~ ~ ~ ~ 0
execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @s[tag=Lazer] if entity @s[scores={lifetime=1..}] positioned ^5 ^ ^ facing entity @s feet run tp @e[type=zombie,tag=BariJelly7] ~ ~ ~ ~ 0
execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @s[tag=Lazer] if entity @s[scores={lifetime=1..}] positioned ^-5 ^ ^ facing entity @s feet run tp @e[type=zombie,tag=BariJelly8] ~ ~ ~ ~ 0
execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @s[tag=Lazer] if entity @s[scores={lifetime=1..}] positioned ^3 ^ ^-4 facing entity @s feet run tp @e[type=zombie,tag=BariJelly9] ~ ~ ~ ~ 0
execute unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @s[tag=Lazer] if entity @s[scores={lifetime=1..}] positioned ^-3 ^ ^-4 facing entity @s feet run tp @e[type=zombie,tag=BariJelly10] ~ ~ ~ ~ 0

#Phase 4
execute if block 1681 44 1325 minecraft:gold_block run tag @s add Phase4
execute if entity @s[tag=Phase4] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run tag @s remove Phase3
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={GameTimer=2}] run function ocarina_of_time:moving_things/jabu_jabu/boss/reset
execute if entity @s[scores={GameTimer=2..}] unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun2] unless entity @e[type=ravager,tag=BarinadeBody,scores={GameTimer=201..300}] positioned as @e[type=ravager,tag=BarinadeBody] run tp @s ~ ~2 ~ ~-20 ~

#Sounds
scoreboard players add @s BlueRupee2 1
execute if entity @s[scores={BlueRupee2=1}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={BlueRupee2=4}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.4
execute if entity @s[scores={BlueRupee2=6}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={BlueRupee2=8}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.6
execute if entity @s[scores={BlueRupee2=11}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.5
execute if entity @s[scores={BlueRupee2=13}] run playsound minecraft:item.trident.hit hostile @a ~ ~ ~ .3 1.6
execute if entity @s[scores={BlueRupee2=14}] run scoreboard players set @s BlueRupee2 0

execute unless entity @s[scores={PurpleRupee=20..}] unless entity @e[type=armor_stand,tag=BarinadeTentacle] unless entity @s[tag=Phase2] unless entity @s[tag=Lazer] unless entity @s[scores={lifetime=151..199}] unless entity @s[scores={lifetime=351..399}] unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun2] if entity @s[scores={BlueRupee2=1}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 .8
execute unless entity @s[scores={PurpleRupee=20..}] unless entity @e[type=armor_stand,tag=BarinadeTentacle] unless entity @s[tag=Phase2] unless entity @s[tag=Lazer] unless entity @s[scores={lifetime=151..199}] unless entity @s[scores={lifetime=351..399}] unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun] unless entity @e[type=ravager,tag=BarinadeBody,tag=Stun2] if entity @s[scores={BlueRupee2=8}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 .8

#Particle
execute if entity @s[scores={BlueRupee2=7}] run particle minecraft:falling_dust minecraft:lime_wool ~ ~2 ~ .5 .4 .5 10 1
execute if entity @s[tag=Phase2] if entity @s[scores={BlueRupee2=7}] run particle minecraft:falling_dust minecraft:lime_wool ~ ~2 ~ .5 .4 .5 10 1
execute if entity @s[tag=Phase3] if entity @s[scores={BlueRupee2=7}] run particle minecraft:falling_dust minecraft:lime_wool ~ ~2 ~ .5 .4 .5 10 2
execute if entity @s[tag=Phase4] if entity @s[scores={BlueRupee2=7}] run particle minecraft:falling_dust minecraft:lime_wool ~ ~2 ~ .5 .4 .5 10 3

#End
execute unless entity @e[type=ravager,tag=BarinadeBody] run scoreboard players set @s ArrowCount 0
execute unless entity @e[type=ravager,tag=BarinadeBody] run tag @s add Kill
