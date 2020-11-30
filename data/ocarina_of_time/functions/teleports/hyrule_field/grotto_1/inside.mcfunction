scoreboard players set @e[type=area_effect_cloud,tag=StalchildSpawn] lifetime 0
tag @s add StopStalchildSpawn
function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/hyrule_field/loot_reset
function ocarina_of_time:teleports/hyrule_field/enemies
tag @s add StopTime
#Skulltula
execute unless entity @e[type=zombie,tag=Skulltula18] run summon minecraft:zombie 757 38 2051 {PersistenceRequired:1b,Tags:["Skulltula18","Skulltula","Invisible"],Rotation:[180f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
tag @a add Indoors
tp @s 757 34 2040 180 ~
