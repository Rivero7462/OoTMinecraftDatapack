effect give @a minecraft:jump_boost 1 0 true
scoreboard objectives add CrouchCucco minecraft.custom:minecraft.sneak_time
execute unless entity @s[scores={timer=9..}] run data merge entity @s {NoAI:1b}
execute unless entity @s[tag=ThrowingCucco] run tp @s ~ ~2.5 ~ ~ ~

execute at @a if block ~ ~-.6 ~ minecraft:air run tag @s add Float
execute if entity @s[tag=Float] run scoreboard players add @s RedRupee 1
execute if entity @s[scores={RedRupee=5}] if block ~ ~-.6 ~ minecraft:air unless entity @e[type=armor_stand,tag=CuccoFloat] run summon minecraft:armor_stand ~ ~ ~ {Tags:["CuccoFloat"],Marker:1b,NoGravity:1b,Invisible:1b}

execute at @a unless block ~ ~-.6 ~ minecraft:air run tag @s remove Float
execute at @a unless block ~ ~-.6 ~ minecraft:air run scoreboard players set @s RedRupee 0
execute at @a unless block ~ ~-.6 ~ minecraft:air run kill @e[type=armor_stand,tag=CuccoFloat]

execute if entity @s[scores={RedRupee=5..40}] unless entity @s[tag=ThrowingCucco] at @a if block ~ ~-.6 ~ minecraft:air as @e[type=armor_stand,tag=CuccoFloat] at @s run tp @s ~ ~-.05 ~
execute if entity @s[scores={RedRupee=41..70}] unless entity @s[tag=ThrowingCucco] at @a if block ~ ~-.6 ~ minecraft:air as @e[type=armor_stand,tag=CuccoFloat] at @s run tp @s ~ ~-.1 ~
execute if entity @s[scores={RedRupee=71..}] unless entity @s[tag=ThrowingCucco] at @a if block ~ ~-.6 ~ minecraft:air as @e[type=armor_stand,tag=CuccoFloat] at @s run tp @s ~ ~-.15 ~
execute if entity @e[type=armor_stand,tag=CuccoFloat] at @s run effect give @a minecraft:levitation 1 0 true
execute unless entity @e[type=armor_stand,tag=CuccoFloat] at @s run effect clear @a minecraft:levitation

data modify entity @e[type=armor_stand,tag=CuccoFloat,limit=1] Pos[0] set from entity @p Pos[0]
data modify entity @e[type=armor_stand,tag=CuccoFloat,limit=1] Pos[2] set from entity @p Pos[2]
execute as @e[type=armor_stand,tag=CuccoFloat] at @s rotated as @a run tp @a ~ ~ ~ ~ ~

execute if entity @s[tag=ThrowingCucco] unless entity @s[scores={time=5..}] run effect clear @a minecraft:levitation
execute if entity @s[tag=ThrowingCucco] unless entity @s[scores={time=5..}] run effect clear @a minecraft:jump_boost
execute if entity @s[tag=ThrowingCucco] unless entity @s[scores={time=5..}] run kill @e[type=armor_stand,tag=CuccoFloat]

#Ladder
execute at @a if block ~ ~-.15 ~ minecraft:ladder run tp @a ~ ~-.15 ~

#Throw
execute if entity @a[scores={CrouchCucco=1..}] run tag @s add ThrowingCucco
execute if entity @a[scores={CrouchCucco=1..}] run scoreboard objectives remove CrouchCucco

execute if entity @s[scores={timer=1..8}] anchored eyes at @s if block ^ ^ ^1 minecraft:air run tp @s ^ ^-.7 ^.5

execute if entity @s[scores={timer=9..}] anchored eyes at @s run function ocarina_of_time:items/cucco/cucco_2

#Drop
execute if block ~ ~ ~ minecraft:water run function ocarina_of_time:items/cucco/cucco_2
execute if block ~ ~ ~ minecraft:water run tag @s remove HoldingCucco

execute if entity @a[tag=ChickenTutorial] run tellraw @a ["",{"text":"Cucco: ","color":"gold"},{"text":"Crouch to throw me!"}]
execute if entity @a[tag=ChickenTutorial] run tag @a remove ChickenTutorial

#Rotation
data modify entity @s Rotation[1] set value 0f
