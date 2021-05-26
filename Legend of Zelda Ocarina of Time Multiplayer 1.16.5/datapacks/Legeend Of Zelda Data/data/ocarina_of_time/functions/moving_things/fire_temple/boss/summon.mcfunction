tp @a 3020 45 1956
fill 3020 46 1957 3020 46 1957 minecraft:barrier
fill 3021 46 1956 3021 46 1956 minecraft:barrier
fill 3020 46 1955 3020 46 1955 minecraft:barrier
fill 3019 46 1956 3019 46 1956 minecraft:barrier

summon minecraft:zombie 3014 40 1956 {Tags:["Volvagia","VolvagiaHead","Boss"],Invulnerable:1b,Rotation:[-90f,-90f],NoAI:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_tube_coral_fan,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/nothing",Health:40,Attributes:[{Name:"generic.max_health",Base:40},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=armor_stand,tag=DragonFollow] run summon minecraft:armor_stand 3015 48 1953 {Tags:["DragonFollow"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor1] run summon minecraft:area_effect_cloud 3010 47 1960 {Tags:["DragonFloor1","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor2] run summon minecraft:area_effect_cloud 3010 47 1956 {Tags:["DragonFloor2","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor3] run summon minecraft:area_effect_cloud 3010 47 1952 {Tags:["DragonFloor3","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor4] run summon minecraft:area_effect_cloud 3014 47 1960 {Tags:["DragonFloor4","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor5] run summon minecraft:area_effect_cloud 3014 47 1956 {Tags:["DragonFloor5","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor6] run summon minecraft:area_effect_cloud 3014 47 1952 {Tags:["DragonFloor6","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor7] run summon minecraft:area_effect_cloud 3018 47 1960 {Tags:["DragonFloor7","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor8] run summon minecraft:area_effect_cloud 3018 47 1956 {Tags:["DragonFloor8","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=DragonFloor9] run summon minecraft:area_effect_cloud 3018 47 1952 {Tags:["DragonFloor9","DragonFloor"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

fill 3008 40 1958 3008 40 1958 minecraft:gold_block
