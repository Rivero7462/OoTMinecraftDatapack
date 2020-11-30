scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] unless entity @e[type=zombie,tag=EnergyBall] run scoreboard players add @s lifetime 1

#Start
execute if entity @s[scores={timer=1}] run kill @e[type=horse,tag=PhantomHorse]
execute if entity @s[scores={timer=1}] run data merge entity @s {NoGravity:1b,NoAI:0b,Invulnerable:1b}
execute if entity @s[scores={timer=1}] run tp @s 898 30 -1205
execute if entity @s[scores={timer=1}] run fill 901 28 -1212 895 33 -1212 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 894 28 -1211 894 33 -1211 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 893 28 -1209 893 33 -1210 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 892 28 -1207 892 33 -1208 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 891 28 -1204 891 33 -1206 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 892 28 -1202 892 33 -1203 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 893 28 -1200 893 33 -1201 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 894 28 -1199 894 33 -1199 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 901 28 -1198 895 33 -1198 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 902 28 -1199 902 33 -1199 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 903 28 -1201 903 33 -1200 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 904 28 -1203 904 33 -1202 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 905 28 -1206 905 33 -1204 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 904 28 -1208 904 33 -1207 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 903 28 -1210 903 33 -1209 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 902 28 -1211 902 33 -1211 minecraft:barrier
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 .5
#Float
execute unless entity @s[tag=Stun] if entity @s[scores={timer=2..10}] facing entity @a feet run tp @s ~ ~.05 ~ ~ ~
execute unless entity @s[tag=Stun] if entity @s[scores={timer=16..24}] facing entity @a feet run tp @s ~ ~-.05 ~ ~ ~
execute unless entity @s[tag=Stun] if entity @s[scores={timer=25}] run tp @s ~ 30 ~
execute if entity @s[scores={timer=26..}] run scoreboard players set @s timer 2

#Summon Energy Ball
execute if entity @s[scores={lifetime=100}] run playsound minecraft:entity.villager.hurt hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={lifetime=100}] run summon minecraft:zombie ~ ~1 ~ {Tags:["EnergyBall","Boss","Resist","Invisible"],IsBaby:1b,NoAI:1b,ArmorItems:[{},{},{},{id:yellow_concrete_powder,Count:1b}],Silent:1,ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[scores={lifetime=100..}] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Stun] if entity @e[type=zombie,tag=EnergyBall] run data merge entity @s {NoAI:1b}
execute unless entity @s[tag=Stun] unless entity @e[type=zombie,tag=EnergyBall] run data merge entity @s {NoAI:0b}

#Stunned
execute if entity @s[tag=Stun] run kill @e[type=zombie,tag=EnergyBall]
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run playsound minecraft:entity.villager.death hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={time=1..50}] run tag @s remove Resist
execute if entity @s[scores={time=1..50}] run effect clear @s minecraft:resistance
execute if entity @s[scores={time=1..50}] run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if entity @s[scores={time=1..50}] run tp @s ~ 26.5 ~ ~ 30
execute if entity @s[scores={time=1..50}] run particle minecraft:entity_effect ~ ~.5 ~ 1 1 0 1 0 normal @a
execute if entity @s[scores={time=51..}] run data merge entity @s {NoAI:0b,Invulnerable:1b}
execute if entity @s[scores={time=51..}] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={time=51..}] run tag @s remove Stun
execute if entity @s[scores={time=51..}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={time=51..}] run scoreboard players set @s time 0

execute if entity @s[tag=Stun,nbt={HurtTime:10s}] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Stun,scores={GameTimer=2}] run scoreboard players set @s time 51

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.villager.death hostile @a ~ ~ ~ 2 .5

#Din's fire?
