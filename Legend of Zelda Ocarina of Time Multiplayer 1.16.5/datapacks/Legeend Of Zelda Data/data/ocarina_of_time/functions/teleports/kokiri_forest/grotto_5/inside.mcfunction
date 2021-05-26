tag @a add StopParticles
function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kokiri_forest/loot_reset
function ocarina_of_time:teleports/kokiri_forest/enemies
tag @s add StopTime
#Business Scrub
#1
execute unless entity @e[type=armor_stand,tag=BusinessScrub12] run summon minecraft:armor_stand -575 50.3 -805 {Tags:["BusinessScrub","BusinessScrub12","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#2
execute unless entity @e[type=armor_stand,tag=BusinessScrub13] run summon minecraft:armor_stand -577 50.3 -809 {Tags:["BusinessScrub","BusinessScrub13","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
tag @a add Indoors
tp @s -576 50 -796 180 ~
