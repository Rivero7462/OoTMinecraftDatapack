scoreboard players add @s timer 1
execute at @s run tp @s ~ ~ ~ ~3 ~

#Particles
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^.5 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^1 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^1.5 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^2 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^2.5 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^3 0 0 0 0 1 normal

execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^-.5 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^-1 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^-1.5 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^-2 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^-2.5 0 0 0 0 1 normal
execute if entity @s[scores={timer=1}] run particle minecraft:flame ^ ^.5 ^-3 0 0 0 0 1 normal

execute if entity @s[scores={timer=2..}] run scoreboard players set @s timer 0

#Damage
execute positioned ^ ^ ^.5 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute positioned ^ ^ ^-.5 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute positioned ^ ^ ^2 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute positioned ^ ^ ^-2 if entity @a[distance=..1] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
