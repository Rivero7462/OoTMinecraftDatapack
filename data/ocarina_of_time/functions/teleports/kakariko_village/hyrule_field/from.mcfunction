scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] if entity @a[tag=Adult] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion,tag=!FinishKakariko] run function ocarina_of_time:music/kakariko_village
execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] unless entity @a[tag=Adult] run function ocarina_of_time:music/kakariko_village

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kakariko_village/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kakariko_village/enemies
execute if entity @s[scores={LoadZone=15..}] if entity @a[tag=Adult] as @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] unless entity @s[tag=FinishKakariko] run tag @a add KakarikoSheik
execute if entity @s[scores={LoadZone=15..}] run tp @s 1474 69 1938 -90 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
