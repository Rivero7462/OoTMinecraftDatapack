#Scores
scoreboard players add @s timer 1
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Particle
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] run particle entity_effect ~ ~.2 ~ 0 .6 1 1 0 force @a

#Attacking
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] positioned ~ ~-1 ~ if entity @a[distance=..0.5] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 2 0 true
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s add Ground
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] positioned ~ ~-1 ~ if entity @a[distance=..0.5] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Ground

#Slow
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] if entity @s[scores={timer=0..49}] facing entity @p feet rotated ~ 0 if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.1 ~ 0
#Fast
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] if entity @s[scores={timer=50..85}] facing entity @p feet rotated ~ 0 if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.15 ~ 0
execute unless entity @s[tag=Ground] if entity @s[scores={timer=86..}] run scoreboard players set @s timer 0
#Rebound
execute unless entity @s[tag=Ground] unless entity @s[tag=Stun] if entity @s[nbt={HurtTime:10s}] run tag @s add Rebound
execute unless entity @s[tag=Ground] unless entity @s[tag=Stun] if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s timer 0
execute unless entity @s[tag=Stun] if entity @s[tag=Rebound,scores={timer=0..10}] facing entity @p feet rotated ~ 0 if block ^ ^ ^-1 minecraft:air run tp @s ^ ^ ^-.1 ~180 0
execute if entity @s[tag=Rebound,scores={timer=11..}] run tag @s remove Rebound

#Resistance
execute unless entity @s[tag=Ground] unless entity @s[tag=Stun] unless entity @e[type=arrow] run effect give @s minecraft:resistance 100000 10 true
execute if entity @s[tag=Stun] run effect clear @s minecraft:resistance
execute if entity @s[tag=Ground] run effect clear @s minecraft:resistance
execute if entity @e[type=arrow] run effect clear @s minecraft:resistance

#Stun
execute if entity @s[tag=Stun] run data merge entity @s {NoGravity:0b,Attributes:[{Name:"generic.attack_damage",Base:0}]}
execute if entity @s[tag=Ground] run data merge entity @s {NoGravity:0b,Attributes:[{Name:"generic.attack_damage",Base:0}]}
execute if entity @s[tag=Stun] run tag @s remove Ground
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] run data merge entity @s {NoGravity:1b,Attributes:[{Name:"generic.attack_damage",Base:1}]}
execute if entity @s[scores={lifetime=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.6 ~ .1 .2 .1 1 1
execute if entity @s[scores={lifetime=1..110}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=111..}] run tag @s add Ground
execute if entity @s[scores={lifetime=111..}] run tag @s remove Stun
execute if entity @s[scores={lifetime=111..}] run scoreboard players set @s lifetime 0

#Ground
execute if entity @s[tag=Ground,scores={timer=1..200}] unless block ^ ^1 ^1 minecraft:air run tp @s ~ ~ ~ ~150 ~
execute if entity @s[tag=Ground,scores={timer=1..200}] unless block ~ ~-.01 ~ minecraft:air if block ^ ^1 ^1 minecraft:air run tp @s ^ ^.4 ^.6
execute if entity @s[tag=Ground,scores={timer=1..200}] unless block ~ ~-.01 ~ minecraft:air if block ^ ^1 ^1 minecraft:air run effect give @s minecraft:slow_falling 1 0 true
execute if entity @s[tag=Ground,scores={timer=201..}] run effect clear @s minecraft:slow_falling
execute if entity @s[tag=Ground,scores={timer=201..}] run tp @s ~ ~.7 ~
execute if entity @s[tag=Ground,scores={timer=201..}] run tag @s remove Ground

#Sounds
execute unless entity @s[tag=Stun] unless entity @s[tag=Ground] unless entity @s[tag=Rebound] if entity @a[distance=..5] if entity @s[scores={timer=50..85}] unless entity @s[scores={timer=51..52}] unless entity @s[scores={timer=54..55}] unless entity @s[scores={timer=57..58}] unless entity @s[scores={timer=60..61}] unless entity @s[scores={timer=63..64}] unless entity @s[scores={timer=66..67}] unless entity @s[scores={timer=69..70}] unless entity @s[scores={timer=72..73}] unless entity @s[scores={timer=75..76}] unless entity @s[scores={timer=78..79}] unless entity @s[scores={timer=81..82}] unless entity @s[scores={timer=84..85}] run playsound minecraft:enchant.thorns.hit hostile @a ~ ~ ~ 1 .8
execute if entity @s[tag=Ground,scores={timer=1..200}] unless block ~ ~-.01 ~ minecraft:air if block ^ ^1 ^1 minecraft:air run playsound minecraft:block.metal.hit hostile @a ~ ~ ~ 1 .8

#Megaton Hammer hurts regardless of flame. Same for Arrows
#Bombs Hurt and Ground
