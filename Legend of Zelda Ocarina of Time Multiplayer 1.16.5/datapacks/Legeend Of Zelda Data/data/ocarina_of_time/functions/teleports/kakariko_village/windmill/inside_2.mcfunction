function ocarina_of_time:music/song_of_storms
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kakariko_village/enemies
function ocarina_of_time:teleports/kakariko_village/loot_reset
execute unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
tag @s add InWindmill
tag @a add Indoors
tp @s 1577 52 1929
