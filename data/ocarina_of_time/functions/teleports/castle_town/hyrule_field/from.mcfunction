scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/castle_town

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_town/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/castle_town/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 884 70 1468 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
