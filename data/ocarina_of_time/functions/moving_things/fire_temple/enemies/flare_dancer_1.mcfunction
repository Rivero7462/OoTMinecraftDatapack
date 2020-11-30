fill 3011 110 1951 3011 110 1951 minecraft:stone_pressure_plate
function ocarina_of_time:music/mini_boss
summon minecraft:zombie 3001 102 1960 {Tags:["FlareDancer1","FlareDancer","Invisible"],Rotation:[180f],IsBaby:1b,PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/armos",Health:59,Attributes:[{Name:"generic.max_health",Base:59},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:fire_coral_fan,Count:1b,tag:{CustomModelData:2}}],ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:wither_skeleton 3001 112 1960 {Tags:["FlareDancer1","FlareDancer","Invisible","Resist"],Rotation:[180f],NoAI:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16711680}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16711680}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16711680}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Flare Dancer\""},SkullOwner:{Id:[I;-34294515,-992194605,-1634452727,-754449062],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljY2Q5MjdkZjAyYjlhNWZkMTYxODMyMDg3N2NhZGZmNDI3YTg1M2QzYjdmMTg2MzVkNGZjZTdlYjVmYmY3OSJ9fX0="}]}}}}],Health:1,Attributes:[{Name:"generic.max_health",Base:1}],DeathLootTable:"ocarina_of_time:entities/nothing",PersistenceRequired:1b,Silent:1b,Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint1] run summon minecraft:area_effect_cloud 3007 110 1955 {Tags:["FlarePoint1","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint2] run summon minecraft:area_effect_cloud 3001 110 1952 {Tags:["FlarePoint2","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint3] run summon minecraft:area_effect_cloud 2995 110 1955 {Tags:["FlarePoint3","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint4] run summon minecraft:area_effect_cloud 2993 110 1960 {Tags:["FlarePoint4","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint5] run summon minecraft:area_effect_cloud 2995 110 1965 {Tags:["FlarePoint5","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint6] run summon minecraft:area_effect_cloud 3001 110 1968 {Tags:["FlarePoint6","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint7] run summon minecraft:area_effect_cloud 3007 110 1965 {Tags:["FlarePoint7","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint8] run summon minecraft:area_effect_cloud 3009 110 1960 {Tags:["FlarePoint8","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute unless entity @e[type=area_effect_cloud,tag=FlarePoint9] run summon minecraft:area_effect_cloud 3001 115 1960 {Tags:["FlarePoint9","FlarePoint"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
fill 3001 102 1957 3001 102 1957 minecraft:gold_block
