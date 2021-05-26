function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/zora_river/loot_reset
function ocarina_of_time:teleports/zora_river/enemies
tag @s add StopTime
execute unless entity @e[type=armor_stand,tag=GossipStone30] run summon minecraft:armor_stand 1498 49 2335 {Tags:["GossipStone30","GossipStone","GrottoGossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
execute unless entity @e[type=cod,tag=GrottoCod] run summon minecraft:cod 1503 48 2333 {Tags:["GrottoCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
tag @a add Indoors
tp @s 1500 50 2342 180 ~
