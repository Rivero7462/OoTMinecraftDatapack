function ocarina_of_time:music/underground
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/death_mountain_crater/loot_reset
function ocarina_of_time:teleports/death_mountain_crater/enemies
tag @s add StopTime
tag @s remove HotArea
#Business Scrub
#1
execute unless entity @e[type=armor_stand,tag=BusinessScrub10] run summon minecraft:armor_stand 2664 18.3 1974 {Tags:["BusinessScrub","BusinessScrub10","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#2
execute unless entity @e[type=armor_stand,tag=BusinessScrub11] run summon minecraft:armor_stand 2672 18.3 1966 {Tags:["BusinessScrub","BusinessScrub11","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
#3
execute unless entity @e[type=armor_stand,tag=BusinessScrub12] run summon minecraft:armor_stand 2680 18.3 1974 {Tags:["BusinessScrub","BusinessScrub12","Npc"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1,tag:{CustomModelData:105}}]}
tp @s 2672 19 1984 180 ~
