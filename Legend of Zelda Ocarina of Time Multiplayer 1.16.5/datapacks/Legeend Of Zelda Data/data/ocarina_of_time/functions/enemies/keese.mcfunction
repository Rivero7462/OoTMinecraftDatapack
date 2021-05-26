#Scores
execute if entity @s[tag=Hanging,tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[tag=!Hanging,tag=Attack] at @s if entity @a[distance=..20] run scoreboard players add @s timer 1
execute if entity @s[tag=Stun] run scoreboard players add @s lifetime 1

#Attack
execute if entity @s[nbt={BatFlags:0b}] run tag @s add Attack
execute if entity @s[tag=Attack] run data merge entity @s {BatFlags:0b}

execute if entity @s[scores={timer=100..}] run data merge entity @s {NoAI:1b}
execute if entity @a[distance=..200] if entity @s[scores={timer=101..}] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] if block ^ ^ ^1 minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ^ ^ ^.15 facing entity @p feet
execute if entity @a[distance=..200] if entity @s[scores={timer=101..}] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] if block ^ ^ ^1 minecraft:jungle_fence run tp @s ^ ^ ^.15 facing entity @p feet
execute if entity @a[distance=..200] if entity @s[scores={timer=101..}] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] if block ^ ^ ^1 minecraft:torch run tp @s ^ ^ ^.15 facing entity @p feet

execute if entity @s[scores={timer=100}] facing entity @p feet run tp @s ~ ~ ~ ~ 0

execute if entity @s[scores={timer=100..110}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={timer=111}] run data merge entity @s {Invulnerable:0b}

execute if entity @s[scores={timer=170..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={timer=170..}] run scoreboard players set @s timer 0

#Burn Shield
execute if entity @s[scores={timer=100..170},tag=Flame] if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute if entity @s[scores={timer=100..170},tag=Flame] if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}}] run replaceitem entity @a weapon.mainhand minecraft:air
execute if entity @s[scores={timer=100..170},tag=Flame] if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Your ","color":"aqua"},{"text":"shield "},{"text":"is gone!","color":"aqua"}]
execute if entity @s[scores={timer=100..170},tag=Flame] if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b}}]}] run replaceitem entity @a weapon.offhand minecraft:air
execute if entity @s[scores={timer=100..170},tag=Flame] if entity @a[distance=..1] run tag @s remove Flame
execute if entity @s[scores={timer=100..170},tag=Ice] if entity @a[distance=..1] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @a add Freeze
execute if entity @s[scores={timer=100..170},tag=Ice] if entity @a[distance=..1] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s remove Ice
execute if entity @s[scores={timer=100..170}] if entity @a[distance=..1] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @p minecraft:wither 1 1 true
execute if entity @s[scores={timer=100..170}] if entity @a[distance=..1] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={timer=100..170}] if entity @a[distance=..1] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={timer=100..170}] if entity @a[distance=..1] run scoreboard players set @s timer 0

#Flame
execute if entity @a[distance=..200] if block ~ ~ ~ minecraft:torch run tag @s add Flame
execute if entity @a[distance=..200] if block ~ ~-1 ~ minecraft:torch run tag @s add Flame
execute if entity @a[distance=..200] if block ^ ^ ^1 minecraft:torch run tag @s add Flame
execute if entity @a[distance=..200] if block ^ ^1 ^ minecraft:torch run tag @s add Flame

execute if entity @s[tag=Flame] run particle minecraft:flame ~ ~.5 ~ 0 0 0 0 1 normal @p

#Ice
execute if entity @a[distance=..200] positioned 2061.0 30.5 2244.0 if entity @s[distance=..1.5] run tag @s add Ice
execute if entity @a[distance=..200] positioned 2086.0 26.5 2311.0 if entity @s[distance=..1.5] run tag @s add Ice
execute if entity @a[distance=..200] positioned 2009.0 29.5 2290.0 if entity @s[distance=..1.5] run tag @s add Ice

execute if entity @s[tag=Ice] run particle minecraft:soul_fire_flame ~ ~.5 ~ 0 0 0 0 1 normal @p

#Non Hanging Keese
execute if entity @s[tag=!Hanging] unless entity @a[distance=..20] run scoreboard players set @s timer 0

#Slingshot
execute if entity @s[nbt={HurtTime:10s}] run kill @s

#Stun
execute if entity @s[tag=Stun] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={lifetime=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.5 ~ .3 .1 .3 1 1
execute if entity @a[distance=..200] if entity @s[scores={lifetime=1..110}] if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-.2 ~
execute if entity @s[scores={lifetime=1..110}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=110..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={lifetime=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s lifetime 0

#Push Block
execute if block ~ ~-1 ~ minecraft:pink_concrete_powder run tp @s ~ ~1 ~
execute if block ^ ^ ^1 minecraft:pink_concrete_powder run tp @s ~ ~1 ~
