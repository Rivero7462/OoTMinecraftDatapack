#Rotation
data modify entity @s Rotation[1] set value 0f

#Spin
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=15..30}] run tp @s ~ ~ ~ ~25 0

#Attack?
execute unless entity @s[tag=Stun] if entity @a[distance=..4] run tag @s add Attack
execute unless entity @s[tag=Stun] unless entity @a[distance=..4] run scoreboard players set @s timer 0
execute unless entity @s[tag=Stun] unless entity @a[distance=..4] run tag @s remove Attack
execute unless entity @s[tag=Stun] if entity @s[tag=Attack] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] if entity @s[scores={timer=15..30}] if block ^-.4 ^ ^.5 minecraft:air if block ^.4 ^ ^.5 minecraft:air if block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^.2 ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=70..}] run scoreboard players set @s timer 0

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.6 ~ .1 .2 .1 1 1
execute if entity @s[scores={lifetime=1..110}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=111..}] run tag @s add Ground
execute if entity @s[scores={lifetime=111..}] run tag @s remove Stun
execute if entity @s[scores={lifetime=111..}] run scoreboard players set @s lifetime 0

#Sounds
scoreboard players add @s time 1
execute unless entity @s[tag=Stun] if entity @s[tag=WhiteBubble1,scores={time=1}] run scoreboard players add @s time 1
execute unless entity @s[tag=Stun] if entity @s[tag=WhiteBubble2,scores={time=1}] run scoreboard players add @s time 2
execute unless entity @s[tag=Stun] if entity @s[scores={time=1}] run playsound minecraft:enchant.thorns.hit hostile @a ~ ~ ~ .5 .8
execute if entity @s[scores={time=10}] run scoreboard players set @s time 0
