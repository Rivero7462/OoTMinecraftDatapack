particle minecraft:soul_fire_flame ~ ~ ~ .1 .1 .1 0 1
execute if entity @a[tag=ReflectIce] if entity @e[type=zombie,tag=Koume,distance=..1] run tag @e[type=zombie,tag=Kotake] remove Shoot
execute if entity @a[tag=ReflectIce] if entity @e[type=zombie,tag=Koume,distance=..1] run scoreboard players set @e[type=zombie,tag=Kotake] timer 0
execute if entity @a[tag=ReflectIce] as @e[type=zombie,tag=Koume,distance=..1] run tag @s add Hurt
execute if entity @a[tag=ReflectIce] as @e[type=armor_stand,tag=TwinrovaBody,distance=..1] run tag @s add Hurt
execute if entity @a[distance=..1.5] unless entity @a[tag=ReflectIce] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:entity.bee.loop_aggressive hostile @a ~ ~ ~ .5 1.5
execute if entity @a[distance=..1.5] unless entity @a[tag=ReflectIce] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:entity.bee.loop_aggressive hostile @a ~ ~ ~ .5 1.5
execute if entity @a[distance=..1.5] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @a add ReflectIce
execute if entity @a[distance=..1.5] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @a add ReflectIce
execute unless entity @e[type=area_effect_cloud,tag=IceBeam,distance=..1] unless entity @a[distance=..1.5,nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[distance=..1.5,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if block ~ ~ ~ minecraft:air positioned ^ ^ ^1 run function ocarina_of_time:moving_things/spirit_temple/boss/ice
