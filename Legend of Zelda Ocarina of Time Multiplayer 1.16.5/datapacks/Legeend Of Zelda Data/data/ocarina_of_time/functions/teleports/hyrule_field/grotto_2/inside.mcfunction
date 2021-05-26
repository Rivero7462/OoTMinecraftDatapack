scoreboard players set @e[type=area_effect_cloud,tag=StalchildSpawn] lifetime 0
tag @s add StopStalchildSpawn
function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/hyrule_field/loot_reset
function ocarina_of_time:teleports/hyrule_field/enemies
#Business Scrub
#1
execute unless block 830 30 2212 minecraft:gold_block unless entity @e[type=armor_stand,tag=BusinessScrub10] run summon minecraft:armor_stand 830 32.3 2212 {Tags:["BusinessScrub","BusinessScrub10","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
tag @s add StopTime
tag @a add Indoors
tp @s 830 32 2226 180 ~
