effect clear @s minecraft:levitation
function ocarina_of_time:teleports/shadow_temple/loot_reset
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/remove_teleports
execute unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
tag @s add InGraveyard
tag @s add InKakarikoVillage
tp @s 994 26 1466 0 0
