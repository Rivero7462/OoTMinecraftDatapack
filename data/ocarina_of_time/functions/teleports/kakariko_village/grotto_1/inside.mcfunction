function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kakariko_village/loot_reset
function ocarina_of_time:teleports/kakariko_village/enemies
tag @s add StopTime
tag @a add Indoors
#Redeads
#1
execute unless block 1500 35 1917 minecraft:gold_block unless entity @e[type=wither_skeleton,tag=Redead26] run summon minecraft:wither_skeleton 1497 38 1916 {Tags:["Redead","Redead26","Invisible"],Rotation:[-45f,60f],Silent:1b,NoAI:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:10910235}}},{id:"leather_leggings",Count:1,tag:{display:{color:10910235}}},{id:"leather_chestplate",Count:1,tag:{display:{color:10910235}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Redead\"}",Id:[I;1817635841,-403421629,-1874538214,16471404],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjEwNGViYmYwODhiODExYTA4ZWIyN2VkNjgyMWUzMmIwNzNkZjFiZGFlODIwMTdjYjdkMzkxODZhMjExZDAyZiJ9fX0="}]}}}}],PersistenceRequired:1b,Health:38,Attributes:[{Name:"generic.max_health",Base:38},{Name:"generic.attack_damage",Base:0}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:14}},{id:stone,Count:1b,tag:{CustomModelData:14}}],DeathLootTable:"ocarina_of_time:entities/floormaster",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless block 1500 35 1917 minecraft:gold_block unless entity @e[type=wither_skeleton,tag=Redead27] run summon minecraft:wither_skeleton 1503 38 1916 {Tags:["Redead","Redead27","Invisible"],Rotation:[45f,60f],Silent:1b,NoAI:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:10910235}}},{id:"leather_leggings",Count:1,tag:{display:{color:10910235}}},{id:"leather_chestplate",Count:1,tag:{display:{color:10910235}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Redead\"}",Id:[I;1817635841,-403421629,-1874538214,16471404],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjEwNGViYmYwODhiODExYTA4ZWIyN2VkNjgyMWUzMmIwNzNkZjFiZGFlODIwMTdjYjdkMzkxODZhMjExZDAyZiJ9fX0="}]}}}}],PersistenceRequired:1b,Health:38,Attributes:[{Name:"generic.max_health",Base:38},{Name:"generic.attack_damage",Base:0}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:14}},{id:stone,Count:1b,tag:{CustomModelData:14}}],DeathLootTable:"ocarina_of_time:entities/floormaster",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}
fill 1499 35 1917 1499 35 1917 minecraft:gold_block
tp @s 1500 38 1927 180 ~
