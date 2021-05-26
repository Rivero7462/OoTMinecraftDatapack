function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kokiri_forest/enemies
function ocarina_of_time:teleports/kokiri_forest/loot_reset
#Business Scrubs
#1
execute unless entity @a[tag=Adult] unless entity @e[type=armor_stand,tag=BusinessScrub6] run summon minecraft:armor_stand -583 75.3 -694 {Tags:["BusinessScrub","BusinessScrub6","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#2
execute unless entity @a[tag=Adult] unless entity @e[type=armor_stand,tag=BusinessScrub7] run summon minecraft:armor_stand -580 75.3 -705 {Tags:["BusinessScrub","BusinessScrub7","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
tag @a add Indoors
tp @s -571 75 -700
