scoreboard players add @s timer 1
team join Meteor @e[type=wither_skull,tag=Meteor]

execute if entity @s[scores={timer=20}] run summon minecraft:wither_skull ~ ~10 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.02,-0.1,0.0]}
execute if entity @s[scores={timer=40}] run summon minecraft:wither_skull ~ ~10 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.02]}
execute if entity @s[scores={timer=60}] run summon minecraft:wither_skull ~ ~10 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.02]}
execute if entity @s[scores={timer=80}] run summon minecraft:wither_skull ~ ~10 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={timer=100}] run summon minecraft:wither_skull ~ ~10 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.02,-0.1,0.0]}
execute if entity @s[scores={timer=100..}] run scoreboard players set @s timer 0

execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[x_rotation=-90..-65] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[x_rotation=-90..-65] run kill @s
execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[x_rotation=-90..-65] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[x_rotation=-90..-65] run kill @s

execute if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[x_rotation=-90..-65] run effect give @a minecraft:resistance 100000 255 true
execute if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[x_rotation=-90..-65] run effect give @a minecraft:resistance 100000 255 true
execute unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run effect clear @a minecraft:resistance
execute unless entity @a[x_rotation=-90..-65] run effect clear @a minecraft:resistance
