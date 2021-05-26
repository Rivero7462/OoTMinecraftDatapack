scoreboard objectives add CrouchCucco minecraft.custom:minecraft.sneak_time
execute unless entity @s[scores={timer=9..}] run data merge entity @s {NoAI:1b}
execute unless entity @s[tag=ThrowingCucco] run tp @s ~ ~2.5 ~ ~ ~

#Throw
execute if entity @a[scores={CrouchCucco=1..}] run tag @s add ThrowingCucco
execute if entity @a[scores={CrouchCucco=1..}] run scoreboard objectives remove CrouchCucco

execute if entity @s[scores={timer=1..8}] anchored eyes at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^-.7 ^.5

execute if entity @s[scores={timer=9..}] anchored eyes at @s run function ocarina_of_time:items/dog/dog_2

#Drop
execute if block ~ ~ ~ minecraft:ladder run function ocarina_of_time:items/dog/dog_2
execute if block ~ ~ ~ minecraft:ladder run tag @s remove HoldingCucco
execute if block ~ ~ ~ minecraft:water run function ocarina_of_time:items/dog/dog_2
execute if block ~ ~ ~ minecraft:water run tag @s remove HoldingCucco

execute if entity @a[tag=ChickenTutorial] run tellraw @a ["",{"text":"Dog: ","color":"gold"},{"text":"Crouch to throw me!"}]
execute if entity @a[tag=ChickenTutorial] run tag @a remove ChickenTutorial

#Rotation
data modify entity @s Rotation[1] set value 0f
