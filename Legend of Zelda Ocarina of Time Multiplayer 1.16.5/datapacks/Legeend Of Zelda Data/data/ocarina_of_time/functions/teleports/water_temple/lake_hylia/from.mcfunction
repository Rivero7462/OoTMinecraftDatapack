scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/water_temple

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/water_temple/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/water_temple/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 1063 53 3005 0 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
