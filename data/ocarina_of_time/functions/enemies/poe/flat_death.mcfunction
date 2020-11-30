scoreboard players add @s timer 1
tag @s add Npc

execute if block ~ ~1.5 ~ minecraft:air if entity @s[scores={timer=1..100}] run tp @s ~ ~-.3 ~
execute if entity @s[scores={timer=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:84}}],HandItems:[{},{}]}
execute if entity @s[scores={timer=1}] unless block 1643 75 1946 minecraft:gold_block unless block 1643 75 1944 minecraft:gold_block run scoreboard players set @s text 1
execute if entity @s[scores={timer=1}] unless block 1643 75 1946 minecraft:gold_block if block 1643 75 1944 minecraft:gold_block run scoreboard players set @s text 2
execute if entity @s[scores={timer=1}] if block 1643 75 1946 minecraft:gold_block run scoreboard players set @s text 3

execute unless block ~ ~1.5 ~ minecraft:air run particle minecraft:entity_effect ~ ~1.7 ~ 0 1 0 5 0
execute unless block ~ ~1.5 ~ minecraft:air run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute unless block ~ ~1.5 ~ minecraft:air unless entity @s[tag=Sound] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 .9
execute unless block ~ ~1.5 ~ minecraft:air run tag @s add Sound

execute unless block ~ ~1.5 ~ minecraft:air if entity @a[distance=..1.9] run kill @s
execute if entity @s[scores={timer=200..}] run kill @s
