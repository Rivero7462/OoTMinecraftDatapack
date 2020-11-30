execute unless entity @s[scores={lifetime=421..460}] as @e[type=armor_stand,tag=PurplePoe] at @s run tp @s ~ ~ ~

#Scores
scoreboard players add @s timer 1
scoreboard players add @s[tag=Meg,tag=Attack] time 1
scoreboard players add @s[tag=Attack] lifetime 1

#ArmorStand with Zombie
execute as @e[type=zombie,tag=Meg] at @s unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[scores={lifetime=20..30}] unless entity @s[scores={lifetime=320..330}] run tp @e[type=armor_stand,tag=Meg] ~ ~ ~ facing entity @p

#Cry
execute unless entity @s[tag=Attack] run data merge entity @e[type=armor_stand,tag=PurplePoe,limit=1] {Pose:{Head:[30f,0f,0f]}}
execute if entity @s[tag=Attack] run data merge entity @e[type=armor_stand,tag=PurplePoe,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute unless entity @s[tag=Attack] if entity @s[scores={timer=40..}] run playsound minecraft:entity.bat.death hostile @a ~ ~ ~ .5 .5
execute unless entity @s[tag=Attack] if entity @s[scores={timer=40..}] run scoreboard players set @s timer 0

#Spins
execute if entity @s[tag=Meg,scores={lifetime=1}] run tag @e[type=zombie,tag=PurplePoe] remove Hide
execute if entity @s[tag=Meg,scores={lifetime=1}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[tag=Meg,scores={lifetime=20..30}] run function ocarina_of_time:enemies/poe/purple_poe_2
execute if entity @s[tag=Meg,scores={lifetime=320..330}] run function ocarina_of_time:enemies/poe/purple_poe_2
execute if entity @e[type=zombie,tag=Meg2,tag=Hide] if entity @e[type=zombie,tag=Meg3,tag=Hide] if entity @e[type=zombie,tag=Meg4,tag=Hide] unless entity @s[tag=Meg,scores={lifetime=421..}] run scoreboard players set @s lifetime 421
#Dash
execute if entity @s[tag=Meg,scores={lifetime=421}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 1.3
execute if entity @s[tag=Meg,scores={lifetime=402..420}] if block ~ ~1 ~ minecraft:air positioned ~-10 ~2 ~-10 if entity @a[dx=20,dy=10,dz=20] at @s run tp @s ~ ~.1 ~
execute if entity @s[tag=Meg,scores={lifetime=402..420}] if block ~ ~ ~ minecraft:air positioned ~-10 ~-8 ~-10 if entity @a[dx=20,dy=9,dz=20] at @s run tp @s ~ ~-.1 ~
execute if entity @s[tag=Meg,scores={lifetime=421..460}] run particle minecraft:sneeze ~ ~1 ~ 0 0 0 0 1 normal
execute if entity @s[tag=Meg,scores={lifetime=421..500}] run tp @e[type=zombie,tag=Meg2] 898 35 -1149
execute if entity @s[tag=Meg,scores={lifetime=421..500}] run tp @e[type=zombie,tag=Meg3] 898 35 -1149
execute if entity @s[tag=Meg,scores={lifetime=421..500}] run tp @e[type=zombie,tag=Meg4] 898 35 -1149

execute as @s[tag=Meg,scores={lifetime=421..460}] run data merge entity @s {Invulnerable:1b}
execute as @s[tag=Meg,scores={lifetime=421..460}] as @e[type=armor_stand,tag=Meg,distance=..1] at @s run tp @e[type=zombie,tag=Meg] ~ ~ ~
execute as @s[tag=Meg,scores={lifetime=421..460}] as @e[type=armor_stand,tag=Meg,distance=..1] at @s run tp @s ^ ^ ^.3
execute if entity @s[tag=Meg,scores={lifetime=461..500}] run tp @e[type=zombie,tag=Meg] 898 35 -1149
execute if entity @s[tag=Meg,scores={lifetime=501..}] run scoreboard players set @s lifetime 0

#Walls
execute unless block ~ ~1 ~.3 minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless block ~ ~1 ~-.3 minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless block ~.3 ~1 ~ minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless block ~-.3 ~1 ~ minecraft:air run data merge entity @s {Invulnerable:1b}
execute if blocks ~-.4 ~1 ~-.4 ~.4 ~1 ~.4 898 105 -1155 all unless entity @s[scores={HoverTimer=1..}] unless entity @s[scores={lifetime=421..460}] run data merge entity @s {Invulnerable:0b}

#Idle
execute if entity @s[scores={time=1}] at @a run summon minecraft:zombie ~ ~ ~-4.8 {Tags:["Meg2","PurplePoe","Invisible","Fire","Attack","Resist"],NoGravity:1b,Silent:1b,CustomName:"\"PurplePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:4}}],Health:30,Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.max_health",Base:30}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[scores={time=1}] at @a run summon minecraft:zombie ~4.8 ~ ~ {Tags:["Meg3","PurplePoe","Invisible","Fire","Attack","Resist"],NoGravity:1b,Silent:1b,CustomName:"\"PurplePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:4}}],Health:30,Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.max_health",Base:30}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[scores={time=1}] at @a run summon minecraft:zombie ~-4.8 ~ ~ {Tags:["Meg4","PurplePoe","Invisible","Fire","Attack","Resist"],NoGravity:1b,Silent:1b,CustomName:"\"PurplePoe\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:4}}],Health:30,Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.max_health",Base:30}],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[scores={time=1}] at @a run scoreboard players set @s time 20
execute if entity @s[scores={time=20..44}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~ ~ ~4.8 facing entity @p
execute if entity @s[scores={time=20..44}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~ ~ ~-4.8 facing entity @p
execute if entity @s[scores={time=20..44}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=20..44}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~-4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=45..69}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~-2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=45..69}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=45..69}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=45..69}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~-2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=70..94}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~-4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=70..94}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=70..94}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~ ~ ~4.8 facing entity @p
execute if entity @s[scores={time=70..94}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~ ~ ~-4.8 facing entity @p
execute if entity @s[scores={time=95..119}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~-2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=95..119}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=95..119}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~-2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=95..119}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=120..144}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~ ~ ~-4.8 facing entity @p
execute if entity @s[scores={time=120..144}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~ ~ ~4.8 facing entity @p
execute if entity @s[scores={time=120..144}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~-4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=120..144}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=145..169}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=145..169}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~-2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=145..169}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~-2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=145..169}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=170..194}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=170..194}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~-4.8 ~ ~ facing entity @p
execute if entity @s[scores={time=170..194}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~ ~ ~-4.8 facing entity @p
execute if entity @s[scores={time=170..194}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~ ~ ~4.8 facing entity @p
execute if entity @s[scores={time=195..219}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] unless entity @s[tag=Meg,scores={lifetime=20..30}] unless entity @s[tag=Meg,scores={lifetime=320..330}] at @a run tp @e[type=zombie,tag=Meg] ~2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=195..219}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg2] ~-2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=195..219}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg3] ~2.6 ~ ~-2.6 facing entity @p
execute if entity @s[scores={time=195..219}] unless entity @s[tag=Meg,scores={lifetime=461..500}] unless entity @s[tag=Meg,scores={lifetime=421..460}] at @a run tp @e[type=zombie,tag=Meg4] ~-2.6 ~ ~2.6 facing entity @p
execute if entity @s[scores={time=220..}] run scoreboard players set @s time 20

#Hide
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=890,y=56,z=-1179,dx=16,dy=5,dz=6] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=891,y=59,z=-1141,dx=14,dy=1,dz=7] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=878,y=58,z=-1162,dx=5,dy=1,dz=14] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=876,y=56,z=-1174,dx=2,dz=3] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=878,y=56,z=-1176,dx=6,dz=9] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=885,y=56,z=-1171,dx=0,dz=3] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=886,y=56,z=-1170,dx=0,dz=1] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=882,y=56,z=-1166,dx=1,dz=0] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=919,y=56,z=-1174,dx=1,dz=3] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=911,y=56,z=-1176,dx=7,dz=8] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=912,y=56,z=-1167,dx=3,dz=0] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=913,y=56,z=-1166,dx=1,dz=0] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @e[type=zombie,tag=Meg2] if entity @a[x=910,y=56,z=-1170,dx=0,dz=1] run scoreboard players set @s[tag=Meg] lifetime 461

execute if entity @s[tag=Hide] run tp @s 898 35 -1149
execute if entity @s[tag=Meg2,nbt={HurtTime:10s}] run tag @s add Hide
execute if entity @s[tag=Meg3,nbt={HurtTime:10s}] run tag @s add Hide
execute if entity @s[tag=Meg4,nbt={HurtTime:10s}] run tag @s add Hide
#Reset
execute if entity @s[tag=Meg2] if entity @a[x=898,y=60,z=-1180,dx=0,dz=0] run tag @a add ResetPurplePoe
execute if entity @s[tag=Meg2] if entity @a[x=898,y=59,z=-1133,dx=0,dz=0] run tag @a add ResetPurplePoe
execute if entity @s[tag=Meg2] if entity @a[x=877,y=58,z=-1155,dx=0,dz=0] run tag @a add ResetPurplePoe
execute if entity @s[tag=Meg2] if entity @a[x=877,y=55,z=-1175,dx=0,dz=0] run tag @a add ResetPurplePoe
execute if entity @s[tag=Meg2] if entity @a[x=919,y=55,z=-1175,dx=0,dz=0] run tag @a add ResetPurplePoe

#Hurt
scoreboard objectives add PurplePoe minecraft.custom:minecraft.damage_dealt
execute if entity @a[scores={PurplePoe=1..}] at @a run tag @e[type=zombie,tag=PurplePoe,sort=nearest,limit=1] add Hide
execute if entity @a[scores={PurplePoe=1..}] run scoreboard players set @a PurplePoe 61
execute if entity @a[scores={PurplePoe=61..}] run scoreboard players set @a PurplePoe 0

#Sounds
execute if entity @s[tag=Meg,nbt={HurtTime:10s}] run playsound minecraft:entity.witch.hurt hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=Meg,nbt={HurtTime:10s}] run scoreboard players set @s[tag=Meg] lifetime 461
execute if entity @s[nbt={HurtTime:10s}] unless entity @s[tag=Meg] run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:shears",tag:{Unbreakable:1b,Damage:20,Item:1b,ArrowPickup:1b,PickupItem:1b,ArrowPickup5:1b}}}
execute if entity @s[nbt={HurtTime:10s}] unless entity @s[tag=Meg] run playsound minecraft:block.wool.break hostile @a ~ ~ ~ 1 1

#Din's Fire?
