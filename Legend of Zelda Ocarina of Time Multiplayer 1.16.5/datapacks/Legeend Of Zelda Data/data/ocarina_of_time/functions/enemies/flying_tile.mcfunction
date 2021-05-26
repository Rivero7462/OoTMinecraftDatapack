#Scores
scoreboard players add @s[tag=!Wait] timer 1
scoreboard players add @s[tag=Room] lifetime 1

#Spinning
execute unless entity @s[tag=Wait] run playsound minecraft:block.anvil.fall hostile @a ~ ~ ~ .1 1.5
execute unless entity @s[tag=Wait] unless entity @s[scores={timer=11}] as @e[type=armor_stand,tag=FlyingTile,distance=..1] at @s run tp @s ~ ~ ~ ~30 0
execute as @e[type=armor_stand,tag=FlyingTile,distance=..1] run tp @s ~ ~ ~

execute if entity @s[scores={timer=1..15}] run tp @s ~ ~.07 ~
execute if entity @s[scores={timer=30}] facing entity @p feet run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=31..}] run tp @s ^ ^ ^.3

#Invulnerable
execute if entity @s[tag=Wait] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Wait] run data merge entity @s {Invulnerable:0b}

#Kill
execute if entity @s[tag=Kill] run playsound minecraft:block.anvil.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Kill] run kill @s

execute if entity @s[scores={timer=31..}] unless block ^ ^1 ^ minecraft:air run playsound minecraft:block.anvil.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=31..}] unless block ^ ^1 ^ minecraft:air run kill @s

execute if entity @s[scores={timer=31..}] if entity @a[distance=..1.2] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={timer=31..}] if entity @a[distance=..1.2] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=31..}] if entity @a[distance=..1.2] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=31..}] if entity @a[distance=..1.2] run playsound minecraft:block.anvil.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=31..}] if entity @a[distance=..1.2] run kill @s

#Room
execute unless entity @s[tag=Room] run scoreboard players set @s lifetime 0
