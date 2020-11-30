#Scores
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1

#Lazer
execute anchored eyes positioned ^ ^.5 ^ anchored feet if entity @a[distance=..200] if entity @s[scores={timer=20..35}] if block ^ ^ ^ minecraft:air facing entity @p feet rotated ~ 30 run function ocarina_of_time:enemies/beamos/lazer

#Spin
execute unless entity @s[tag=Attack] unless entity @s[tag=Stun] run tp @s ~ ~ ~ ~2.7 0
execute unless entity @a[distance=..6] run tag @s remove Attack
execute unless entity @a[distance=..6] run scoreboard players set @s timer 0

#Attack
execute at @s if entity @a[distance=..6] anchored eyes facing entity @a eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=...5] run tag @s add Attack
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] facing entity @a feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=45..}] run scoreboard players set @s timer 0
execute if entity @s[tag=Stun] run tag @s remove Attack

#Stun
execute if entity @s[scores={lifetime=1..200}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .3 .3 .3 1 1
execute if entity @s[scores={lifetime=200..}] run tag @s remove Stun
execute if entity @s[scores={lifetime=200..}] run scoreboard players set @s lifetime 0

#Dead
execute if entity @s[tag=Dead] run playsound entity.generic.explode hostile @p ~ ~ ~ 1 .9
execute if entity @s[tag=Dead] run particle minecraft:explosion ~ ~.5 ~ 1 1 1 0 5
execute if entity @s[tag=Dead] run kill @s

#Sounds
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] if entity @s[scores={timer=4}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] if entity @s[scores={timer=6}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 2

execute if entity @a[distance=..200] if entity @s[tag=Attack] unless entity @s[tag=Stun] if entity @s[scores={timer=20..35}] if block ^ ^ ^ minecraft:air run playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 1 2
