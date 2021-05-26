execute if entity @s[scores={timer=1}] run tag @a add InFireTemple
execute if entity @s[scores={timer=1}] run tag @a add HotArea
execute if entity @s[scores={timer=1}] run tag @a add InDungeon
execute if entity @s[scores={timer=1}] run spawnpoint @a 3072 121 1960
execute if entity @s[scores={timer=1}] run tp @a 3072 121 1962

execute if entity @s[scores={timer=19}] run tag @s add StopTime
execute if entity @s[scores={timer=19}] run function ocarina_of_time:music/fire_temple
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/fire_temple/loot_reset
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/fire_temple/enemies
