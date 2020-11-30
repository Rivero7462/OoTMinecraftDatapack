function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/goron_city/loot_reset
function ocarina_of_time:teleports/goron_city/enemies
tag @s add StopTime
#Business Scrub
#1
execute unless entity @e[type=armor_stand,tag=BusinessScrub10] run summon minecraft:armor_stand 2200 52.3 1787 {Tags:["BusinessScrub","BusinessScrub10","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#2
execute unless entity @e[type=armor_stand,tag=BusinessScrub11] run summon minecraft:armor_stand 2208 52.3 1779 {Tags:["BusinessScrub","BusinessScrub11","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#3
execute unless entity @e[type=armor_stand,tag=BusinessScrub12] run summon minecraft:armor_stand 2216 52.3 1787 {Tags:["BusinessScrub","BusinessScrub12","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
tp @s 2208 53 1797 180 ~
