execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/death_mountain/enemies
function ocarina_of_time:teleports/death_mountain/loot_reset
fill 2035 131 1310 2035 131 1310 minecraft:polished_andesite
fill 2021 131 1310 2021 131 1310 minecraft:polished_andesite
tag @a remove StopTime
tp @s 2023 157 1346
