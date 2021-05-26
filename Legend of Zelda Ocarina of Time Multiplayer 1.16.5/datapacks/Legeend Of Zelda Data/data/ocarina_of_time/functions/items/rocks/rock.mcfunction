execute as @e[type=zombie,tag=Rock] if entity @a[tag=HoldingRock] run scoreboard objectives add HoldingRock minecraft.custom:minecraft.sneak_time
execute as @e[type=zombie,tag=Rock] at @a if entity @a[tag=HoldingRock] unless entity @a[scores={HoldingRock=1..}] run tp @s ~ ~1 ~ ~ 0

execute as @e[type=zombie,tag=Rock] at @s if block ~ ~1 ~ minecraft:water run tag @a remove HoldingRock
execute as @e[type=zombie,tag=Rock] at @s if block ~ ~1 ~ minecraft:water run scoreboard objectives remove HoldingRock
execute as @e[type=zombie,tag=Rock] at @s if block ~ ~1 ~ minecraft:water run kill @s

#Pick Up Rock
execute at @a if entity @a[tag=!HoldingRock] if block ~ ~ ~ minecraft:granite_slab unless entity @e[type=zombie,tag=Rock] run function ocarina_of_time:items/rocks/rock_2

#Tp Foward
execute as @e[type=zombie,tag=Rock] at @s if entity @a[scores={HoldingRock=1..}] run scoreboard players add @s lifetime 1
execute as @e[type=zombie,tag=Rock] if entity @a[scores={HoldingRock=1..}] unless entity @s[scores={lifetime=25..}] at @s if block ^ ^1 ^1 minecraft:air if block ~ ~2 ~ minecraft:air run tp @s ^ ^ ^.25

#Tp Vertical
execute as @e[type=zombie,tag=Rock] if entity @a[scores={HoldingRock=1..}] if entity @s[scores={lifetime=1..15}] at @s if block ~ ~2 ~ minecraft:air run tp @s ~ ~.1 ~
execute as @e[type=zombie,tag=Rock] if entity @a[scores={HoldingRock=1..}] if entity @s[scores={lifetime=15..}] at @s if block ~ ~-.4 ~ minecraft:air run tp @s ~ ~-.5 ~

#Slow
execute as @e[type=zombie,tag=Rock] unless entity @a[scores={HoldingRock=1..}] run effect give @a minecraft:slowness 1 1 true
execute as @e[type=zombie,tag=Rock] if entity @a[scores={HoldingRock=1..}] run effect clear @a minecraft:slowness

#Water
execute if block ~ ~1 ~ minecraft:water run scoreboard players set @a HoldingRock 1
execute if block ~ ~1 ~ minecraft:water run scoreboard objectives remove CrouchRuto

#End
execute as @e[type=zombie,tag=Rock] at @s unless block ~ ~-.1 ~ minecraft:air at @a run playsound minecraft:block.composter.ready ambient @a ~ ~ ~ 1 .9
execute as @e[type=zombie,tag=Rock] at @s unless block ~ ~-.1 ~ minecraft:air run scoreboard players set @s lifetime 0
execute as @e[type=zombie,tag=Rock] at @s unless block ~ ~-.1 ~ minecraft:air run tag @a remove HoldingRock
execute as @e[type=zombie,tag=Rock] at @s unless block ~ ~-.1 ~ minecraft:air run kill @s

execute as @e[type=zombie,tag=Rock,scores={lifetime=120..}] at @a run playsound minecraft:block.composter.ready ambient @a ~ ~ ~ 1 .9
execute as @e[type=zombie,tag=Rock,scores={lifetime=120..}] run tag @a remove HoldingRock
execute as @e[type=zombie,tag=Rock,scores={lifetime=120..}] run kill @s

execute if entity @a[scores={HoldingRock=1..}] unless entity @e[type=zombie,tag=Rock,scores={lifetime=1..}] run tag @a remove HoldingRock
execute if entity @a[scores={HoldingRock=1..}] unless entity @e[type=zombie,tag=Rock,scores={lifetime=1..}] run scoreboard players set @a HoldingRock 0

execute as @e[type=zombie,tag=Rock] unless entity @a[tag=RockTutorial] run tellraw @a ["",{"text":"Crouch to throw rocks!"}]
execute as @e[type=zombie,tag=Rock] unless entity @a[tag=RockTutorial] run tag @a add RockTutorial
