scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/forest_temple
execute if entity @s[scores={LoadZone=1}] run fill 919 68 -1194 919 68 -1194 minecraft:stone_pressure_plate
execute if entity @s[scores={LoadZone=1}] unless block 894 65 -1188 minecraft:gold_block run kill @e[type=zombie,tag=Stalfos]
execute if entity @s[scores={LoadZone=1}] unless block 894 69 -1211 minecraft:gold_block run fill 895 69 -1211 897 69 -1211 minecraft:air
execute if entity @s[scores={LoadZone=1}] if block 898 57 -1193 minecraft:gold_block unless block 898 57 -1196 minecraft:gold_block run kill @e[type=zombie,tag=Stalfos]
execute if entity @s[scores={LoadZone=1}] if block 898 57 -1193 minecraft:gold_block unless block 898 57 -1196 minecraft:gold_block run fill 898 57 -1193 898 57 -1193 minecraft:air
execute if entity @s[scores={LoadZone=1}] unless block 894 65 -1188 minecraft:gold_block run fill 894 65 -1190 894 65 -1190 minecraft:air

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/forest_temple/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/forest_temple/enemies
execute if entity @s[scores={LoadZone=15..}] run tp @s 898 57 -1101 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
