execute if entity @s[scores={timer=1}] run tag @a add InDekuTree
execute if entity @s[scores={timer=1}] run tag @a add InDungeon
execute if entity @s[scores={timer=1}] run spawnpoint @a 1356 97 -637
execute if entity @s[scores={timer=1}] run tp @a 1358 97 -637

execute if entity @s[scores={timer=19}] run tag @s add StopTime
execute if entity @s[scores={timer=19}] run function ocarina_of_time:music/underground
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/deku_tree/loot_reset
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/deku_tree/enemies
