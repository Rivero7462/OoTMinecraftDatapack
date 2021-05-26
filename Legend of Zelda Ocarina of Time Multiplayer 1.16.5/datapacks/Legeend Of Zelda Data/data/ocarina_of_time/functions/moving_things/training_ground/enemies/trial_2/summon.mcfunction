fill 461 38 903 461 38 903 minecraft:stone_pressure_plate
tellraw @a ["",{"text":"Defeat all the enemies in a ","color":"white"},{"text":"limited time","color":"red"},{"text":"!"}]

summon minecraft:zombie 463 38 923 {Tags:["Stalfos1","Stalfos","Invisible"],Rotation:[-90f],PersistenceRequired:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:78}}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:2}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:armor_stand 463 38 923 {Tags:["StalfosShield1","StalfosShield"],Invisible:1b,HandItems:[{},{id:shield,Count:1b,tag:{BlockEntityTag:{Base:8,Patterns:[{Pattern:"cbo",Color:4}]}}}],Marker:1b}
summon minecraft:zombie 456 38 911 {Tags:["Stalfos2","Stalfos","Invisible"],Rotation:[-90f],PersistenceRequired:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:78}}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:20,Attributes:[{Name:"generic.max_health",Base:20},{Name:"generic.attack_damage",Base:2}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:armor_stand 456 38 911 {Tags:["StalfosShield2","StalfosShield"],Invisible:1b,HandItems:[{},{id:shield,Count:1b,tag:{BlockEntityTag:{Base:8,Patterns:[{Pattern:"cbo",Color:4}]}}}],Marker:1b}

tag @a add TimerRoom2
fill 460 33 919 460 33 919 minecraft:gold_block
