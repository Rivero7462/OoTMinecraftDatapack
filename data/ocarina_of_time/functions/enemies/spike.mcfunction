#Locate
execute if entity @a[distance=..9] run tag @s add Locate
execute unless entity @a[distance=..9] run tag @s remove Locate

execute unless entity @s[tag=Attack] if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast

#Not Attack
execute unless entity @a[distance=..9] run tag @s remove Attack
execute unless entity @s[tag=Attack] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:20}}]}
execute unless entity @s[tag=Attack] run scoreboard players set @s timer 0
execute unless entity @s[tag=Attack] run tp @s ~ ~ ~ 0 0

#Attack
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:19}}]}

#Forward
execute if entity @a[distance=..200] if block ~ ~-.1 ~ #ocarina_of_time:spike run tp @s ~ ~-.1 ~ ~ ~
execute if entity @s[scores={timer=1..}] facing entity @p feet rotated ~ 0 unless block ~ ~-.1 ~ #ocarina_of_time:spike if block ^ ^ ^1 #ocarina_of_time:spike if block ^-.4 ^ ^.5 #ocarina_of_time:spike if block ^.4 ^ ^.5 #ocarina_of_time:spike run tp @s ^ ^ ^.08 ~ ~
execute if entity @s[scores={timer=1..}] facing entity @p feet rotated ~ 0 if block ^ ^ ^1 minecraft:sand if block ^ ^1 ^1 #ocarina_of_time:spike run tp @s ^ ^1 ^1 ~ ~
execute if entity @s[scores={timer=100..}] run tag @s add Stun

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:20}}]}
execute if entity @s[scores={time=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={time=1}] run tp @s ~ ~ ~ 0 0
execute if entity @s[scores={time=1}] run tag @s remove Resist
execute if entity @s[scores={time=1}] run effect clear @s minecraft:resistance
execute if entity @s[scores={time=80..}] run tag @s add Resist
execute if entity @s[scores={time=80..}] run tag @s remove Stun
execute if entity @s[scores={time=80..}] run scoreboard players set @s time 0

#Damage
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s add Stun
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Stun
execute if entity @a[distance=..1.2] unless entity @s[tag=Stun] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Stun

#Rolling
scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1,timer=1..}] run data modify entity @s Rotation[1] set value 5f
execute if entity @s[scores={lifetime=2,timer=1..}] run data modify entity @s Rotation[1] set value 10f
execute if entity @s[scores={lifetime=3,timer=1..}] run data modify entity @s Rotation[1] set value 15f
execute if entity @s[scores={lifetime=4,timer=1..}] run data modify entity @s Rotation[1] set value 20f
execute if entity @s[scores={lifetime=5,timer=1..}] run data modify entity @s Rotation[1] set value 25f
execute if entity @s[scores={lifetime=6,timer=1..}] run data modify entity @s Rotation[1] set value 30f
execute if entity @s[scores={lifetime=7,timer=1..}] run data modify entity @s Rotation[1] set value 35f
execute if entity @s[scores={lifetime=8,timer=1..}] run data modify entity @s Rotation[1] set value 40f
execute if entity @s[scores={lifetime=9,timer=1..}] run data modify entity @s Rotation[1] set value 45f
execute if entity @s[scores={lifetime=10,timer=1..}] run data modify entity @s Rotation[1] set value 50f
execute if entity @s[scores={lifetime=11,timer=1..}] run data modify entity @s Rotation[1] set value 55f
execute if entity @s[scores={lifetime=12,timer=1..}] run data modify entity @s Rotation[1] set value 60f
execute if entity @s[scores={lifetime=13,timer=1..}] run data modify entity @s Rotation[1] set value 65f
execute if entity @s[scores={lifetime=14,timer=1..}] run data modify entity @s Rotation[1] set value 70f
execute if entity @s[scores={lifetime=15,timer=1..}] run data modify entity @s Rotation[1] set value 75f
execute if entity @s[scores={lifetime=16,timer=1..}] run data modify entity @s Rotation[1] set value 85f
execute if entity @s[scores={lifetime=17,timer=1..}] run data modify entity @s Rotation[1] set value 90f
execute if entity @s[scores={lifetime=19..,timer=1..}] run tp @s ~ ~ ~ ~ -90
execute if entity @s[scores={lifetime=19..}] run scoreboard players set @s lifetime 0

#Kill
execute if entity @s[tag=Kill] run kill @s

#Sounds
execute if entity @s[scores={lifetime=0,timer=1..}] run playsound minecraft:block.iron_door.open hostile @a ~ ~ ~ .5 2
execute if entity @s[scores={lifetime=3,timer=1..}] run playsound minecraft:block.iron_door.open hostile @a ~ ~ ~ .5 2
execute if entity @s[scores={lifetime=6,timer=1..}] run playsound minecraft:block.iron_door.open hostile @a ~ ~ ~ .5 2
execute if entity @s[scores={lifetime=9,timer=1..}] run playsound minecraft:block.iron_door.open hostile @a ~ ~ ~ .5 2
execute if entity @s[scores={lifetime=12,timer=1..}] run playsound minecraft:block.iron_door.open hostile @a ~ ~ ~ .5 2
execute if entity @s[scores={lifetime=15,timer=1..}] run playsound minecraft:block.iron_door.open hostile @a ~ ~ ~ .5 2
