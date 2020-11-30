execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run function ocarina_of_time:items/chest/loop
execute positioned ^ ^ ^1 if block ~ ~ ~ minecraft:chest run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ChestJingle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned ^1 ^ ^1 if block ~ ~ ~ minecraft:chest run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ChestJingle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned ^-1 ^ ^1 if block ~ ~ ~ minecraft:chest run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ChestJingle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned ^ ^1 ^1 if block ~ ~ ~ minecraft:chest run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ChestJingle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute positioned ^ ^-1 ^1 if block ~ ~ ~ minecraft:chest run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ChestJingle"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=ChestJingle] store result score @s Xpos run data get entity @s Pos[0] 1
execute as @e[type=area_effect_cloud,tag=ChestJingle] store result score @s Ypos run data get entity @s Pos[1] 1
execute as @e[type=area_effect_cloud,tag=ChestJingle] store result score @s Zpos run data get entity @s Pos[2] 1

#Jingle Items
#Kokiri Sword
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-581,Ypos=70,Zpos=-576}] run function ocarina_of_time:music/chest_jingle
#Slingshot
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=1358,Ypos=77,Zpos=-689}] run function ocarina_of_time:music/chest_jingle
#Bomb Bag
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=2226,Ypos=52,Zpos=1935}] run function ocarina_of_time:music/chest_jingle
#Boomerang
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=1737,Ypos=52,Zpos=1334}] run function ocarina_of_time:music/chest_jingle
#Hookshot
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=1638,Ypos=42,Zpos=2013}] run function ocarina_of_time:music/chest_jingle
#Fairy Bow
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=898,Ypos=68,Zpos=-1201}] run function ocarina_of_time:music/chest_jingle
#Megaton Hammer
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=3021,Ypos=158,Zpos=1965}] run function ocarina_of_time:music/chest_jingle
#Iron Boots
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=2029,Ypos=33,Zpos=2329}] run function ocarina_of_time:music/chest_jingle
#Longshot
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=1134,Ypos=66,Zpos=3125}] run function ocarina_of_time:music/chest_jingle
#Lens of Truth
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=25,Ypos=59,Zpos=1363}] run function ocarina_of_time:music/chest_jingle
#Hover Boots
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=1592,Ypos=91,Zpos=925}] run function ocarina_of_time:music/chest_jingle

#Freeze Chests
#1
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=11,Ypos=99,Zpos=860}] unless block 11 96 859 minecraft:gold_block run tag @a add Freeze
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=11,Ypos=99,Zpos=860}] unless block 11 96 859 minecraft:gold_block run fill 11 96 859 11 96 859 minecraft:gold_block
#2
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=457,Ypos=46,Zpos=813}] unless block 457 46 809 minecraft:gold_block run tag @a add Freeze
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=457,Ypos=46,Zpos=813}] unless block 457 46 809 minecraft:gold_block run fill 457 46 809 457 46 809 minecraft:gold_block
#3
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-439,Ypos=20,Zpos=1967}] unless block -439 18 1967 minecraft:gold_block run tag @a add Freeze
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-439,Ypos=20,Zpos=1967}] unless block -439 18 1967 minecraft:gold_block run fill -439 18 1967 -439 18 1967 minecraft:gold_block
#4
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-531,Ypos=20,Zpos=1970}] unless block -531 18 1970 minecraft:gold_block run tag @a add Freeze
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-531,Ypos=20,Zpos=1970}] unless block -531 18 1970 minecraft:gold_block run fill -531 18 1970 -531 18 1970 minecraft:gold_block
#5
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-539,Ypos=20,Zpos=1970}] unless block -539 18 1970 minecraft:gold_block run tag @a add Freeze
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-539,Ypos=20,Zpos=1970}] unless block -539 18 1970 minecraft:gold_block run fill -539 18 1970 -539 18 1970 minecraft:gold_block
#6
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-535,Ypos=20,Zpos=1980}] unless block -535 18 1980 minecraft:gold_block run tag @a add Freeze
execute if entity @e[type=area_effect_cloud,tag=ChestJingle,scores={Xpos=-535,Ypos=20,Zpos=1980}] unless block -535 18 1980 minecraft:gold_block run fill -535 18 1980 -535 18 1980 minecraft:gold_block



#Finish
execute run scoreboard players set @a ChestJingle 0
kill @e[type=area_effect_cloud,tag=ChestJingle]
