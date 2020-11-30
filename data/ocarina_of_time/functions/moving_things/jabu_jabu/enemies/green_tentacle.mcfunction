#Up
execute if entity @s[tag=Seen] unless entity @a[x=1755,y=53,z=1287,dx=14,dz=14] if block 1762 55 1294 minecraft:lime_wool run clone 1773 55 1296 1775 66 1298 1761 55 1293
execute unless entity @a[x=1755,y=53,z=1287,dx=14,dz=14] run tag @s remove Attack

#Down
execute if entity @a[x=1755,y=53,z=1287,dx=14,dz=14] unless entity @s[scores={lifetime=30..}] run tp @s 1762 55.5 1294 facing entity @p eyes
execute if entity @a[x=1755,y=53,z=1287,dx=14,dz=14] run tag @s add Seen
execute if entity @a[x=1755,y=53,z=1287,dx=14,dz=14] run tag @s add Attack
execute unless entity @s[scores={timer=1..60}] if entity @a[x=1755,y=53,z=1287,dx=14,dz=14] unless block 1762 55 1294 minecraft:lime_wool run clone 1773 55 1292 1775 66 1294 1761 55 1293

#Hurt
execute if entity @s[tag=Attack] positioned 1762 61 1294 if entity @e[type=armor_stand,tag=Boomerang,distance=..1.5] run tag @s add Hurt
execute if entity @s[tag=Attack] positioned 1762 61 1294 if entity @e[type=armor_stand,tag=Boomerang,distance=..1.5] run tag @s add Seen
execute if entity @s[scores={timer=1}] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={timer=1}] if block 1762 55 1294 minecraft:lime_wool run clone 1773 55 1296 1775 66 1298 1761 55 1293
execute if entity @s[scores={timer=61..}] if entity @s[tag=Attack] unless block 1762 55 1294 minecraft:lime_wool run clone 1773 55 1292 1775 66 1294 1761 55 1293
execute if entity @s[scores={timer=61..}] run tag @s remove Hurt
execute if entity @s[scores={timer=61..}] run scoreboard players set @s timer 0

#Health
execute if entity @s[scores={GameTimer=4}] run playsound minecraft:ui.stonecutter.take_result hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={GameTimer=4}] run fill 1702 62 1288 1699 25 1285 minecraft:air replace minecraft:glass_pane
execute if entity @s[scores={GameTimer=4}] run fill 1700 25 1286 1701 62 1287 minecraft:air replace minecraft:lime_wool
execute if entity @s[scores={GameTimer=4}] run fill 1761 55 1295 1763 65 1293 minecraft:air
execute if entity @s[scores={GameTimer=4}] run kill @s

#Attack
execute if entity @s[scores={lifetime=29}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^ run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=30}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^.4 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=31}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^.8 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=32}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^1.2 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=33}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^1.6 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=34}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^2 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=35}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^2.4 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=36}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^2.8 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=37}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^3.2 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=38}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^3.6 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=39}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^4 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=40}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^4.4 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=41}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^4.8 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=42}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^5.2 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=43}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^5.6 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=44}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^6 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=45}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^6.4 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=46}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^6.8 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=47}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^7.2 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=48}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^7.6 run particle minecraft:dust 0 1 0 1.5 ^ ^ ^1 0 0 0.001 100 0 force

execute if entity @s[scores={lifetime=29}] positioned ^ ^ ^ if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=30}] positioned ^ ^ ^.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=31}] positioned ^ ^ ^.8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=32}] positioned ^ ^ ^1.2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=33}] positioned ^ ^ ^1.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=34}] positioned ^ ^ ^2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=35}] positioned ^ ^ ^2.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=36}] positioned ^ ^ ^2.8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=37}] positioned ^ ^ ^3.2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=38}] positioned ^ ^ ^3.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=39}] positioned ^ ^ ^4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=40}] positioned ^ ^ ^4.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=41}] positioned ^ ^ ^4.8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=42}] positioned ^ ^ ^5.2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=43}] positioned ^ ^ ^5.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=44}] positioned ^ ^ ^6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=45}] positioned ^ ^ ^6.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=46}] positioned ^ ^ ^7.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=47}] positioned ^ ^ ^8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=48}] positioned ^ ^ ^8.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=60..}] run tag @s remove Attack
execute if entity @s[scores={lifetime=60..}] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Attack] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Hurt] run tag @s remove Attack
execute if entity @s[tag=Hurt] run scoreboard players set @s lifetime 0

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:ui.stonecutter.take_result hostile @a ~ ~ ~ 2 1.5
execute if entity @s[scores={lifetime=29..49}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.5

#Biri's
#15
execute if entity @a[x=1753,y=53,z=1292,dx=0,dz=4] run tag @s add SummonBiri
execute unless entity @s[tag=SummonBiri] unless block 1762 47 1292 minecraft:gold_block run kill @e[type=zombie,tag=SpecialBiri]
execute unless entity @e[type=zombie,tag=Biri15] if entity @s[tag=SummonBiri] unless block 1762 47 1292 minecraft:gold_block run summon minecraft:zombie 1757 53 1289 {Tags:["Biri15","Biri","SpecialBiri","Invisible"],Rotation:[90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:pink_stained_glass_pane,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#16
execute unless entity @e[type=zombie,tag=Biri16] if entity @s[tag=SummonBiri] unless block 1762 47 1292 minecraft:gold_block run summon minecraft:zombie 1757 53 1299 {Tags:["Biri16","Biri","SpecialBiri","Invisible"],Rotation:[90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:pink_stained_glass_pane,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#17
execute unless entity @e[type=zombie,tag=Biri17] if entity @s[tag=SummonBiri] unless block 1762 47 1292 minecraft:gold_block run summon minecraft:zombie 1767 53 1289 {Tags:["Biri17","Biri","SpecialBiri","Invisible"],Rotation:[90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:pink_stained_glass_pane,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#18
execute unless entity @e[type=zombie,tag=Biri18] if entity @s[tag=SummonBiri] unless block 1762 47 1292 minecraft:gold_block run summon minecraft:zombie 1767 53 1299 {Tags:["Biri18","Biri","SpecialBiri","Invisible"],Rotation:[90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:pink_stained_glass_pane,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}

execute if entity @s[tag=SummonBiri] run fill 1762 47 1292 1762 47 1292 minecraft:gold_block
execute if block 1762 47 1292 minecraft:gold_block run tag @s remove SummonBiri
