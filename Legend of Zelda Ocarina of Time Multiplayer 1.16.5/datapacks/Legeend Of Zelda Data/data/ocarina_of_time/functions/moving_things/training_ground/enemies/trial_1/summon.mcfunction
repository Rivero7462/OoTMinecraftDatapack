fill 538 38 906 538 38 906 minecraft:stone_pressure_plate
tellraw @a ["",{"text":"Defeat all the enemies in a ","color":"white"},{"text":"limited time","color":"red"},{"text":"!"}]
summon minecraft:zombie 538 38 918 {Tags:["Beamos7","Beamos","Invisible"],NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/beamos",ArmorItems:[{},{},{},{id:emerald_block,Count:1b}],ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:zombie 539 38 924 {Tags:["Dinolfos1","Dinolfos","Invisible"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:74}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/dinolfos",ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:zombie 544 38 919 {Tags:["Dinolfos2","Dinolfos","Invisible"],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:74}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/dinolfos",ArmorDropChances:[0f,0f,0f,0f]}
tag @a add TimerRoom1
fill 536 34 917 536 34 917 minecraft:gold_block
