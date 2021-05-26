execute if entity @s[tag=ShardAgonyStart] run effect give @s minecraft:luck 1000000 0 true
execute if entity @s[tag=ShardAgonyStart] run scoreboard objectives add ShardAgony dummy
execute if entity @s[tag=ShardAgonyStart] run scoreboard players add @s ShardAgony 1
execute if entity @s[scores={ShardAgony=1}] run playsound minecraft:block.note_block.bell ambient @s ~ ~ ~ .5 1.2
execute if entity @s[scores={ShardAgony=14..}] run scoreboard players set @s ShardAgony 0

execute unless entity @s[tag=ShardAgonyStart] run effect clear @s minecraft:luck
execute unless entity @s[tag=ShardAgonyStart] run scoreboard players reset @s ShardAgony
