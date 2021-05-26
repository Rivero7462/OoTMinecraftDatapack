#Fire
data merge entity @s {Fire:0s}

#Wall Rotation
execute if entity @s[tag=Wall] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..30}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=45..55}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=70..110}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=125..140}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=155..180}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=195..240}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=255..270}] run tp @s ~ ~ ~ ~ ~-3
execute if entity @s[scores={timer=285..345}] run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={timer=360..390}] run tp @s ~ ~ ~ ~ ~-3

#Floor Rotation
execute if entity @s[tag=Floor] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..30}] run tp @s ~ ~ ~ ~-4 ~
execute if entity @s[scores={lifetime=45..55}] run tp @s ~ ~ ~ ~4 ~
execute if entity @s[scores={lifetime=70..110}] run tp @s ~ ~ ~ ~4 ~
execute if entity @s[scores={lifetime=125..140}] run tp @s ~ ~ ~ ~-4 ~
execute if entity @s[scores={lifetime=155..180}] run tp @s ~ ~ ~ ~4 ~
execute if entity @s[scores={lifetime=195..240}] run tp @s ~ ~ ~ ~-4 ~
execute if entity @s[scores={lifetime=255..270}] run tp @s ~ ~ ~ ~-4 ~
execute if entity @s[scores={lifetime=285..345}] run tp @s ~ ~ ~ ~4 ~
execute if entity @s[scores={lifetime=360..390}] run tp @s ~ ~ ~ ~-4 ~
execute if entity @s[scores={lifetime=405..}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={timer=405..}] run scoreboard players set @s GameTimer 0

execute if entity @s[scores={lifetime=405..}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={timer=405..}] run scoreboard players set @s timer 0

#Attack
execute if entity @s[tag=Adult] if entity @a[tag=Adult] unless entity @s[tag=Night] if entity @a[distance=..1.1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[tag=Adult] if entity @a[tag=Adult] if entity @s[tag=Night] if entity @a[scores={time=13001..23000}] if entity @a[distance=..1.1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

execute if entity @s[tag=Child] unless entity @a[tag=Adult] unless entity @s[tag=Night] if entity @a[distance=..1.1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[tag=Child] unless entity @a[tag=Adult] if entity @s[tag=Night] if entity @a[scores={time=13001..23000}] if entity @a[distance=..1.1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true


#Death
execute if entity @e[type=snowball,distance=..2] run effect give @a minecraft:instant_health 1 0 true

#Appear
execute if entity @a[distance=..30] unless entity @s[tag=Adult] unless entity @s[tag=Child] run team leave @s
execute if entity @a[distance=..30] unless entity @s[tag=Adult] unless entity @s[tag=Child] if entity @s[tag=Floor] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}]}
execute if entity @a[distance=..30] unless entity @s[tag=Adult] unless entity @s[tag=Child] if entity @s[tag=Wall] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:9}}]}

execute if entity @a[distance=..30] if entity @s[tag=Adult] if entity @a[tag=Adult] run team leave @s
execute if entity @a[distance=..30] if entity @s[tag=Adult] if entity @a[tag=Adult] if entity @s[tag=Floor] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}]}
execute if entity @a[distance=..30] if entity @s[tag=Adult] if entity @a[tag=Adult] if entity @s[tag=Wall] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:9}}]}

execute if entity @a[distance=..30] if entity @s[tag=Child] unless entity @a[tag=Adult] run team leave @s
execute if entity @a[distance=..30] if entity @s[tag=Child] unless entity @a[tag=Adult] if entity @s[tag=Floor] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}]}
execute if entity @a[distance=..30] if entity @s[tag=Child] unless entity @a[tag=Adult] if entity @s[tag=Wall] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:9}}]}

#Night
execute if entity @s[tag=Night] if entity @a[scores={time=13001..23000}] run team leave @s
execute if entity @s[tag=Night,tag=Floor] if entity @a[scores={time=13001..23000}] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}]}
execute if entity @s[tag=Night,tag=Wall] if entity @a[scores={time=13001..23000}] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:9}}]}
execute if entity @s[tag=Night] unless entity @a[scores={time=13001..23000}] run team join Skulltula @s
execute if entity @s[tag=Night] unless entity @a[scores={time=13001..23000}] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{}]}
#Distance
execute unless entity @a[distance=..30] run team join Skulltula @s
execute unless entity @a[distance=..30] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{}]}
#Adult
execute unless entity @a[tag=Adult] if entity @s[tag=Adult] run team join Skulltula @s
execute unless entity @a[tag=Adult] if entity @s[tag=Adult] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{}]}
#Child
execute if entity @a[tag=Adult] if entity @s[tag=Child] run team join Skulltula @s
execute if entity @a[tag=Adult] if entity @s[tag=Child] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{}]}

#Slingshot
execute if entity @e[type=snowball,distance=..2] unless entity @s[nbt={Invulnerable:1b}] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] unless entity @s[nbt={Invulnerable:1b}] run effect give @s minecraft:instant_health 1 0 true

#Sounds
execute if entity @s[scores={timer=0..}] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={lifetime=0..}] run scoreboard players add @s GameTimer 1

execute if entity @s[tag=Adult,tag=Night] if entity @a[tag=Adult] if entity @a[scores={time=13001..23000}] run function ocarina_of_time:enemies/skulltula/gold_skulltula_sounds
execute if entity @s[tag=Child,tag=Night] unless entity @a[tag=Adult] if entity @a[scores={time=13001..23000}] run function ocarina_of_time:enemies/skulltula/gold_skulltula_sounds
execute unless entity @s[tag=Adult] unless entity @s[tag=Child] unless entity @s[tag=Night] run function ocarina_of_time:enemies/skulltula/gold_skulltula_sounds
execute if entity @s[tag=Adult] if entity @a[tag=Adult] unless entity @s[tag=Night] run function ocarina_of_time:enemies/skulltula/gold_skulltula_sounds
execute if entity @s[tag=Child] unless entity @a[tag=Adult] unless entity @s[tag=Night] run function ocarina_of_time:enemies/skulltula/gold_skulltula_sounds

#Slingshot
execute if entity @e[type=snowball,distance=..2] run tag @s add Damage
execute if entity @s[tag=Damage] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={time=1}] run effect give @s minecraft:resistance 1 1 true
execute if entity @s[scores={time=1}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[scores={time=1}] run playsound minecraft:entity.bat.takeoff hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=2..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={time=2..}] run tag @s remove Damage
execute if entity @s[scores={time=2..}] run scoreboard players set @s time 0

#Summons
#Floor
#summon minecraft:zombie 968 5 -640 {Tags:["GoldSkull1","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
#Wall
#summon minecraft:zombie 967 5 -643 {Tags:["GoldSkull1","GoldSkull","Wall","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:9}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,Silent:1,IsBaby:1b,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
#Extra Tags
#,"Adult","Night","Child"
