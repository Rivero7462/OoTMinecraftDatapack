function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/death_mountain_crater/loot_reset
function ocarina_of_time:teleports/death_mountain_crater/enemies
tag @s remove HotArea
tag @s add StopTime
execute unless entity @e[type=cod,tag=GrottoCod] run summon minecraft:cod 2732 18 1938 {Tags:["GrottoCod"],PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.3f}],Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
tp @s 2729 20 1947 180 ~
