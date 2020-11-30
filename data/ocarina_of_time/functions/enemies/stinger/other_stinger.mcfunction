execute if entity @a[distance=..7] run tag @s add Attack
execute unless entity @s[tag=Lunge] unless entity @a[distance=..7] run tag @s remove Attack
execute unless entity @s[tag=Attack] if block ~ ~2 ~ minecraft:water run tp @s ~ ~.05 ~ ~ -90
execute unless entity @s[tag=Attack] unless block ~ ~2 ~ minecraft:water run tp @s ~ ~ ~ ~ -90

#Rotate
#Right
execute rotated ~ 0 if entity @s[tag=Attack] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s if block ^ ^-1 ^ minecraft:water run tp @s ^ ^-.01 ^ ~-2 -90
#Left
execute rotated ~ 0 if entity @s[tag=Attack] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s if block ^ ^-1 ^ minecraft:water run tp @s ^ ^-.01 ^ ~2 -90

#Right
execute rotated ~ 0 if entity @s[tag=Attack] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s unless block ^ ^-1 ^ minecraft:water run tp @s ^ ^ ^ ~-20 -90
#Left
execute rotated ~ 0 if entity @s[tag=Attack] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s unless block ^ ^-1 ^ minecraft:water run tp @s ^ ^ ^ ~20 -90

#Lunge
execute rotated ~ -90 positioned ^ ^-1 ^-1 if entity @a[distance=..1] run tag @s add Lunge
execute rotated ~ -90 positioned ^ ^-2 ^-2 if entity @a[distance=..1] run tag @s add Lunge
execute rotated ~ -90 positioned ^ ^-3 ^-3 if entity @a[distance=..1] run tag @s add Lunge
execute rotated ~ -90 positioned ^ ^-4 ^-4 if entity @a[distance=..1] run tag @s add Lunge

execute if entity @s[tag=Lunge] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..35}] if block ^ ^ ^1 minecraft:water if block ^-.4 ^ ^.5 minecraft:water if block ^.4 ^ ^.5 minecraft:water rotated ~ -55 run tp @s ^ ^-.15 ^ ~ ~
execute if entity @s[scores={timer=36}] run tp @s ~ ~ ~ ~180 -90
#Right
execute if entity @s[scores={timer=37..100}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s if block ~ ~2 ~ minecraft:water run tp @s ~ ~.05 ~ ~-1 -90
#Left
execute if entity @s[scores={timer=37..100}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s if block ~ ~2 ~ minecraft:water run tp @s ~ ~.05 ~ ~1 -90

execute if entity @s[scores={timer=101..}] run tag @s remove Lunge
execute if entity @s[scores={timer=101..}] run scoreboard players set @s timer 0

#Arrows
execute if entity @e[type=arrow] run data merge entity @s {Invulnerable:0b}
execute unless entity @e[type=arrow] run data merge entity @s {Invulnerable:1b}

#Damage
execute if entity @a[distance=..1.2] if entity @s[scores={timer=1..35}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.2] if entity @s[scores={timer=1..35}] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run scoreboard players set @s timer 36
execute if entity @a[distance=..1.2] if entity @s[scores={timer=1..35}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.2] if entity @s[scores={timer=1..35}] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run scoreboard players set @s timer 36
execute if entity @a[distance=..1.2] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

#Kill
execute if entity @s[tag=Kill] run playsound minecraft:entity.dolphin.death hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=Kill] run kill @s
