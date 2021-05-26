scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/ice_cavern

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ice_cavern/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ice_cavern/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 2050 26 2365 170 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
