#Locate
execute if entity @a[distance=..5] run tag @s add Locate
execute unless entity @a[distance=..5] run tag @s remove Locate

execute unless entity @s[tag=Attack] if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast

#Not Attack
execute unless entity @a[distance=..5] unless entity @s[scores={timer=30..}] run tag @s remove Attack
execute unless entity @s[tag=Attack] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:21}}]}
execute unless entity @s[tag=Attack] run scoreboard players set @s timer 0
execute if entity @a[distance=..200] unless entity @s[scores={timer=1..70}] unless block ~ ~-.01 ~ #ocarina_of_time:spike run tp @s ~ ~ ~ ~ 0
execute if entity @a[distance=..200] unless entity @s[scores={timer=1..70}] if block ~ ~-.01 ~ #ocarina_of_time:spike run tp @s ~ ~-.01 ~ ~ 0

#Attack
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run data merge entity @s {Invulnerable:0b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:22}}]}
execute if entity @s[scores={timer=1..30}] unless block ^ ^-.1 ^ #ocarina_of_time:spike facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={timer=1..30}] if block ^ ^-.1 ^ #ocarina_of_time:spike run tp @s ~ ~-.1 ~ ~ 0
execute if entity @s[scores={timer=30}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={timer=30}] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[scores={timer=32..70}] if block ^ ^ ^-.7 #ocarina_of_time:spike if block ^-.4 ^ ^-.7 #ocarina_of_time:spike if block ^.4 ^ ^-.7 #ocarina_of_time:spike unless block ^ ^-.1 ^ #ocarina_of_time:spike run tp @s ^ ^.05 ^-.35 ~ 15
execute if entity @s[scores={timer=32..70}] if block ^ ^-.1 ^ #ocarina_of_time:spike run tp @s ~ ~-.1 ~ ~ 15
execute if entity @s[scores={timer=71..}] run scoreboard players set @s timer 0

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:21}}]}
execute if entity @s[scores={time=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={time=1}] run tp @s ~ ~ ~ 0 0
execute if entity @s[scores={time=1}] run tag @s remove Resist
execute if entity @s[scores={time=1}] run effect clear @s minecraft:resistance
execute if entity @s[scores={time=80..}] run tag @s remove Stun
execute if entity @s[scores={time=80..}] run scoreboard players set @s time 0

#Damage
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s add Stun
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Stun
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Stun

#Sounds
execute if entity @s[scores={timer=32..70}] if block ^ ^ ^-.5 #ocarina_of_time:spike unless block ^ ^-.02 ^ #ocarina_of_time:spike run playsound minecraft:block.anvil.step hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1}] run playsound minecraft:block.honey_block.break hostile @a ~ ~ ~ 1 1.5

#Kill
execute if entity @s[tag=Kill] run kill @s
