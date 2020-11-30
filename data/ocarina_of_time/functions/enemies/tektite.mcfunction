#Scores
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @a[distance=..10] run scoreboard players add @s timer 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Jumping
execute unless entity @a[distance=..10] run scoreboard players set @s timer 0
execute if entity @a[distance=..200] unless entity @s[scores={timer=5..12}] if block ~ ~-.5 ~ minecraft:air facing entity @p feet run tp @s ~ ~-.2 ~ ~ 0
execute if entity @s[scores={timer=5..12}] unless block ^ ^1 ^1 minecraft:air run tp @s ^ ^.2 ^
execute if entity @s[scores={timer=5..12}] if block ^ ^1 ^1 minecraft:air run tp @s ^ ^.2 ^.2

execute if entity @s[scores={timer=28..}] unless block ~ ~-1 ~ minecraft:air run scoreboard players set @s timer 0

execute if entity @a[distance=..200] if block ~ ~ ~ minecraft:water unless entity @s[scores={timer=5..12}] run tp @s ~ ~ ~

#Noise
execute if entity @s[scores={timer=5}] run playsound minecraft:block.anvil.break hostile @p ~ ~ ~ 2 1

#In Water
execute if block ~ ~.3 ~ minecraft:water run tp @s ~ ~.5 ~

#Stun
execute if entity @s[tag=Stun] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={lifetime=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.5 ~ .3 .1 .3 1 1
execute if entity @s[scores={lifetime=1..110}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=110..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={lifetime=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s lifetime 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Sounds
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.bat.hurt hostile @a ~ ~ ~ 2 2
