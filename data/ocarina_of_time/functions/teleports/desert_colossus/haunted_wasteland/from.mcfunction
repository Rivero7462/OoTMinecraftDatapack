scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/desert_colossus/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/desert_colossus/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 413 58 530 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
