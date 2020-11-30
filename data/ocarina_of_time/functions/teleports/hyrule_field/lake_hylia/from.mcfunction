scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add EponaSpot

execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/hyrule_field/loot_reset
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/hyrule_field/enemies
execute if entity @s[scores={LoadZone=20..}] run tp @s 793 54 2242 -140 ~
execute if entity @s[scores={LoadZone=20..}] as @e[type=horse,tag=Epona] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={LoadZone=20..}] run scoreboard players reset @s LoadZone
