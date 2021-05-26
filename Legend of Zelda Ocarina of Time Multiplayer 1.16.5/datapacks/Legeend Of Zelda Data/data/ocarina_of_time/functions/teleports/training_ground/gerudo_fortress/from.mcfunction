scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/dodongo_cavern

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/training_ground/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/training_ground/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 500 36 927 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
