scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/dodongo_cavern

execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/dodongo_cavern/loot_reset
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/dodongo_cavern/enemies
execute if entity @s[scores={LoadZone=20..}] run tp @s 2192 35 1976 180 ~
execute if entity @s[scores={LoadZone=20..}] run scoreboard players reset @s LoadZone
