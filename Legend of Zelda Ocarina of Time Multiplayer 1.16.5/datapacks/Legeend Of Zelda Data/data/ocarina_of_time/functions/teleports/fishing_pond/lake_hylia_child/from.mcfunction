scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/kakariko_village

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/fishing_pond/loot_reset
execute if entity @s[scores={LoadZone=15..}] run tp @s 433 65 2719 90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
