execute unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/castle_town
execute if entity @s[scores={time=13001..23000}] run stopsound @a music
clear @s minecraft:lever{display:{Name:"\"Small Key (Treasure Shop)\""}}
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_town/loot_reset
tag @s remove InTreasureShop
tp @s 875 70 1436
