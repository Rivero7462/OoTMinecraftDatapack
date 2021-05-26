execute if block 2015 112 1451 minecraft:air unless entity @a[tag=Adult] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=110..}] unless entity @a[tag=Adult] run fill 2015 112 1451 2015 112 1451 minecraft:tnt
execute if entity @s[scores={timer=110..}] run scoreboard players set @s timer 0

#Wall
execute unless block 2008 93 1452 minecraft:mossy_cobblestone run fill 2012 93 1452 2008 97 1452 minecraft:air replace minecraft:mossy_cobblestone
execute unless block 2012 93 1452 minecraft:mossy_cobblestone run fill 2012 93 1452 2008 97 1452 minecraft:air replace minecraft:mossy_cobblestone
execute unless block 2010 93 1452 minecraft:mossy_cobblestone run fill 2012 93 1452 2008 97 1452 minecraft:air replace minecraft:mossy_cobblestone
execute unless block 2009 97 1452 minecraft:mossy_cobblestone run fill 2012 93 1452 2008 97 1452 minecraft:air replace minecraft:mossy_cobblestone
execute unless block 2011 97 1452 minecraft:mossy_cobblestone run fill 2012 93 1452 2008 97 1452 minecraft:air replace minecraft:mossy_cobblestone

execute if block 2008 93 1452 minecraft:air if block 2012 93 1452 minecraft:air if block 2010 93 1452 minecraft:air unless block 2010 91 1449 minecraft:gold_block run tag @a add DodongoBoulder
execute as @e[type=armor_stand,tag=Goron10] at @a if entity @a[tag=DodongoBoulder] run function ocarina_of_time:moving_things/death_mountain/dodongo_boulder

#Goron Watching
execute if block 2012 93 1452 minecraft:air unless block 2010 91 1452 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Goron10] text 3
execute if block 2012 93 1452 minecraft:air unless block 2010 91 1452 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Goron2] text 2
execute if block 2012 93 1452 minecraft:air unless block 2010 91 1452 minecraft:gold_block run fill 2010 91 1452 2010 91 1452 minecraft:gold_block
