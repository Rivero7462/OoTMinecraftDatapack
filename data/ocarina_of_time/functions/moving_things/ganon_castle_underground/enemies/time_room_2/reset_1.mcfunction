kill @e[type=armor_stand,tag=SilverRupeeSet2]
execute unless block -580 20 1974 minecraft:stone_pressure_plate unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee1] run summon minecraft:armor_stand -570 24 1974 {Tags:["SilverRupee1","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless block -580 20 1974 minecraft:stone_pressure_plate unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee2] run summon minecraft:armor_stand -570 20 1986 {Tags:["SilverRupee2","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless block -580 20 1974 minecraft:stone_pressure_plate unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee3] run summon minecraft:armor_stand -571 20 1977 {Tags:["SilverRupee3","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless block -580 20 1974 minecraft:stone_pressure_plate unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee4] run summon minecraft:armor_stand -571 20 1971 {Tags:["SilverRupee4","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}
execute unless block -580 20 1974 minecraft:stone_pressure_plate unless entity @e[type=armor_stand,tag=SilverRupeeSet2,tag=SilverRupee5] run summon minecraft:armor_stand -564 20 1963 {Tags:["SilverRupee5","SilverRupee","SilverRupeeSet2"],Marker:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:3,HideFlags:63}}]}

tag @a remove TimerRoom2
tag @a add HideDisplayScore
effect give @a minecraft:wither 1 2 true
scoreboard players set @a MiniGameTime 0
fill -569 16 1974 -569 16 1974 minecraft:air
tp @a -557 20 1974 90 ~
