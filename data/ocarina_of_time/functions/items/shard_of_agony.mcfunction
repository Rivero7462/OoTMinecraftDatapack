execute if entity @a[tag=ShardAgonyStart] run effect give @a minecraft:luck 1000000 0 true
execute if entity @a[tag=ShardAgonyStart] run scoreboard objectives add ShardAgony dummy
execute if entity @a[tag=ShardAgonyStart] run scoreboard players add @a ShardAgony 1
execute if entity @a[scores={ShardAgony=1}] run playsound minecraft:block.note_block.bell ambient @a ~ ~ ~ .5 1.2
execute if entity @a[scores={ShardAgony=14..}] run scoreboard players set @a ShardAgony 0

execute unless entity @a[tag=ShardAgonyStart] run effect clear @a minecraft:luck
execute unless entity @a[tag=ShardAgonyStart] run scoreboard objectives remove ShardAgony
