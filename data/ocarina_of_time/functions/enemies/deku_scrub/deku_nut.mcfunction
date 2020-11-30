scoreboard players add @s timer 1
execute if entity @s[tag=Deflect] run scoreboard players add @s lifetime 1

#Shoot
execute if entity @s[scores={timer=1}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=2..}] unless entity @s[tag=Deflect] run tp @s ^ ^ ^.3 ~ 0

#Shield
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]},distance=..1] run tag @s add Deflect
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}},distance=..1] run tag @s add Deflect
execute if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run kill @s

execute if entity @s[scores={lifetime=50..}] run kill @s

#Deflect
execute if entity @s[scores={lifetime=1}] at @s rotated as @p run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={lifetime=2..}] at @s run tp @s ^ ^ ^.3 ~ 0

#Fall
execute if entity @s[scores={timer=40..}] at @s unless entity @s[tag=Deflect] run tp @s ~ ~-.5 ~
execute unless block ~ ~1 ~ #ocarina_of_time:deku_nut run kill @s

#Sounds
execute if entity @a[distance=..1] if entity @s[scores={lifetime=1}] at @s run playsound minecraft:item.shield.block ambient @a ~ ~ ~ .5 1
