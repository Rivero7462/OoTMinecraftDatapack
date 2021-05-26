#Above Head
scoreboard objectives add HoldingCrate minecraft.custom:minecraft.sneak_time
execute at @a unless entity @s[tag=Throw] run tp @s ~ ~2 ~ ~ 0

#Touch Water
execute if block ~ ~ ~ minecraft:water run tag @a remove Holding
execute if block ~ ~ ~ minecraft:water run scoreboard objectives remove HoldingCrate
execute if block ~ ~ ~ minecraft:water run kill @s

#Throw
execute at @a if block ~ ~1 ~ minecraft:water run scoreboard players set @a HoldingCrate 1
execute at @a if block ~ ~1 ~ minecraft:water run scoreboard objectives remove CrouchRuto
execute if entity @a[scores={HoldingCrate=1..}] run tag @s add Throw
execute if entity @s[tag=Throw] run scoreboard players add @s lifetime 1

#Tp
#Forward/Up
execute if entity @s[scores={lifetime=1..15}] unless block ~ ~.5 ~ minecraft:air if block ^ ^ ^1 minecraft:air if block ^-.4 ^ ^.5 minecraft:air if block ^.4 ^ ^.5 minecraft:air run tp @s ^ ^ ^.25
execute if entity @s[scores={lifetime=1..15}] if block ~ ~.5 ~ minecraft:air if block ^ ^ ^1 minecraft:air if block ^-.4 ^ ^.5 minecraft:air if block ^.4 ^ ^.5 minecraft:air run tp @s ^ ^.1 ^.25
#Down/Forward
execute if entity @s[scores={lifetime=15..24}] if block ^ ^ ^1 minecraft:air if block ^-.4 ^ ^.5 minecraft:air if block ^.4 ^ ^.5 minecraft:air run tp @s ^ ^-.5 ^.25
execute if entity @s[scores={lifetime=15..24}] unless block ^ ^ ^1 minecraft:air unless block ^-.4 ^ ^.5 minecraft:air unless block ^.4 ^ ^.5 minecraft:air run tp @s ^ ^-.5 ^
#Down
execute if entity @s[scores={lifetime=24..}] run tp @s ~ ~-.5 ~

#Stop Holding
execute if entity @s[tag=Throw] run tag @a remove Holding
execute if entity @s[tag=Throw] run scoreboard objectives remove HoldingCrate

#Place Crate
execute if entity @s[scores={lifetime=15..}] unless block ~ ~ ~ minecraft:air run fill ~ ~1 ~ ~ ~1 ~ minecraft:oak_planks replace minecraft:air
execute if entity @s[scores={lifetime=15..}] unless block ~ ~ ~ minecraft:air run kill @s
