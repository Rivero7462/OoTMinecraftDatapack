scoreboard players add @s timer 1
team join Meteor @e[type=wither_skull,tag=Meteor]
fill 2023 100 1406 2023 100 1406 minecraft:gold_block

execute if entity @s[scores={timer=10..200}] run playsound minecraft:block.campfire.crackle ambient @a ~ ~ ~ 50 1.5
execute if entity @s[scores={timer=10}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.04]}
execute if entity @s[scores={timer=15}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.04]}
execute if entity @s[scores={timer=20}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={timer=25}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=30}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=35}] run summon minecraft:wither_skull ~1 ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,0.04]}
execute if entity @s[scores={timer=40}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=45}] run summon minecraft:wither_skull ~1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=50}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.04]}
execute if entity @s[scores={timer=55}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.04]}
execute if entity @s[scores={timer=60}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={timer=65}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=70}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=75}] run summon minecraft:wither_skull ~1 ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,0.04]}
execute if entity @s[scores={timer=80}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=85}] run summon minecraft:wither_skull ~1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=90}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.04]}
execute if entity @s[scores={timer=95}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.04]}
execute if entity @s[scores={timer=100}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={timer=105}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=110}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=115}] run summon minecraft:wither_skull ~1 ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,0.04]}
execute if entity @s[scores={timer=120}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=125}] run summon minecraft:wither_skull ~1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=130}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.04]}
execute if entity @s[scores={timer=135}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.04]}
execute if entity @s[scores={timer=140}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={timer=145}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=150}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=155}] run summon minecraft:wither_skull ~1 ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,0.04]}
execute if entity @s[scores={timer=160}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=165}] run summon minecraft:wither_skull ~1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=170}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.04]}
execute if entity @s[scores={timer=175}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.04]}
execute if entity @s[scores={timer=180}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={timer=185}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=190}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=195}] run summon minecraft:wither_skull ~1 ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,0.04]}
execute if entity @s[scores={timer=200}] run summon minecraft:wither_skull ~-1 ~14 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=205}] run summon minecraft:wither_skull ~1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=210}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.04]}
execute if entity @s[scores={timer=215}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.04]}
execute if entity @s[scores={timer=220}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[scores={timer=225}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=230}] run summon minecraft:wither_skull ~-1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,0.04]}
execute if entity @s[scores={timer=235}] run summon minecraft:wither_skull ~1 ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,0.04]}
execute if entity @s[scores={timer=240}] run summon minecraft:wither_skull ~-1 ~14 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=245}] run summon minecraft:wither_skull ~1 ~24 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[-0.01,-0.1,-0.04]}
execute if entity @s[scores={timer=250}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,-0.04]}
execute if entity @s[scores={timer=255}] run summon minecraft:wither_skull ~ ~20 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.04]}

execute if entity @s[scores={timer=350..}] run scoreboard players set @s timer 0

execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[x_rotation=-90..-65] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[x_rotation=-90..-65] run kill @s
execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[x_rotation=-90..-65] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute at @a as @e[type=wither_skull,tag=Meteor,distance=..3] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[x_rotation=-90..-65] run kill @s

execute if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] if entity @a[x_rotation=-90..-65] run effect give @a minecraft:resistance 100000 10 true
execute if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] if entity @a[x_rotation=-90..-65] run effect give @a minecraft:resistance 100000 10 true
execute unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run effect clear @a minecraft:resistance
execute unless entity @a[x_rotation=-90..-65] run effect clear @a minecraft:resistance
effect give @a minecraft:resistance 1 3 true
