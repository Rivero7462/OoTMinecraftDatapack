function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/gerudo_valley/loot_reset
function ocarina_of_time:teleports/gerudo_valley/enemies
tag @s add StopStalchildSpawn
tag @s add StopTime
#Octorok
execute unless entity @a[tag=Adult] unless entity @e[type=zombie,tag=Octorok19] run summon minecraft:zombie 335 34 2042 {Tags:["Octorok19","Octorok","Water","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}
tag @a add Indoors
tp @s 335 42 2054 180 ~
