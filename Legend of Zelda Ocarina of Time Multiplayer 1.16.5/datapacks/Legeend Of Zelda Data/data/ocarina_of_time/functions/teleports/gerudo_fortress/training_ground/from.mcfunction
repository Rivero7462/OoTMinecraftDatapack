scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={LoadZone=1}] if entity @s[scores={time=13001..23000}] run stopsound @s music
execute if entity @s[scores={LoadZone=1}] run tag @s add EponaSpot
execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/gerudo_fortress/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/gerudo_fortress/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s -53 70 1997 0 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
