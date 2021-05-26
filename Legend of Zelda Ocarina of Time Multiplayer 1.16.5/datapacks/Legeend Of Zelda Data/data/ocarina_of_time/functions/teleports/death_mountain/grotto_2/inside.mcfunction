function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/death_mountain/loot_reset
function ocarina_of_time:teleports/death_mountain/enemies
tag @s add StopTime
execute unless entity @e[type=cod,tag=GrottoCod] run summon minecraft:cod 2023 66 1441 {Tags:["GrottoCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
tag @a add Indoors
tp @s 2020 68 1450 180 ~
