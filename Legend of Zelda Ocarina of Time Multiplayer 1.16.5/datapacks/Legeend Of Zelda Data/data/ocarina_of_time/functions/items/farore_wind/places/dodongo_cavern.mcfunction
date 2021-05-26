execute if entity @s[scores={timer=1}] run tag @a add InDodongoCavern
execute if entity @s[scores={timer=1}] run tag @a add InDungeon
execute if entity @s[scores={timer=1}] run spawnpoint @a 2208 59 1925
execute if entity @s[scores={timer=1}] run tp @a 2208 59 1927

execute if entity @s[scores={timer=19}] run tag @s add StopTime
execute if entity @s[scores={timer=19}] run function ocarina_of_time:music/dodongo_cavern
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/dodongo_cavern/loot_reset
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/dodongo_cavern/enemies
