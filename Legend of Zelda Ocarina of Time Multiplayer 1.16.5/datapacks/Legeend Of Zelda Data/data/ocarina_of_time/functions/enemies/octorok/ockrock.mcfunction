execute unless entity @s[tag=Deflect] run tp @s ^ ^ ^.3 ~ 0
execute if entity @s[scores={timer=40..}] unless entity @s[tag=Deflect] run tp @s ~ ~-.5 ~
execute if entity @s[tag=Deflect,scores={lifetime=1}] rotated as @p run tp @s ~ ~ ~ ~ 0
execute as @s[tag=Deflect,scores={lifetime=2..}] at @s run tp @s ^ ^ ^.3 ~ 0

#Scores
scoreboard players add @s timer 1
scoreboard players add @s[tag=Deflect] lifetime 1

#OckRock
execute unless block ~ ~1 ~ #ocarina_of_time:ockrock run kill @s
execute if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run kill @s

#Deflect
execute if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]},distance=..1] run tag @s add Deflect
execute if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}},distance=..1] run tag @s add Deflect

execute if entity @s[tag=Deflect,scores={lifetime=50..}] run kill @s

#Sound
execute if entity @s[tag=Deflect,scores={lifetime=1}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
