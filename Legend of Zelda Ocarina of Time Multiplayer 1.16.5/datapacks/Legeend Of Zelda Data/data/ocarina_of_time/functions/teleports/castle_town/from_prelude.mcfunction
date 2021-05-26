scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @a add Indoors
execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run tag @e[type=area_effect_cloud,tag=Songs] add TeleportSongTimer

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/castle_town/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/castle_town/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 936 8.5 1394 90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
