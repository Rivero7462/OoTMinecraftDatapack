scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/underground_ganon_castle

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_castle_underground/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_castle_underground/enemies
execute if entity @s[scores={LoadZone=15..}] run tag @s add NoTeleport
execute if entity @s[scores={LoadZone=15..}] run tp @s -491 32 1995 0 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
