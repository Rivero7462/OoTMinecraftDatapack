execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/gerudo_valley
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/desert_colossus/enemies
function ocarina_of_time:teleports/desert_colossus/loot_reset
fill 467 40 477 467 40 477 minecraft:polished_andesite
fill 453 40 477 453 40 477 minecraft:polished_andesite
tp @s 452 60 483 90 ~
