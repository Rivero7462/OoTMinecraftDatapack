execute if entity @e[type=armor_stand,tag=SilverRupeeSet2] run fill 461 34 893 461 34 893 minecraft:gold_block

execute unless entity @e[type=armor_stand,tag=SilverRupeeSet2] run fill 461 44 867 461 44 867 minecraft:stone_pressure_plate
execute unless entity @e[type=armor_stand,tag=SilverRupeeSet2] run tellraw @a ["",{"text":"Gather the "},{"text":"jewels of white ","color":"red"},{"text":"while avoiding traps and danger!"}]

execute unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee5] run summon minecraft:armor_stand 453 38 898 {Tags:["SilverRupee1","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee5] run summon minecraft:armor_stand 459 44 885 {Tags:["SilverRupee2","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee5] run summon minecraft:armor_stand 467 38 897 {Tags:["SilverRupee3","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee5] run summon minecraft:armor_stand 461 48 896 {Tags:["SilverRupee4","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee5] run summon minecraft:armor_stand 453 44 867 {Tags:["SilverRupee5","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}

tag @a add TimerRoom3
