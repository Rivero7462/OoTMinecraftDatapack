tag @s add EponaSpot
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/lon_lon_ranch/loot_reset
function ocarina_of_time:teleports/lon_lon_ranch/enemies
execute unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/lon_lon_ranch
execute if entity @s[scores={time=13001..23000}] run stopsound @a music
tp @s 423 30 1402
