summon minecraft:zombie 1063 63 3087 {Tags:["MorphaEye","Morpha","Invisible"],PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Health:82,Attributes:[{Name:"generic.max_health",Base:82}],Invulnerable:1b,Silent:1,NoAI:1b,IsBaby:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:24}}],ArmorDropChances:[0f,0f,0f,0f]}
summon minecraft:dolphin 1064 62 3091 {Tags:["Morpha","RandomMorpha","Invisible"],PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1}
tag @e[type=zombie,tag=MorphaEye] add Attack
tag @e[type=zombie,tag=MorphaEye] add Bounce
function ocarina_of_time:music/boss
fill 1064 52 3092 1064 52 3092 minecraft:gold_block
