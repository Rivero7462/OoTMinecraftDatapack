execute if entity @s[scores={timer=1}] run tag @a add InWaterTemple
execute if entity @s[scores={timer=1}] run tag @a add InDungeon
execute if entity @s[scores={timer=1}] run spawnpoint @a 1063 69 3056
execute if entity @s[scores={timer=1}] run tp @a 1063 69 3054

execute if entity @s[scores={timer=19}] run tag @s add StopTime
execute if entity @s[scores={timer=19}] run function ocarina_of_time:music/water_temple
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/water_temple/loot_reset
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/water_temple/enemies
