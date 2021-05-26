effect clear @s minecraft:levitation
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/water_temple/loot_reset
function ocarina_of_time:teleports/remove_teleports
execute unless entity @s[tag=Adult] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Adult] run spawnpoint @a 933 31 1394
tag @s add InLakeChild
tp @s 775 64 2673
