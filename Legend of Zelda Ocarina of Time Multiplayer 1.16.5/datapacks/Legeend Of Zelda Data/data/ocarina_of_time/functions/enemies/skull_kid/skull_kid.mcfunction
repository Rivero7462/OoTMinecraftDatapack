execute if entity @a[distance=..5] run tag @s add Attack
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[tag=Attack] run scoreboard players add @s lifetime 1

#Movement
execute unless entity @s[scores={lifetime=600..}] if entity @a[distance=..20] unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={timer=90..}] if entity @s[scores={timer=1..}] facing entity @a feet rotated ~ 0 if block ^-1 ^ ^ minecraft:air run tp @s ^-.1 ^ ^.1 ~ ~
execute unless entity @s[scores={lifetime=600..}] if entity @a[distance=..6] unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={timer=90..}] if entity @s[scores={timer=1..}] facing entity @a feet rotated ~ 0 if block ^-1 ^ ^ minecraft:air run tp @s ^-.2 ^ ^ ~ ~
execute unless entity @s[scores={lifetime=600..}] if entity @a[distance=..4] unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={timer=90..}] if entity @s[scores={timer=1..}] facing entity @a feet rotated ~ 0 if block ^-1 ^ ^ minecraft:air run tp @s ^-.3 ^ ^-.2 ~ ~
execute unless entity @s[scores={lifetime=600..}] if entity @a[distance=..20] unless block ~ ~-.1 ~ minecraft:air unless entity @s[scores={timer=90..}] if entity @s[scores={timer=1..}] facing entity @a feet rotated ~ 0 unless block ^-1 ^ ^ minecraft:air run tp @s ^ ^ ^ ~ ~
execute unless entity @s[scores={lifetime=600..}] if block ~ ~-.1 ~ minecraft:air run data merge entity @s {Invulnerable:1b}
execute unless entity @s[scores={lifetime=600..}] unless block ~ ~-.1 ~ minecraft:air run data merge entity @s {Invulnerable:0b}
execute unless entity @s[scores={lifetime=600..}] if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.1 ~
execute unless entity @s[scores={lifetime=600..}] if entity @s[scores={timer=90..99}] facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^ ~ ~
execute unless entity @s[scores={lifetime=600..}] if entity @s[scores={timer=110..115}] facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^ ~ ~

#Shoot
execute if entity @s[scores={timer=100}] rotated ~ 0 run summon minecraft:armor_stand ^ ^-1 ^.1 {Tags:["Bullet"],ArmorItems:[{},{},{},{id:stone_button,Count:1b}],NoGravity:1b,Invisible:1b}
execute if entity @s[scores={timer=104}] rotated ~ 0 run summon minecraft:armor_stand ^ ^-1 ^.1 {Tags:["Bullet"],ArmorItems:[{},{},{},{id:stone_button,Count:1b}],NoGravity:1b,Invisible:1b}
execute if entity @s[scores={timer=108}] rotated ~ 0 run summon minecraft:armor_stand ^ ^-1 ^.1 {Tags:["Bullet"],ArmorItems:[{},{},{},{id:stone_button,Count:1b}],NoGravity:1b,Invisible:1b}
execute if entity @s[scores={timer=115..}] run scoreboard players set @s timer 0

#Dissapear
execute if entity @s[scores={lifetime=600..}] run tp @s ~ ~-5 ~
execute if entity @s[scores={lifetime=600..}] run kill @s

#Arrow
execute positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] run scoreboard players set @s lifetime 600

#Cooldown
execute unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s add Cooldown
execute unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Cooldown
execute if entity @a[distance=..1.8] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true

execute if entity @s[tag=Cooldown] run scoreboard players add @s time 1
execute if entity @s[scores={time=10..}] run tag @s remove Cooldown
execute if entity @s[scores={time=10..}] run scoreboard players set @s time 0
