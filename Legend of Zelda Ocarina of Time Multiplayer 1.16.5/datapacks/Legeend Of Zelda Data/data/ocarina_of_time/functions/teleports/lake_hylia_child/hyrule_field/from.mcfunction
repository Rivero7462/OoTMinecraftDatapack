scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add EponaSpot

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/lake_hylia_child/loot_reset
execute if entity @s[scores={LoadZone=15..}] if entity @a[tag=Adult] run function ocarina_of_time:teleports/lake_hylia_child/adult_enemies
execute if entity @s[scores={LoadZone=15..}] unless entity @a[tag=Adult] run function ocarina_of_time:teleports/lake_hylia_child/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 747 71 2643 0 ~
execute if entity @s[scores={LoadZone=15..}] as @e[type=horse,tag=Epona] at @s run tp @s ~ ~1 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
