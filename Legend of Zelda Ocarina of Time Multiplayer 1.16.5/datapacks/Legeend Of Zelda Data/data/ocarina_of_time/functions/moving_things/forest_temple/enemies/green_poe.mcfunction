#Minigame Timer
execute if entity @a[scores={MiniGameTime=1..}] run scoreboard objectives setdisplay sidebar MiniGameTime
execute if entity @a[scores={MiniGameTime=1..}] run tag @a add HideDisplayScore
execute unless entity @a[scores={MiniGameTime=1..}] run scoreboard players add @a MiniGameTime 1000

#Summon Blocks
execute unless entity @e[type=zombie,tag=GreenPoeBlock1] if entity @a[scores={MiniGameTime=1000}] run fill 946 69 -1158 952 69 -1151 minecraft:air
execute unless entity @e[type=zombie,tag=GreenPoeBlock1] if entity @a[scores={MiniGameTime=1000}] run summon minecraft:zombie 946 69 -1158 {Tags:["GreenPoeBlock1","GreenPoeBlock","Invisible","Fire"],PersistenceRequired:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:white_glazed_terracotta,Count:1b}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Invulnerable:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=zombie,tag=GreenPoeBlock2] if entity @a[scores={MiniGameTime=1000}] run summon minecraft:zombie 950 69 -1157 {Tags:["GreenPoeBlock2","GreenPoeBlock","Invisible","Fire"],PersistenceRequired:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:light_gray_glazed_terracotta,Count:1b}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Invulnerable:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=zombie,tag=GreenPoeBlock3] if entity @a[scores={MiniGameTime=1000}] run summon minecraft:zombie 952 69 -1153 {Tags:["GreenPoeBlock3","GreenPoeBlock","Invisible","Fire"],PersistenceRequired:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:orange_glazed_terracotta,Count:1b}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Invulnerable:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=zombie,tag=GreenPoeBlock4] if entity @a[scores={MiniGameTime=1000}] run summon minecraft:zombie 947 69 -1151 {Tags:["GreenPoeBlock4","GreenPoeBlock","Invisible","Fire"],PersistenceRequired:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:pink_glazed_terracotta,Count:1b}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Invulnerable:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute unless entity @e[type=zombie,tag=GreenPoeBlock5] if entity @a[scores={MiniGameTime=1000}] run summon minecraft:zombie 948 69 -1155 {Tags:["GreenPoeBlock5","GreenPoeBlock","Invisible","Fire"],PersistenceRequired:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:diamond_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Invulnerable:1b,Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute as @e[type=zombie,tag=GreenPoeBlock] if entity @a[scores={MiniGameTime=1000}] unless entity @s[scores={lifetime=90..}] run scoreboard players set @s lifetime 90

#Rotation
execute as @e[type=zombie,tag=GreenPoeBlock] run scoreboard players set @s GameTimer 0
execute as @e[type=zombie,tag=GreenPoeBlock] store result entity @s Rotation[1] float 1 run scoreboard players get @s GameTimer
execute as @e[type=zombie,tag=GreenPoeBlock] if entity @a[scores={MiniGameTime=1}] run scoreboard players add @s lifetime 90
execute as @e[type=zombie,tag=GreenPoeBlock] store result entity @s Rotation[0] float 1 run scoreboard players get @s lifetime

#Positions
#1
execute as @e[type=zombie,tag=GreenPoeBlock1,y_rotation=90] at @s positioned ~1 ~ ~ if entity @e[type=zombie,tag=GreenPoeBlock2,distance=..0.2] positioned ~ ~ ~1 if entity @e[type=zombie,tag=GreenPoeBlock3,distance=..0.2] positioned ~-1 ~ ~ if entity @e[type=zombie,tag=GreenPoeBlock4,distance=..0.2] run tag @s add DoneGreenBlock
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=90] at @s positioned ~1 ~ ~ run tp @e[type=zombie,tag=GreenPoeBlock2] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=90] at @s positioned ~1 ~ ~1 run tp @e[type=zombie,tag=GreenPoeBlock3] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=90] at @s positioned ~ ~ ~1 run tp @e[type=zombie,tag=GreenPoeBlock4] ~ ~ ~

#2
execute as @e[type=zombie,tag=GreenPoeBlock1,y_rotation=180] at @s positioned ~ ~ ~1 if entity @e[type=zombie,tag=GreenPoeBlock2,distance=..0.2] positioned ~-1 ~ ~ if entity @e[type=zombie,tag=GreenPoeBlock3,distance=..0.2] positioned ~ ~ ~-1 if entity @e[type=zombie,tag=GreenPoeBlock4,distance=..0.2] run tag @s add DoneGreenBlock
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=180] at @s positioned ~ ~ ~1 run tp @e[type=zombie,tag=GreenPoeBlock2] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=180] at @s positioned ~-1 ~ ~1 run tp @e[type=zombie,tag=GreenPoeBlock3] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=180] at @s positioned ~-1 ~ ~ run tp @e[type=zombie,tag=GreenPoeBlock4] ~ ~ ~

#3
execute as @e[type=zombie,tag=GreenPoeBlock1,y_rotation=270] at @s positioned ~-1 ~ ~ if entity @e[type=zombie,tag=GreenPoeBlock2,distance=..0.2] positioned ~ ~ ~-1 if entity @e[type=zombie,tag=GreenPoeBlock3,distance=..0.2] positioned ~1 ~ ~ if entity @e[type=zombie,tag=GreenPoeBlock4,distance=..0.2] run tag @s add DoneGreenBlock
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=270] at @s positioned ~-1 ~ ~ run tp @e[type=zombie,tag=GreenPoeBlock2] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=270] at @s positioned ~-1 ~ ~-1 run tp @e[type=zombie,tag=GreenPoeBlock3] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=270] at @s positioned ~ ~ ~-1 run tp @e[type=zombie,tag=GreenPoeBlock4] ~ ~ ~

#4
execute as @e[type=zombie,tag=GreenPoeBlock1,y_rotation=0] at @s positioned ~ ~ ~-1 if entity @e[type=zombie,tag=GreenPoeBlock2,distance=..0.2] positioned ~1 ~ ~ if entity @e[type=zombie,tag=GreenPoeBlock3,distance=..0.2] positioned ~ ~ ~1 if entity @e[type=zombie,tag=GreenPoeBlock4,distance=..0.2] run tag @s add DoneGreenBlock
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=0] at @s positioned ~ ~ ~-1 run tp @e[type=zombie,tag=GreenPoeBlock2] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=0] at @s positioned ~1 ~ ~-1 run tp @e[type=zombie,tag=GreenPoeBlock3] ~ ~ ~
execute as @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock,y_rotation=0] at @s positioned ~1 ~ ~ run tp @e[type=zombie,tag=GreenPoeBlock4] ~ ~ ~

#Retry
execute unless entity @a[scores={MiniGameTime=..-1}] run scoreboard players remove @a MiniGameTime 1

#Finish
execute if entity @e[type=zombie,tag=GreenPoeBlock1,tag=DoneGreenBlock] run tag @s add Finish
execute if entity @s[tag=Finish] run kill @e[type=zombie,tag=GreenPoeBlock]
execute if entity @s[tag=Finish] run tag @s remove Minigame
