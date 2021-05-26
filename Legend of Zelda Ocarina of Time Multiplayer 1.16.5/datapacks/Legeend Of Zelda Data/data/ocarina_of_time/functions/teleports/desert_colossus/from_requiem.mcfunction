scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @a add Indoors
execute if entity @s[scores={LoadZone=1}] run tag @e[type=area_effect_cloud,tag=Songs] add TeleportSongTimer

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/desert_colossus/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/desert_colossus/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 461 54.5 402 45 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
