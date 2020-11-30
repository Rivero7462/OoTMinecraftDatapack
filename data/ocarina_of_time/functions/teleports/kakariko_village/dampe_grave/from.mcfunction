scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=15..}] run tag @a remove ResetRace
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/kakariko_village/dampe_grave/inside
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
