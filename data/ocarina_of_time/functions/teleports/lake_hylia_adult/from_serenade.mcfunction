scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @e[type=area_effect_cloud,tag=Songs] add TeleportSongTimer
execute if entity @s[scores={LoadZone=1}] run tag @s add EponaSpot

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/lake_hylia_adult/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/lake_hylia_adult/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 1395 66.5 2787 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
