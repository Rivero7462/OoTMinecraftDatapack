team join Skulltula @s
#Found
execute positioned ~-3.2 ~-10 ~-3.2 if entity @a[dx=5.2,dy=16,dz=5.2] run tag @s add Attack

#Fall
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] if score @s BlueRupee > @s BlueRupee2 if entity @s[scores={timer=1..14}] if block ~ ~-.5 ~ minecraft:air run tp @s ~ ~-.5 ~ ~ 0
execute unless entity @s[tag=Stun] unless score @s BlueRupee > @s BlueRupee2 if entity @s[scores={timer=1..14}] run data modify entity @s Pos[1] set from entity @p Pos[1]
execute unless entity @s[tag=Stun] store result score @s BlueRupee run data get entity @s Pos[1]
execute unless entity @s[tag=Stun] store result score @s BlueRupee2 run data get entity @p Pos[1]

#Lost
execute unless entity @s[tag=Stun] positioned ~-3.2 ~-10 ~-3.2 unless entity @a[dx=5.2,dy=16,dz=5.2] run tag @s remove Attack
execute unless entity @s[tag=Stun] positioned ~-3.2 ~-10 ~-3.2 unless entity @a[dx=5.2,dy=16,dz=5.2] run scoreboard players set @s timer 0

#Rotation
data modify entity @s Rotation[1] set value 0f

#Sound Effects
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ .8 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=4}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ .8 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=7}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ .8 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=9}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ .8 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=13}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ .8 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=53}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ .8 2

#Reset
execute unless entity @s[tag=Stun] if entity @e[type=zombie,tag=Skulltula,distance=..1,limit=1,nbt={HurtTime:10s}] at @s run tag @s add Reset
execute unless entity @s[tag=Stun] if entity @s[tag=Reset] run scoreboard players add @s time 1
execute unless entity @s[tag=Stun] if entity @s[scores={time=1..20}] run tp @s ~ ~.05 ~ ~20 0
execute unless entity @s[tag=Stun] if entity @s[scores={time=1..20}] run scoreboard players set @s timer -1
execute unless entity @s[tag=Stun] if entity @s[scores={time=21..}] run scoreboard players set @s timer 6
execute unless entity @s[tag=Stun] if entity @s[scores={time=21..}] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={time=21..}] run tag @s remove Reset
execute unless entity @s[tag=Stun] if entity @s[scores={time=21..}] run scoreboard players set @s time 0

#Spin
execute unless entity @s[tag=Stun] if entity @s[scores={timer=15..}] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={timer=15..}] run data modify entity @s Pos[1] set from entity @p Pos[1]
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=50..81}] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50..81}] run function ocarina_of_time:enemies/skulltula/skulltula2
execute unless entity @s[tag=Stun] if entity @s[scores={timer=50}] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=81..}] run scoreboard players set @s timer 10

#Facing
execute anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.4142] run tag @s add Facing
execute anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.4142] run tag @s remove Facing

#Attack
execute if entity @a[distance=..1.43] unless entity @s[tag=Stun] run tag @s add Hurt
execute if entity @a[distance=..1.43] unless entity @s[tag=Stun] run scoreboard players set @s lifetime 1
execute if entity @a[distance=..1.43] unless entity @s[tag=Stun] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a wither 1 1 true

execute if entity @s[tag=Hurt] unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run tag @s remove Reset
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1}] run scoreboard players set @s time 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1..2}] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=2}] if entity @s[tag=Facing] if block ^ ^ ^2 minecraft:air run tp @a ^ ^ ^2
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=2}] unless entity @s[tag=Facing] if block ^ ^ ^-2 minecraft:air run tp @a ^ ^ ^-2
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1..15}] unless entity @s[scores={lifetime=2}] unless entity @s[scores={lifetime=4}] unless entity @s[scores={lifetime=6}] unless entity @s[scores={lifetime=8}] unless entity @s[scores={lifetime=10}] unless entity @s[scores={lifetime=12}] unless entity @s[scores={lifetime=14}] facing entity @p feet run tp @s ~ ~ ~ ~180 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=2..15}] unless entity @s[scores={lifetime=3}] unless entity @s[scores={lifetime=5}] unless entity @s[scores={lifetime=7}] unless entity @s[scores={lifetime=9}] unless entity @s[scores={lifetime=11}] unless entity @s[scores={lifetime=13}] unless entity @s[scores={lifetime=15}] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1..15}] run scoreboard players set @s timer 8
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=20..}] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=20..}] run tag @s remove Hurt
execute unless entity @s[tag=Stun] unless entity @s[tag=Hurt] run scoreboard players set @s lifetime 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] unless entity @s[scores={timer=0..49}] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] unless entity @s[scores={timer=0..49}] run effect give @s minecraft:instant_health 1 0 true
execute if entity @e[type=snowball,distance=..2] unless entity @s[scores={timer=0..49}] run scoreboard players set @a Skulltula 59

execute if entity @e[type=snowball,distance=..2] unless entity @s[tag=Stun] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] unless entity @s[tag=Stun] run effect give @s minecraft:instant_health 1 0 true
execute if entity @e[type=snowball,distance=..2] unless entity @s[tag=Stun] run scoreboard players set @a Skulltula 59

#Arrow
execute if entity @e[type=arrow,distance=..1] run kill @s

#Damaged
execute if entity @e[type=zombie,tag=Skulltula,distance=..1,limit=1,nbt={HurtTime:10s}] at @s run particle minecraft:enchanted_hit ~ ~1 ~ .3 .5 .3 0 10 normal
execute if entity @e[type=zombie,tag=Skulltula,distance=..1,limit=1,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.bat.takeoff hostile @a ~ ~ ~ 1 2

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Stun] run data merge entity @s {Invulnerable:0b,Attributes:[{Name:"generic.attack_damage",Base:0}]}
execute if entity @s[scores={GameTimer=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .3 .5 .3 1 1
execute if entity @s[scores={GameTimer=110..}] run data merge entity @s {Invulnerable:1b,Attributes:[{Name:"generic.attack_damage",Base:1}]}
execute if entity @s[scores={GameTimer=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s GameTimer 0
