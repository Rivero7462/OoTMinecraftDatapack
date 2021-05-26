execute unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/gerudo_valley/loot_reset
function ocarina_of_time:teleports/gerudo_valley/enemies
tp @s 352 76 2034
