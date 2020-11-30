scoreboard players set @e[type=area_effect_cloud,tag=StalchildSpawn] lifetime 0
tag @s add StopStalchildSpawn
function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/hyrule_field/loot_reset
function ocarina_of_time:teleports/hyrule_field/enemies
tag @s add StopTime
#Tektite
execute unless entity @e[type=zombie,tag=Tektite34] run summon minecraft:zombie 853 41 1947 {Tags:["Tektite34","Tektite","Water","Fire","Invisible"],DeathLootTable:"ocarina_of_time:entities/tektite",IsBaby:1b,Health:12,Attributes:[{Name:generic.movement_speed,Base:0.0},{Name:generic.attack_damage,Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:cornflower,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}
tag @a add Indoors
tp @s 853 41 1958 180 ~
