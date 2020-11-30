scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/fire_temple

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/fire_temple/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/fire_temple/enemies
execute if entity @s[scores={LoadZone=15..}] run tag @s add HotArea
execute if entity @s[scores={LoadZone=15..}] run tp @s 3074 42 1980 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
