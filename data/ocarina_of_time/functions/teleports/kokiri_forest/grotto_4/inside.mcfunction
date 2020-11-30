tag @a add StopParticles
function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kokiri_forest/loot_reset
function ocarina_of_time:teleports/kokiri_forest/enemies
tag @s add StopTime
#Wolfos
#1
execute unless block -597 39 -728 minecraft:gold_block unless entity @e[type=zombie,tag=Wolfos10] run summon minecraft:zombie -599 40 -731 {Tags:["Wolfos10","Wolfos","Invisible","Left","Resist"],DeathLootTable:"ocarina_of_time:entities/wolfos",Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:horn_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoGravity:1b}
#2
execute unless block -597 39 -728 minecraft:gold_block unless entity @e[type=zombie,tag=Wolfos11] run summon minecraft:zombie -592 40 -728 {Tags:["Wolfos11","Wolfos","Invisible","Right","Resist"],DeathLootTable:"ocarina_of_time:entities/wolfos",Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:horn_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoGravity:1b}
fill -598 39 -728 -598 39 -728 minecraft:gold_block
tag @a add Indoors
tp @s -596 46 -716 180 ~
