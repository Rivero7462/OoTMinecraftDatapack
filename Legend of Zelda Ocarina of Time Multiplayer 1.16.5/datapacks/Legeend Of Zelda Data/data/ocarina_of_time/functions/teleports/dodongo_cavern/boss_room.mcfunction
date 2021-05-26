function ocarina_of_time:teleports/dodongo_cavern/loot_reset
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/remove_teleports
time set day
function ocarina_of_time:music/hyrule_field
effect clear @s minecraft:levitation
execute unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
tag @s add InDeathMountain
tp @s 2010 93 1456 180 ~
