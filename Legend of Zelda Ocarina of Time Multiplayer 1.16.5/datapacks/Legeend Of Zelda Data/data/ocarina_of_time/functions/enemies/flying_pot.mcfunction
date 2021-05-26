#Locate
execute if entity @a[distance=..5] run tag @s add Locate
execute unless entity @a[distance=..5] run tag @s remove Locate

execute unless entity @s[tag=Attack] if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast

#Attack
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..10}] facing entity @p feet rotated ~ 0 run tp @s ~ ~.05 ~ ~ 0

execute if entity @s[scores={timer=11}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.4 ~ 0
execute if entity @s[scores={timer=12..}] if block ^ ^ ^.5 minecraft:air if block ^.2 ^ ^ minecraft:air if block ^-.2 ^ ^ minecraft:air run tp @s ^ ^ ^.4

#Shield
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @a[distance=..1] run kill @s

#Die
execute unless block ^ ^ ^.5 minecraft:air run kill @s
execute unless block ^-.2 ^ ^ minecraft:air run kill @s
execute unless block ^.2 ^ ^ minecraft:air run kill @s

#Slingshot
execute if entity @e[type=snowball,distance=..2] if entity @s[tag=Attack] run kill @s

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.shulker.open hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=11}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=15}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=19}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=23}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=27}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=31}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=35}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=39}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=43}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=47}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=51}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=55}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=59}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=63}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=67}] run playsound minecraft:entity.shulker.close hostile @a ~ ~ ~ 1 1
