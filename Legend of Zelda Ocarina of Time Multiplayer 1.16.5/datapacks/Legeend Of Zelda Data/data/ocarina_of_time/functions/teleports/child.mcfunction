scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:teleports/remove_teleports
execute if entity @s[scores={LoadZone=1}] run tag @a add InKokiriForest
execute if entity @s[scores={LoadZone=1}] run scoreboard players reset @e[type=area_effect_cloud,tag=Progress] Die
execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/inside_house

execute if entity @s[scores={LoadZone=15..}] run kill @e[type=armor_stand,tag=OwlStand8]
execute if entity @s[scores={LoadZone=15..}] run tag @a remove LostWoodsOwl2
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kokiri_forest/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kokiri_forest/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @a -572 51 -597 180 0
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
