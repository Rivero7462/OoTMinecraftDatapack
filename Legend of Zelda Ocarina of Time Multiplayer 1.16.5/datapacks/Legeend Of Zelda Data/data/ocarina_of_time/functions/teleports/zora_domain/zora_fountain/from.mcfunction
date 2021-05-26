scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/zora_domain

execute if entity @s[scores={LoadZone=15..}] if entity @a[tag=FixZora] run scoreboard players set @e[type=armor_stand,tag=Zora3] text 2
execute if entity @s[scores={LoadZone=15..}] if entity @a[tag=FixZora] run fill 1756 22 2318 1756 22 2318 minecraft:gold_block
execute if entity @s[scores={LoadZone=15..}] if entity @a[tag=FixZora] run tag @a remove FixZora
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/zora_domain/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/zora_domain/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 1770 59 2270 -35 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
