execute if entity @a[tag=MeetJabuJabu2] run scoreboard players set @e[type=area_effect_cloud,tag=JabuJabu] lifetime 0
execute if entity @a[tag=MeetJabuJabu2] run tag @a remove MeetJabuJabu2
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/zora_fountain/loot_reset
function ocarina_of_time:teleports/remove_teleports
spawnpoint @a 1680 59 1294
tag @a add InJabuJabu
tag @a add InDungeon
tp @s 1680 59 1294
