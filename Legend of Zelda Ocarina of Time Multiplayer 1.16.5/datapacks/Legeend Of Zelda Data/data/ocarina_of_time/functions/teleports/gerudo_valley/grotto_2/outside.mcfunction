function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/gerudo_valley/loot_reset
function ocarina_of_time:teleports/gerudo_valley/enemies
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={LoadZone=1}] if entity @s[scores={time=13001..23000}] run stopsound @s music
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
tag @s add EponaSpot
tp @s 384 64 2067 180 ~
