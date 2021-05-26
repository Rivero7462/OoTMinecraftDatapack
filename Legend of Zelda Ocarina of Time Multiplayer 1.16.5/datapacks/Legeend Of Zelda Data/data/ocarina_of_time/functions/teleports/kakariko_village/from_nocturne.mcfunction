scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run tag @e[type=area_effect_cloud,tag=Songs] add TeleportSongTimer

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kakariko_village/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kakariko_village/enemies
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kakariko_village/grave_reset
execute if entity @s[scores={LoadZone=15..}] run tag @s add InGraveyard
execute if entity @s[scores={LoadZone=15..}] run tp @s 1648 82.5 1950 90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
