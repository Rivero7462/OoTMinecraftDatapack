scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[scores={LoadZone=1}] if entity @s[scores={time=13001..23000}] run stopsound @s music

execute if entity @s[scores={LoadZone=20..}] if block 408 47 404 minecraft:gold_block run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=20..}] if block 408 47 404 minecraft:gold_block run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=20..}] if block 408 47 404 minecraft:gold_block run function ocarina_of_time:teleports/desert_colossus/loot_reset
execute if entity @s[scores={LoadZone=20..}] if block 408 47 404 minecraft:gold_block run function ocarina_of_time:teleports/desert_colossus/enemies
execute if entity @s[scores={LoadZone=20..}] if block 408 47 404 minecraft:gold_block run tp @s 408 56 387 0 ~
execute if entity @s[scores={LoadZone=20..}] if block 408 47 404 minecraft:gold_block unless block 407 48 414 minecraft:gold_block run tag @s add LearnRequiem
execute if entity @s[scores={LoadZone=20..}] if block 408 47 404 minecraft:gold_block run scoreboard players reset @s LoadZone
