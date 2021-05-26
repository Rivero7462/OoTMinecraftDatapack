#Tektite
#1
execute unless entity @e[type=zombie,tag=Tektite1] run summon minecraft:zombie 737 66 2721 {Tags:["Tektite1","Tektite","Water","Fire","Invisible"],Rotation:[135f],DeathLootTable:"ocarina_of_time:entities/tektite",IsBaby:1b,Health:12,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:cornflower,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=Tektite2] run summon minecraft:zombie 754 66 2721 {Tags:["Tektite2","Tektite","Water","Fire","Invisible"],Rotation:[180f],DeathLootTable:"ocarina_of_time:entities/tektite",IsBaby:1b,Health:12,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:cornflower,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}
#3
execute unless entity @e[type=zombie,tag=Tektite3] run summon minecraft:zombie 748 66 2737 {Tags:["Tektite3","Tektite","Water","Fire","Invisible"],Rotation:[180f],DeathLootTable:"ocarina_of_time:entities/tektite",IsBaby:1b,Health:12,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:cornflower,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}

#Octorok
#1
execute unless entity @e[type=zombie,tag=Octorok1] run summon minecraft:zombie 715 44 2712 {Tags:["Octorok1","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#2
execute unless entity @e[type=zombie,tag=Octorok2] run summon minecraft:zombie 739 44 2773 {Tags:["Octorok2","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
#3
execute unless entity @e[type=zombie,tag=Octorok3] run summon minecraft:zombie 765 44 2772 {Tags:["Octorok3","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}

#Guay
#1
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay1] run summon minecraft:zombie 740 83 2720 {Tags:["Guay","Guay1","Invisible","Fire"],PersistenceRequired:1b,IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/guay",Health:1,Attributes:[{Name:"generic.max_health",Base:1}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:87}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay1] run summon minecraft:area_effect_cloud 740 83 2720 {Tags:["Guay","Guay1"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#2
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay2] run summon minecraft:zombie 749 82 2766 {Tags:["Guay","Guay2","Invisible","Fire"],PersistenceRequired:1b,IsBaby:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/guay",Health:1,Attributes:[{Name:"generic.max_health",Base:1}],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:87}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Guay2] run summon minecraft:area_effect_cloud 749 82 2766 {Tags:["Guay","Guay2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
