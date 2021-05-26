execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/zora_fountain/loot_reset
function ocarina_of_time:teleports/zora_fountain/enemies
fill 1458 58 1389 1458 58 1389 minecraft:polished_andesite
fill 1444 58 1389 1444 58 1389 minecraft:polished_andesite
tp @s 1441 55 1352 180 ~
