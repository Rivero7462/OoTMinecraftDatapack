#Scores
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Attack
execute if entity @a[distance=..3] run tag @s add Attack
execute unless entity @s[tag=Stun] as @s[scores={timer=1..30}] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] as @s[scores={timer=1..30}] at @s run particle minecraft:dust 1 0 0 1 ^ ^.9 ^.5 .1 .1 .1 1 1 force
execute unless entity @s[tag=Stun] as @s[scores={timer=1}] at @s run effect give @s minecraft:slowness 100000 250 true

#Possibly Move
execute unless entity @s[tag=Stun] if entity @s[scores={timer=31..33}] if block ^ ^1 ^2 minecraft:air run tp @s ^ ^.3 ^1 facing entity @p
execute unless entity @s[tag=Stun] if entity @s[scores={timer=60}] run tag @s remove Attack
execute unless entity @s[tag=Stun] if entity @s[scores={timer=60}] run effect clear @s minecraft:slowness
execute unless entity @s[tag=Stun] unless entity @s[tag=Attack] run scoreboard players set @s timer 0

#Stun
execute if entity @s[tag=Stun] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .3 .3 1 1
execute if entity @s[scores={time=110..}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:wither 2 2 true
execute as @e[type=snowball,distance=..2] run kill @s

#Sounds
execute if entity @s[nbt={HurtTime:10s}] at @a run playsound minecraft:entity.bat.hurt hostile @a ~ ~ ~ 2 2
execute if entity @s[scores={timer=31}] at @a run playsound minecraft:entity.dolphin.attack hostile @a ~ ~ ~ 1 1.5

#Kill
execute if entity @s[y=4,dy=0] run kill @s
