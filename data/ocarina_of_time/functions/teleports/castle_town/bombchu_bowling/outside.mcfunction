execute unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/castle_town
execute if entity @s[scores={time=13001..23000}] run stopsound @a music
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_town/loot_reset
tp @s 874 70 1426
