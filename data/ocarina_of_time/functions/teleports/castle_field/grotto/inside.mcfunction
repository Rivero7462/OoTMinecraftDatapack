function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_field/loot_reset
tag @s add StopTime
tag @a add Indoors
#Wall Skulltula
#1
execute unless entity @e[type=zombie,tag=WallSkull17] run summon minecraft:zombie 921.8 59 921.2 {Tags:["WallSkull17","WallSkull","Invisible"],Rotation:[135f],NoAI:1b,ArmorItems:[{},{},{},{id:red_mushroom_block,Count:1b}],Invulnerable:1b,PersistenceRequired:1b,Health:7,Silent:1,IsBaby:1b,DeathLootTable:"ocarina_of_time:entities/wall_skulltula",ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/wall_skulltula"}
#2
execute unless entity @e[type=zombie,tag=WallSkull18] run summon minecraft:zombie 931.2 60 919.2 {Tags:["WallSkull18","WallSkull","Invisible"],Rotation:[45f],NoAI:1b,ArmorItems:[{},{},{},{id:red_mushroom_block,Count:1b}],Invulnerable:1b,PersistenceRequired:1b,Health:7,Silent:1,IsBaby:1b,DeathLootTable:"ocarina_of_time:entities/wall_skulltula",ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/wall_skulltula"}
tp @s 925 57 914 180 ~
