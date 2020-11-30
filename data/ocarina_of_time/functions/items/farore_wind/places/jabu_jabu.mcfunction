execute if entity @s[scores={timer=1}] if entity @a[tag=MeetJabuJabu2] run scoreboard players set @e[type=area_effect_cloud,tag=JabuJabu] lifetime 0
execute if entity @s[scores={timer=1}] if entity @a[tag=MeetJabuJabu2] run tag @a remove MeetJabuJabu2
execute if entity @s[scores={timer=1}] run tag @a add InJabuJabu
execute if entity @s[scores={timer=1}] run tag @a add InDungeon
execute if entity @s[scores={timer=1}] run spawnpoint @a 1680 59 1294
execute if entity @s[scores={timer=1}] run tp @a 1678 59 1294

execute if entity @s[scores={timer=19}] run tag @s add StopTime
execute if entity @s[scores={timer=19}] run function ocarina_of_time:music/jabu_jabu
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/jabu_jabu/loot_reset
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/jabu_jabu/enemies
