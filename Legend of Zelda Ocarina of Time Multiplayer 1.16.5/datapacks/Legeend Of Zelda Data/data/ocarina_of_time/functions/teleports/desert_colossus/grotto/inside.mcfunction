function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/desert_colossus/loot_reset
function ocarina_of_time:teleports/desert_colossus/enemies
tag @s add StopTime
#Business Scrub
#1
execute unless entity @e[type=armor_stand,tag=BusinessScrub10] run summon minecraft:armor_stand 438 33.3 420 {Tags:["BusinessScrub","BusinessScrub10","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#2
execute unless entity @e[type=armor_stand,tag=BusinessScrub11] run summon minecraft:armor_stand 436 33.3 416 {Tags:["BusinessScrub","BusinessScrub11","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
tag @a add Indoors
tp @s 437 33 429 180 ~
