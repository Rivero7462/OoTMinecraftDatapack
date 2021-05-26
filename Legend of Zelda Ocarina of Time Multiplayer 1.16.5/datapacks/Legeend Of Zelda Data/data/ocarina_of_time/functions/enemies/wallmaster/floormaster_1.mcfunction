#Scores
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Lose
execute unless entity @a[distance=..10] run tag @s remove Attack
execute unless entity @a[distance=..10] run scoreboard players set @s timer 0
execute unless entity @a[distance=..10] run data merge entity @s {NoAI:0b,Invulnerable:0b}

#Attack
execute if entity @a[distance=..10] run tag @s add Attack
execute if entity @s[scores={timer=1..39}] facing entity @p eyes run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=40}] run data merge entity @s {NoAI:1b,Invulnerable:1b}
execute if entity @s[scores={timer=40}] facing entity @p eyes run tp @s ~ ~1 ~ ~ 0
execute if entity @s[scores={timer=41..54}] facing entity @p eyes run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=40..75}] run particle minecraft:dust 0 1 0 1 ~ ~.5 ~ 0.3 0.3 0.3 1 1
execute if entity @s[scores={timer=55..75}] if block ^ ^ ^.5 minecraft:air if block ^.2 ^ ^.5 minecraft:air if block ^-.2 ^ ^.5 minecraft:air run tp @s ^ ^ ^.5 ~ 0
execute if entity @s[scores={timer=55..75}] if entity @a[distance=..1.5] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={timer=76}] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute if entity @s[scores={timer=90}] run scoreboard players set @s timer 0

#Split
execute store result score @s time run data get entity @s Health
execute unless entity @s[scores={time=19..}] run summon minecraft:zombie ~ ~ ~ {Tags:["Tinymaster1","Tinymaster","Invisible","Fire"],NoAI:1b,PersistenceRequired:1b,Rotation:[-90f],ArmorItems:[{},{},{},{id:lilac,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/floormaster",Health:4,Attributes:[{Name:"generic.max_health",Base:4},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],IsBaby:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @s[scores={time=19..}] run summon minecraft:zombie ~ ~ ~ {Tags:["Tinymaster2","Tinymaster","Invisible","Fire"],NoAI:1b,PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{id:lilac,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/floormaster",Health:4,Attributes:[{Name:"generic.max_health",Base:4},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],IsBaby:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @s[scores={time=19..}] run summon minecraft:zombie ~ ~ ~ {Tags:["Tinymaster3","Tinymaster","Invisible","Fire"],NoAI:1b,PersistenceRequired:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:lilac,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/floormaster",Health:4,Attributes:[{Name:"generic.max_health",Base:4},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],IsBaby:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @s[scores={time=19..}] run kill @s

#Stun
execute if entity @s[scores={lifetime=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .3 .3 1 1
execute if entity @s[scores={lifetime=111..}] run tag @s remove Stun
execute if entity @s[scores={lifetime=111..}] run scoreboard players set @s lifetime 0

#Sounds
execute if entity @s[scores={timer=40}] at @a run playsound minecraft:entity.bat.takeoff hostile @a ~ ~ ~ .3 .5
execute if entity @s[scores={timer=86}] run playsound minecraft:block.anvil.step hostile @a ~ ~ ~ 1 1
