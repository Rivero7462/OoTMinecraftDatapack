#Chase
execute unless entity @a[distance=..18] run tag @s remove Bounce
execute unless entity @s[tag=Stun] unless entity @a[distance=..18] unless entity @s[tag=Swim] run tag @s add Chase

execute if entity @s[tag=Chase] if block ~ ~-.2 ~ minecraft:water if block ^ ^ ^1 #ocarina_of_time:morpha facing entity @p feet rotated ~ 0 run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Chase] if block ~ ~-.2 ~ minecraft:polished_andesite if block ^ ^ ^1 #ocarina_of_time:morpha facing entity @p feet rotated ~ 0 run playsound minecraft:block.stone.break hostile @a ~ ~ ~ .2 1

execute if entity @s[tag=Chase] unless block ~ ~-.2 ~ minecraft:air if block ^ ^ ^1 #ocarina_of_time:morpha facing entity @p feet rotated ~ 0 run tp @s ^ ^1.2 ^.5 ~ 0
execute if entity @s[tag=Chase] unless block ~ ~-.2 ~ minecraft:air unless block ^ ^ ^1 #ocarina_of_time:morpha run tp @s ~ ~ ~ ~160 ~
execute if entity @s[tag=Chase] if block ~ ~-.2 ~ minecraft:air run tp @s ^ ^-.15 ^.2
execute if entity @s[tag=Chase] if entity @a[distance=..8] run tp @s ~ ~-1 ~
execute if entity @s[tag=Chase] if entity @a[distance=..8] run tag @s add Bounce
execute if entity @s[tag=Chase] if entity @a[distance=..8] run tag @s remove Chase

#Bounce
execute if entity @a[distance=..8] run tag @s remove Chase
execute unless entity @s[tag=Stun] if entity @a[distance=..8] unless entity @s[tag=Swim] run tag @s add Bounce
execute if entity @s[tag=Bounce] run scoreboard players add @s timer 1

execute if entity @s[tag=Bounce] unless entity @s[nbt={HurtTime:10s}] unless block ~ ~ ~ minecraft:water if block ~ ~-.2 ~ minecraft:water if block ^ ^ ^1 minecraft:air run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Bounce] unless entity @s[nbt={HurtTime:10s}] unless block ~ ~ ~ minecraft:water if block ~ ~-.2 ~ minecraft:water if block ^ ^ ^1 minecraft:air run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Bounce] unless entity @s[nbt={HurtTime:10s}] unless block ~ ~ ~ minecraft:water if block ~ ~-.2 ~ minecraft:polished_andesite if block ^ ^ ^1 minecraft:air run playsound minecraft:block.stone.break hostile @a ~ ~ ~ .2 1
execute if entity @s[tag=Bounce] unless entity @s[nbt={HurtTime:10s}] unless block ~ ~ ~ minecraft:water if block ~ ~-.2 ~ minecraft:polished_andesite if block ^ ^ ^1 minecraft:air run data merge entity @s {Invulnerable:0b}
execute if entity @s[nbt={HurtTime:10s},tag=Bounce] run tp @s ~ ~ ~ ~80 ~

execute if entity @s[tag=Bounce] unless entity @s[nbt={HurtTime:10s}] unless block ~ ~ ~ minecraft:water unless block ~ ~-.2 ~ minecraft:air if block ^ ^ ^1 minecraft:air run tp @s ^ ^1.2 ^.5
execute if entity @s[tag=Bounce] unless entity @s[nbt={HurtTime:10s}] unless block ~ ~ ~ minecraft:water unless block ~ ~-.2 ~ minecraft:air unless block ^ ^ ^1 minecraft:air run tp @s ~ ~ ~ ~160 ~
execute if entity @s[tag=Bounce] unless entity @s[nbt={HurtTime:10s}] unless block ~ ~ ~ minecraft:water if block ~ ~-.2 ~ minecraft:air run tp @s ^ ^-.15 ^.2
execute if entity @s[tag=Bounce] if entity @s[scores={timer=..49}] if block ~ ~ ~ minecraft:water run tp @s ~ ~1 ~
execute if entity @s[tag=Bounce] if entity @s[scores={timer=50..}] if block ~ ~-.4 ~ minecraft:water run tag @s add Swim
execute if entity @s[tag=Bounce] if entity @s[scores={timer=50..}] if block ~ ~-.4 ~ minecraft:water run tag @s remove Bounce
execute if entity @s[tag=Bounce] if entity @s[scores={timer=50..}] if block ~ ~-.4 ~ minecraft:water run tp @s ~ ~-1 ~
execute if entity @s[scores={timer=50..}] unless entity @s[tag=Bounce] run scoreboard players set @s timer 0

#Swim
execute if entity @s[tag=Swim] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={lifetime=1}] run tp @s ~ 61.5 ~
execute if entity @s[scores={lifetime=20}] run summon minecraft:armor_stand ^-.5 ^ ^ {Tags:["Morpha","RealTentacle"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959}
execute if entity @s[scores={lifetime=3..102}] if block ^ ^ ^1 minecraft:water run tp @s ^ ^ ^.3 ~20 ~
execute if entity @s[scores={lifetime=3..102}] unless block ^ ^ ^1 minecraft:water run tp @s ^ ^ ^ ~20 ~
execute if entity @s[scores={lifetime=104}] at @e[type=armor_stand,tag=RealTentacle] run tp @s ~ 62 ~
execute if entity @s[scores={lifetime=105..124}] run tp @s ~ ~.15 ~
execute if entity @s[scores={lifetime=125..170}] rotated as @e[type=armor_stand,tag=RealTentacle] run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[scores={lifetime=171..210}] rotated as @e[type=armor_stand,tag=RealTentacle] run tp @s ^ ^ ^-.1 ~ 0
execute if entity @s[scores={lifetime=211..254}] rotated as @e[type=armor_stand,tag=RealTentacle] run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[scores={lifetime=255..303}] rotated as @e[type=armor_stand,tag=RealTentacle] run tp @s ^ ^ ^-.1 ~ 0
execute if entity @s[scores={lifetime=305}] align xyz run tp @s ~0.5 ~ ~0.5
execute if entity @s[scores={lifetime=307..327}] run tp @s ~ ~-.15 ~
execute if entity @s[scores={lifetime=317}] run fill ~ 65 ~ ~ 65 ~ minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={lifetime=322}] run fill ~ 64 ~ ~ 64 ~ minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={lifetime=327}] run fill ~ 63 ~ ~ 63 ~ minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={lifetime=332}] run fill ~ 62 ~ ~ 62 ~ minecraft:water replace minecraft:pink_stained_glass
execute if entity @s[scores={lifetime=333..}] run tag @s add Chase
execute if entity @s[scores={lifetime=333..}] run tag @s remove Swim
execute if entity @s[scores={lifetime=333..}] run scoreboard players set @s lifetime 0

#Health
execute store result score @s ArrowCount run data get entity @s Health

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run scoreboard players set @e[type=area_effect_cloud,tag=Hookshot] Hookshot 1000
execute if entity @s[scores={time=1}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={time=1}] run tag @s remove Swim
execute if entity @s[scores={time=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={time=1}] run data merge entity @e[type=armor_stand,tag=RealTentacle,limit=1] {ArmorItems:[{},{},{},{}]}

execute if entity @s[scores={time=1}] as @e[type=armor_stand,tag=RealTentacle] at @s positioned ^ ^ ^-3 run fill ~ 63 ~ ~ 65 ~ minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={time=1}] as @e[type=armor_stand,tag=RealTentacle] at @s positioned ^ ^ ^-3 run fill ~ 62 ~ ~ 62 ~ minecraft:water replace minecraft:pink_stained_glass

execute if entity @s[scores={time=1}] run kill @e[type=armor_stand,tag=RealTentacle]
execute if entity @s[scores={time=1}] at @a rotated ~ 0 run tp @s ^ ^ ^1 ~180 0
execute if entity @s[scores={time=1..60}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .2 .1 .2 1 1
execute if entity @s[scores={time=61..}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={time=61..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

execute if entity @s[nbt={HurtTime:10s},tag=Stun] run playsound minecraft:ui.stonecutter.take_result hostile @a ~ ~ ~ 2 2
execute if entity @s[nbt={HurtTime:10s},tag=Stun] run tag @s add Bounce
execute if entity @s[nbt={HurtTime:10s},tag=Stun] run data merge entity @s {Invulnerable:1b}
execute if entity @s[nbt={HurtTime:10s},tag=Stun] run scoreboard players set @s time 40

#Attack
execute unless entity @s[tag=Stun] unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run tag @s add Cooldown
execute unless entity @s[tag=Stun] unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Stun] unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Cooldown
execute unless entity @s[tag=Stun] unless entity @s[tag=Cooldown] if entity @a[distance=..1.8] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

execute if entity @s[tag=Cooldown] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=10..}] run tag @s remove Cooldown
execute if entity @s[scores={GameTimer=10..}] run scoreboard players set @s GameTimer 0

#Sounds
execute if entity @s[scores={lifetime=3}] run playsound minecraft:block.bubble_column.upwards_ambient hostile @a ~ ~ ~ .8 .8
execute if entity @s[scores={lifetime=20}] run playsound minecraft:block.bubble_column.upwards_ambient hostile @a ~ ~ ~ .8 .8
execute if entity @s[scores={lifetime=40}] run playsound minecraft:block.bubble_column.upwards_ambient hostile @a ~ ~ ~ .8 .8
execute if entity @s[scores={lifetime=60}] run playsound minecraft:block.bubble_column.upwards_ambient hostile @a ~ ~ ~ .8 .8
execute if entity @s[scores={lifetime=80}] run playsound minecraft:block.bubble_column.upwards_ambient hostile @a ~ ~ ~ .8 .8
execute if entity @s[scores={lifetime=100}] run playsound minecraft:block.bubble_column.upwards_ambient hostile @a ~ ~ ~ .8 .8
execute if entity @s[scores={lifetime=20}] run playsound minecraft:ambient.underwater.loop hostile @a ~ ~ ~ 1 1.2
execute if entity @s[scores={time=1}] run playsound minecraft:ambient.underwater.exit hostile @a ~ ~ ~ .5 1

execute unless entity @s[x=1050,y=56,z=3078,dx=27,dy=11,dz=27] run tp @s 1062 63 3091
