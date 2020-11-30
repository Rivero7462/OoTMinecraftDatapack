#Child
#Octorok
#1
execute unless entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok1] run summon minecraft:zombie 1519 61 2318 {Tags:["Octorok1","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#2
execute unless entity @e[type=zombie,tag=Octorok2] run summon minecraft:zombie 1582 71 2308 {Tags:["Octorok2","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}

#Tektite
#1
execute unless entity @a[tag=Adult] unless entity @e[type=zombie,tag=Tektite1] run summon minecraft:zombie 1519 71 2292 {Tags:["Tektite1","Tektite","Water","Fire","Invisible"],DeathLootTable:"ocarina_of_time:entities/tektite",IsBaby:1b,Health:12,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:cornflower,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @a[tag=Adult] unless entity @e[type=zombie,tag=Tektite2] run summon minecraft:zombie 1530 71 2296 {Tags:["Tektite2","Tektite","Water","Fire","Invisible"],DeathLootTable:"ocarina_of_time:entities/tektite",IsBaby:1b,Health:12,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:cornflower,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}

#Adult
#Octorok
#3
execute if entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok3] run summon minecraft:zombie 1492 61 2319 {Tags:["Octorok3","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#4
execute if entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok4] run summon minecraft:zombie 1509 61 2318 {Tags:["Octorok4","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#5
execute if entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok5] run summon minecraft:zombie 1519 64 2292 {Tags:["Octorok5","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#6
execute if entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok6] run summon minecraft:zombie 1531 64 2296 {Tags:["Octorok6","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#7
execute if entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok7] run summon minecraft:zombie 1549 64 2294 {Tags:["Octorok7","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#8
execute if entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok8] run summon minecraft:zombie 1549 64 2307 {Tags:["Octorok8","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#9
execute if entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok9] run summon minecraft:zombie 1557 67 2310 {Tags:["Octorok9","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}

#Cucco
#1
execute unless entity @a[tag=Adult] unless entity @e[type=chicken,tag=RiverCucco1] run summon minecraft:chicken 1478 69 2318 {Tags:["Cucco","RiverCucco1","Resist"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0}],Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
#2
execute unless entity @a[tag=Adult] unless entity @e[type=chicken,tag=RiverCucco2] run summon minecraft:chicken 1528 81 2316 {Tags:["Cucco","RiverCucco2","Resist"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0}],Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
