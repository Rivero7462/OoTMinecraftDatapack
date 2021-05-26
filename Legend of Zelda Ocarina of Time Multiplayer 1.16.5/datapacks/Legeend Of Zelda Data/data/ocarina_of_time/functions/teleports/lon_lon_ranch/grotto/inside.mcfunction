function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/lon_lon_ranch/loot_reset
function ocarina_of_time:teleports/lon_lon_ranch/enemies
tag @s add StopTime
#Business Scrub
#1
execute unless entity @e[type=armor_stand,tag=BusinessScrub10] run summon minecraft:armor_stand 502 7.3 1389 {Tags:["BusinessScrub","BusinessScrub10","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#2
execute unless entity @e[type=armor_stand,tag=BusinessScrub11] run summon minecraft:armor_stand 510 7.3 1381 {Tags:["BusinessScrub","BusinessScrub11","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#3
execute unless entity @e[type=armor_stand,tag=BusinessScrub12] run summon minecraft:armor_stand 518 7.3 1389 {Tags:["BusinessScrub","BusinessScrub12","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
tag @a add Indoors
tp @s 510 8 1399 180 ~
