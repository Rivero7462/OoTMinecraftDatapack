#Guay
#1
execute unless entity @e[type=area_effect_cloud,tag=Guay1] run summon minecraft:zombie 411 83 453 {Tags:["Guay","Guay1","Invisible","Fire"],PersistenceRequired:1b,IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/guay",Health:1,Attributes:[{Name:"generic.max_health",Base:1}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:87}}],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=area_effect_cloud,tag=Guay1] run summon minecraft:area_effect_cloud 411 83 453 {Tags:["Guay","Guay1"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#2
execute unless entity @e[type=area_effect_cloud,tag=Guay2] run summon minecraft:zombie 360 79 453 {Tags:["Guay","Guay2","Invisible","Fire"],PersistenceRequired:1b,IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/guay",Health:1,Attributes:[{Name:"generic.max_health",Base:1}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:87}}],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=area_effect_cloud,tag=Guay2] run summon minecraft:area_effect_cloud 360 79 453 {Tags:["Guay","Guay2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#3
execute unless entity @e[type=area_effect_cloud,tag=Guay3] run summon minecraft:zombie 435 80 490 {Tags:["Guay","Guay3","Invisible","Fire"],PersistenceRequired:1b,IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/guay",Health:1,Attributes:[{Name:"generic.max_health",Base:1}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:87}}],ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=area_effect_cloud,tag=Guay3] run summon minecraft:area_effect_cloud 435 80 490 {Tags:["Guay","Guay3"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#4
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay4] run summon minecraft:zombie 408 75 408 {Tags:["Guay","Guay4","Invisible","Fire"],PersistenceRequired:1b,IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/guay",Health:1,Attributes:[{Name:"generic.max_health",Base:1}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:87}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay4] run summon minecraft:area_effect_cloud 408 75 408 {Tags:["Guay","Guay4"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#5
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay5] run summon minecraft:zombie 460 75 413 {Tags:["Guay","Guay5","Invisible","Fire"],PersistenceRequired:1b,IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/guay",Health:1,Attributes:[{Name:"generic.max_health",Base:1}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:87}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay5] run summon minecraft:area_effect_cloud 460 75 413 {Tags:["Guay","Guay5"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#Owl
execute unless block 395 79 383 minecraft:gold_block unless entity @s[tag=Adult] unless entity @e[type=armor_stand,tag=OwlStand12] run summon minecraft:armor_stand 397 81 390 {Tags:["OwlStand12"],ArmorItems:[{},{},{},{id:infested_stone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
