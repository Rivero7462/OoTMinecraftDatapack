summon minecraft:area_effect_cloud 2269 37 1924 {Tags:["LizPlatform","LizPlatform1"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud 2259 37 1920 {Tags:["LizPlatform","LizPlatform2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud 2250 37 1914 {Tags:["LizPlatform","LizPlatform3"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud 2259 37 1908 {Tags:["LizPlatform","LizPlatform4"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud 2269 37 1904 {Tags:["LizPlatform","LizPlatform5"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud 2279 37 1908 {Tags:["LizPlatform","LizPlatform6"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:area_effect_cloud 2279 37 1920 {Tags:["LizPlatform","LizPlatform7"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon minecraft:zombie 2279 37 1908 {Tags:["Lizalfos1","Lizalfos","Invisible","Run"],ArmorItems:[{},{},{},{id:dead_horn_coral,Count:1b,tag:{CustomModelData:1}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/lizalfos",ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:zombie 2259 37 1920 {Tags:["Lizalfos2","Lizalfos","Invisible","Platform"],ArmorItems:[{},{},{},{id:dead_horn_coral,Count:1b,tag:{CustomModelData:1}}],Silent:1b,Attributes:[{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:1},{Name:"generic.max_health",Base:30}],Health:30,DeathLootTable:"ocarina_of_time:entities/lizalfos",ArmorDropChances:[0f,0f,0f,0f]}
scoreboard players set @e[type=zombie,tag=Lizalfos2] lifetime 1
function ocarina_of_time:music/mini_boss
fill 2269 37 1932 2269 37 1932 minecraft:air
fill 2269 37 1932 2269 37 1932 minecraft:stone_pressure_plate
