execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={time=13001..23000}] run stopsound @s music
function ocarina_of_time:teleports/castle_field/loot_reset
fill 940 76 967 940 76 967 minecraft:polished_andesite
fill 954 76 967 954 76 967 minecraft:polished_andesite
tp @s 944 74 940 120 ~
