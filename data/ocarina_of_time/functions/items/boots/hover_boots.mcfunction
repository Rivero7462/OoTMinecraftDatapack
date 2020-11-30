effect give @a minecraft:jump_boost 1 0 true

execute unless entity @s[tag=HoverFloat] if block ~ ~-.1 ~ minecraft:air run scoreboard players add @s HoverJump 1
execute if entity @s[scores={HoverJump=5..}] run tag @s add HoverFloat
execute if entity @s[scores={HoverJump=5..}] unless entity @s[tag=HoverFloat] run scoreboard players set @s HoverTimer 0
execute if entity @s[scores={HoverJump=5..}] run scoreboard players set @s HoverJump 0

execute if entity @s[tag=HoverFloat] run scoreboard players add @s HoverTimer 1

execute if entity @s[scores={HoverTimer=1..20}] run effect give @s minecraft:slow_falling 1 1 true
execute if entity @s[scores={HoverTimer=1..20}] run particle minecraft:falling_dust minecraft:yellow_wool ~ ~ ~ .1 0 .1 10 10 normal @s

execute if entity @s[scores={HoverTimer=1..20}] unless block ~ ~-.1 ~ minecraft:air run scoreboard players set @s HoverTimer 21

execute if entity @s[scores={HoverTimer=21..}] run effect clear @s minecraft:slow_falling
execute if entity @s[scores={HoverTimer=21..}] unless block ~ ~-.1 ~ minecraft:air run tag @s remove HoverFloat
execute if entity @s[scores={HoverTimer=21..}] unless block ~ ~-.1 ~ minecraft:air run scoreboard players set @s HoverTimer 0
