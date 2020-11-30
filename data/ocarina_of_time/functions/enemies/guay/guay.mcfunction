#Idle
execute unless entity @s[tag=Attack] unless entity @s[tag=Return] unless entity @e[type=area_effect_cloud,tag=Guay,sort=nearest,limit=1,distance=..8] run tag @s add Turn
execute if entity @s[tag=Turn] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..80}] run tp @s ^ ^ ^.1 ~3 0
execute unless entity @s[tag=Attack] unless entity @s[tag=Return] unless entity @s[scores={lifetime=1..80}] run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[scores={lifetime=90}] run tag @s remove Turn
execute if entity @s[scores={lifetime=90..}] run scoreboard players set @s lifetime 0

#Attack
execute positioned ~-10 ~-30 ~-10 if entity @a[dx=20,dy=30,dz=20] unless entity @s[tag=Turn] unless entity @s[tag=Return] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=50..}] run tag @s add Attack

execute if entity @s[tag=Attack] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] if block ^ ^ ^1 minecraft:air if block ~ ~1 ~ minecraft:air run tp @s ^ ^ ^.15 facing entity @p eyes
execute if entity @s[tag=Attack] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] unless block ^ ^ ^1 minecraft:air run tag @s add Return
execute if entity @s[tag=Attack] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] unless block ~ ~1 ~ minecraft:air run tag @s add Return

#Damage
execute if entity @s[tag=Attack] positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @s[tag=Attack] positioned ~ ~-1 ~ if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @s[tag=Attack] positioned ~ ~-1 ~ if entity @a[distance=..1] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[tag=Attack] positioned ~ ~-1 ~ if entity @a[distance=..1] run tag @s add Return

#Return
execute if entity @s[tag=Attack] positioned ~-10 ~-30 ~-10 unless entity @a[dx=20,dy=30,dz=20] unless entity @s[tag=Turn] unless entity @s[tag=Return] run tag @s add Return
execute if entity @s[tag=Attack] if entity @s[scores={timer=300..}] run tag @s add Return
execute if entity @s[tag=Return] run tag @s remove Attack
execute if entity @s[tag=Return] run scoreboard players set @s timer 0
execute if entity @s[tag=Return] run tp @s ^ ^ ^.15 facing entity @e[type=area_effect_cloud,tag=Guay,limit=1,sort=nearest] feet
execute if entity @s[tag=Return] if entity @e[type=area_effect_cloud,tag=Guay,limit=1,sort=nearest,distance=..1] run tag @s remove Return

#Slingshot
execute if entity @s[nbt={HurtTime:10s}] run kill @s
