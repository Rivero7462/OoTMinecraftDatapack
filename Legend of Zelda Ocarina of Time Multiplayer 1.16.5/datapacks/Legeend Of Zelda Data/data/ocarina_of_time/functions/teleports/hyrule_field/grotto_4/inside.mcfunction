scoreboard players set @e[type=area_effect_cloud,tag=StalchildSpawn] lifetime 0
tag @s add StopStalchildSpawn
function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/hyrule_field/loot_reset
function ocarina_of_time:teleports/hyrule_field/enemies
tag @s add StopTime
execute unless entity @e[type=armor_stand,tag=GossipStone30] run summon minecraft:armor_stand 956 38 2185 {Tags:["GossipStone30","GossipStone","GrottoGossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
execute unless entity @e[type=cod,tag=GrottoCod] run summon minecraft:cod 961 37 2183 {Tags:["GrottoCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
tag @a add Indoors
tp @s 958 39 2192 180 ~
