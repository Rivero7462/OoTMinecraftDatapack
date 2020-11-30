scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run tag @s add NoOcarina
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/castle_courtyard
execute if entity @s[scores={LoadZone=1}] if entity @s[scores={time=13001..23000}] run stopsound @s music

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/hyrule_castle/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/hyrule_castle/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 958 87.5 431.0 90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
