#Scores
execute if entity @s[tag=Seen] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1

#Rotation
execute unless entity @s[tag=Seen] unless entity @s[tag=Attack] run scoreboard players set @s GameTimer 90
execute if entity @s[tag=Seen] unless entity @s[tag=Attack] run scoreboard players set @s GameTimer -90
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s GameTimer

#Found
execute unless entity @s[tag=Seen] unless entity @s[scores={lifetime=1..}] if entity @a[distance=..1.5] run tag @s add Seen
execute if entity @s[scores={timer=2}] run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ .4 1
execute if entity @s[scores={timer=2}] unless entity @s[tag=Stun] run tp @s ~ ~3.5 ~
execute if entity @s[scores={timer=10}] unless entity @s[tag=Stun] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[tag=Seen] run scoreboard players set @s timer 0
execute if entity @s[scores={timer=3..69}] run tp @s ^ ^-.01 ^ ~ -90

#Attack
execute if entity @s[tag=Seen] unless entity @s[scores={timer=..70}] positioned ~ ~-2 ~ if entity @a[distance=..3] run tag @s add Attack
execute if entity @s[tag=Attack] unless entity @e[type=arrow] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={lifetime=1}] facing entity @p feet run tp @s ^ ^ ^.3 ~ -45
execute if entity @s[scores={lifetime=2..20}] run tp @s ^ ^-.3 ^ ~ -45
execute if entity @s[scores={lifetime=2..20}] if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

execute if entity @s[scores={lifetime=31..}] run tag @s remove Seen
execute if entity @s[scores={lifetime=100..}] run tag @s remove Attack
execute if entity @s[scores={lifetime=100..}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=100..}] run scoreboard players set @s lifetime 0

#Arrows
execute if entity @e[type=arrow] run data merge entity @s {Invulnerable:0b}

#Follow
execute if entity @s[tag=Seen] unless entity @s[tag=Stun] unless entity @s[tag=Attack] unless entity @s[scores={timer=..70}] facing entity @p feet rotated ~ 0 if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.02 ~ -90
execute if entity @s[tag=Seen] unless entity @s[tag=Stun] unless entity @s[tag=Attack] unless entity @s[scores={timer=..70}] facing entity @p feet rotated ~ 0 if block ^ ^ ^1 minecraft:water run tp @s ^ ^ ^.02 ~ -90

#Stun
execute if entity @s[tag=Attack] run tag @s remove Stun
execute if entity @s[tag=Stun] unless entity @s[tag=Attack] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run tp @s ~ ~-2.5 ~
execute if entity @s[scores={time=1}] run tag @s remove Attack
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.5 ~ .1 .3 .1 1 1
execute if entity @s[scores={time=111}] run tp @s ~ ~2.5 ~
execute if entity @s[scores={time=111}] run tag @s remove Stun
execute if entity @s[scores={time=111}] run scoreboard players set @s time 0
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Kill
execute if entity @s[tag=Seen] if entity @e[type=snowball,distance=..2] run scoreboard players add @s text 1
execute if entity @s[tag=Attack] if entity @e[type=snowball,distance=..2] run scoreboard players add @s text 1
execute if entity @s[tag=Kill] run scoreboard players set @s text 2
execute if entity @s[tag=Kill] run playsound minecraft:entity.dolphin.death hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=Kill] run tag @s remove Kill
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] run scoreboard players add @s text 1
execute if entity @s[nbt={HurtTime:10s}] unless entity @s[tag=Kill] run playsound minecraft:entity.dolphin.death hostile @a ~ ~ ~ 1 .7
execute if entity @s[scores={text=2}] run kill @s
