scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/temple_of_time

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_town/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/castle_town/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 926 8 1394 -90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
