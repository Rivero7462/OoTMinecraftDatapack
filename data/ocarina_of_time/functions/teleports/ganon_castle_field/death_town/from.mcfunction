scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run stopsound @s music

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_castle_field/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_castle_field/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 1376 71 527 -145 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
