scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run tag @e[type=area_effect_cloud,tag=Songs] add TeleportSongTimer

execute if entity @s[scores={LoadZone=15..}] run tag @s add HotArea
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/death_mountain_crater/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/death_mountain_crater/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 2690 37.5 1940 90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
