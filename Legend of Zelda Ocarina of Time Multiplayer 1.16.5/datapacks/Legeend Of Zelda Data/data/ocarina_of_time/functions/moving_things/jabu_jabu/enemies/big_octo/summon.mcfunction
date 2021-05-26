execute if block 1701 17 1259 minecraft:gold_block run function ocarina_of_time:music/mini_boss
summon minecraft:zombie 1691.0 24.5 1261 {Tags:["Octo","BigOcto","Invisible","Fire","Attack"],Rotation:[0f],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:17}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:17,Attributes:[{Name:"generic.max_health",Base:17},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:armor_stand 1698 24.5 1261 {Tags:["OctoSpin","BigOcto"],Rotation:[95f],NoGravity:1b,Invisible:1b}
scoreboard players set @e[type=zombie,tag=Octo,tag=Attack] lifetime 31
scoreboard players set @e[type=zombie,tag=Octo,tag=Attack] ArrowCount 0

fill 1701 17 1259 1701 17 1259 minecraft:gold_block
