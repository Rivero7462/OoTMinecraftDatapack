scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/kokiri_forest

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kokiri_forest/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kokiri_forest/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s -487 60 -642 90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
