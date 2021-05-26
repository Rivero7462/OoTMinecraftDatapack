execute if entity @s[scores={timer=1}] run tag @a add InSpiritTemple
execute if entity @s[scores={timer=1}] run tag @a add InDungeon
execute if entity @s[scores={timer=1}] run spawnpoint @a -27 105 865
execute if entity @s[scores={timer=1}] run tp @a -27 108 865

execute if entity @s[scores={timer=19}] run tag @s add StopTime
execute if entity @s[scores={timer=19}] run function ocarina_of_time:music/spirit_temple
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/spirit_temple/loot_reset
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/spirit_temple/enemies
