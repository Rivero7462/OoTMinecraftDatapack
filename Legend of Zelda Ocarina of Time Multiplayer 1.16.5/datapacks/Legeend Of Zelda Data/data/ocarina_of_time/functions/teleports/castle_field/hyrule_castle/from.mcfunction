scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=0..13000}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] if entity @s[scores={time=23001..24000}] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @s[scores={LoadZone=1}] if entity @s[scores={time=13001..23000}] run stopsound @s music

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/castle_field/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/castle_field/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 915 88.5 879.0 -90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
