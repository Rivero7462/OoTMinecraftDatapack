scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run tag @e[type=area_effect_cloud,tag=Songs] add TeleportSongTimer

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kokiri_forest/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kokiri_forest/enemies
execute if entity @s[scores={LoadZone=15..}] run tag @s add InLostWoods
execute if entity @s[scores={LoadZone=15..}] run tp @s -572 83.5 -818 0 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
