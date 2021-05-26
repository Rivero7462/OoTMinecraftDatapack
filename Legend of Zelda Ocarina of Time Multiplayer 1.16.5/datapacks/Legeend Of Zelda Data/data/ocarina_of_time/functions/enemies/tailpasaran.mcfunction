#Scores
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1

#Rotation
execute unless entity @s[tag=Attack] run scoreboard players set @s GameTimer 0
execute if entity @s[tag=Attack] run scoreboard players set @s GameTimer 90
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s GameTimer

#Find
execute if entity @a[distance=..6] run tag @s add Attack

#Hide
execute unless entity @s[tag=Attack] run data merge entity @s {Invulnerable:0b}
execute unless entity @a[distance=..6] run tag @s remove Attack
execute unless entity @s[tag=Attack] run scoreboard players set @s timer 0
execute if entity @s[scores={timer=370..}] run tag @s remove Attack
execute if entity @s[scores={timer=370..}] run scoreboard players set @s timer 0
execute if entity @s[scores={timer=300..349}] run tp @s ~ ~-.1 ~ ~ 0
execute if entity @s[scores={timer=300..349}] run data merge entity @s {Invulnerable:1b}

#Moving
execute unless entity @s[tag=Attack] run tp @s ~ ~ ~ ~10 0

#Attack
execute if entity @s[tag=Attack] run particle minecraft:fishing ^ ^-.8 ^-.75 0.05 0.05 0.05 0 2 normal @a
execute if entity @s[tag=Attack] if entity @s[scores={timer=1}] facing entity @p eyes run tp @s ~ ~.5 ~ ~ 90
execute if entity @s[tag=Attack] if entity @s[scores={timer=2..19}] facing entity @p eyes run tp @s ~ ~ ~ ~ 90
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] unless entity @s[scores={timer=..20}] unless entity @s[scores={timer=300..}] if block ~ ~ ~.3 minecraft:air if block ~.3 ~ ~.3 minecraft:air if block ~-.3 ~ ~.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^.08 ~ 90

execute if entity @s[tag=Attack] unless entity @s[scores={timer=300..}] unless block ~ ~ ~.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^-.1
execute if entity @s[tag=Attack] unless entity @s[scores={timer=300..}] unless block ~-.3 ~ ~.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^-.1
execute if entity @s[tag=Attack] unless entity @s[scores={timer=300..}] unless block ~.3 ~ ~.3 minecraft:air facing entity @p eyes run tp @s ^ ^ ^-.1

#Stun
execute if entity @s[scores={lifetime=1..110}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={lifetime=1..110}] unless entity @a[scores={click=0..}] run particle minecraft:falling_dust blue_wool ^ ^-.3 ^-.75 .1 .3 .1 1 1
execute if entity @s[scores={lifetime=111..}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={lifetime=111..}] run tag @s remove Stun
execute if entity @s[scores={lifetime=111..}] run scoreboard players set @s lifetime 0

#Close
execute positioned ~ ~-1 ~ if entity @a[distance=..0.7] unless entity @s[tag=Stun] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute positioned ~ ~-1 ~ if entity @a[distance=..0.7] unless entity @s[tag=Stun] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute positioned ~ ~-1 ~ if entity @a[distance=..0.7] unless entity @s[tag=Stun] run tag @a add Shock
execute positioned ~ ~-1 ~ if entity @a[distance=..0.7] positioned ~ ~1 ~ unless entity @s[tag=Stun] if block ^ ^-2.5 ^ minecraft:air run tp @s ^ ^-2 ^

#Death
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] run tag @s add Kill
execute if entity @s[nbt={HurtTime:10s}] if entity @a[nbt={SelectedItem:{id:"minecraft:iron_sword",Count:1b}}] unless entity @s[tag=Stun] run tag @a add Shock

execute if entity @s[tag=Kill] run playsound minecraft:entity.dolphin.death hostile @a ~ ~ ~ 1 1.8
execute if entity @s[tag=Kill] run kill @s

#Boomerang kills
