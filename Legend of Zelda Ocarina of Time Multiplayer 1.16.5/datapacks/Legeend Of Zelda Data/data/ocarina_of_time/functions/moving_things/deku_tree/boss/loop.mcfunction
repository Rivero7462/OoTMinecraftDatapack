#Setup
execute unless block 1427 5 -665 minecraft:gold_block unless block 1427 5 -664 minecraft:gold_block run summon minecraft:zombie 1425 27 -661 {Tags:["Gohma","Boss"],Invulnerable:1b,PersistenceRequired:1b,Rotation:[90f,-90f],ArmorItems:[{},{},{},{id:dead_brain_coral_fan,Count:1b,tag:{CustomModelData:2}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:42,Attributes:[{Name:"generic.max_health",Base:42},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,NoAI:1b,ArmorDropChances:[0f,0f,0f,0f]}
execute unless block 1427 5 -665 minecraft:gold_block unless block 1427 5 -664 minecraft:gold_block run summon minecraft:area_effect_cloud 1424 27 -662 {Tags:["GohmaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless block 1427 5 -665 minecraft:gold_block unless block 1427 5 -664 minecraft:gold_block run summon minecraft:area_effect_cloud 1426 27 -665 {Tags:["GohmaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless block 1427 5 -665 minecraft:gold_block unless block 1427 5 -664 minecraft:gold_block run summon minecraft:area_effect_cloud 1429 27 -659 {Tags:["GohmaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless block 1427 5 -665 minecraft:gold_block unless block 1427 5 -664 minecraft:gold_block run summon minecraft:area_effect_cloud 1425 27 -658 {Tags:["GohmaSpot"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
fill 1427 5 -665 1427 5 -665 minecraft:gold_block

#Idle
execute as @e[type=zombie,tag=Gohma] at @s unless entity @s[tag=Attack] run function ocarina_of_time:moving_things/deku_tree/boss/idle

#Stare
execute as @e[type=zombie,tag=Gohma] at @a unless entity @s[tag=Attack] run function ocarina_of_time:moving_things/deku_tree/boss/stare

#Attack
execute as @e[type=zombie,tag=Gohma,tag=Attack] at @s run function ocarina_of_time:moving_things/deku_tree/boss/attack
