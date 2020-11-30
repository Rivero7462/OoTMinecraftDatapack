execute if entity @s[tag=InDekuTree] run function ocarina_of_time:items/compass/deku_tree
execute if entity @s[tag=InForestTemple] run function ocarina_of_time:items/compass/forest_temple
execute if entity @s[tag=InDodongoCavern] run function ocarina_of_time:items/compass/dodongo_cavern
execute if entity @s[tag=InFireTemple] run function ocarina_of_time:items/compass/fire_temple
execute if entity @s[tag=InJabuJabu] run function ocarina_of_time:items/compass/jabu_jabu
execute if entity @s[tag=InIceCavern] run function ocarina_of_time:items/compass/ice_cavern
execute if entity @s[tag=InWaterTemple] run function ocarina_of_time:items/compass/water_temple
execute if entity @s[tag=InWell] run function ocarina_of_time:items/compass/well
execute if entity @s[tag=InShadowTemple] run function ocarina_of_time:items/compass/shadow_temple
execute if entity @s[tag=InSpiritTemple] run function ocarina_of_time:items/compass/spirit_temple

execute as @e[type=area_effect_cloud,tag=CompassChest] at @s run function ocarina_of_time:items/compass/count

execute as @e[type=area_effect_cloud,tag=CompassChest1] at @s run tellraw @a ["",{"text":"There are "},{"score":{"name":"$empty_chests","objective":"Compass"},"color":"red"},{"text":" Chests remaining."}]

scoreboard players set $empty_chests Compass 0
kill @e[type=area_effect_cloud,tag=CompassChest]
