scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/ganon_tower

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_tower/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_tower/enemies
execute if entity @s[scores={LoadZone=15..}] run tag @s add NoTeleport
execute if entity @s[scores={LoadZone=15..}] run tp @s -494 32 1644 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
