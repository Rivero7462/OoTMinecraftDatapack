execute unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] run scoreboard players add @e[type=armor_stand,tag=Leever] lifetime 1
data modify entity @s Rotation[1] set value 0f

#Armor Stand
execute at @s[tag=Leever1] as @e[type=armor_stand,tag=Leever1] run tp @s ~ ~ ~
execute at @s[tag=Leever2] as @e[type=armor_stand,tag=Leever2] run tp @s ~ ~ ~
execute at @s[tag=Leever3] as @e[type=armor_stand,tag=Leever3] run tp @s ~ ~ ~
execute at @s[tag=Leever4] as @e[type=armor_stand,tag=Leever4] run tp @s ~ ~ ~
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=5..}] as @e[type=armor_stand,tag=Leever,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ ~20 0

#Appear
execute at @a if entity @s[scores={lifetime=1}] run spreadplayers ~ ~ 5 5 under 63 true @s

#Special
execute unless entity @s[tag=Stun] if entity @s[tag=Special,scores={lifetime=31..}] facing entity @p feet rotated ~ 0 if block ^.6 ^ ^ minecraft:air if block ^.6 ^ ^-.4 minecraft:air if block ^.6 ^ ^.4 minecraft:air unless block ^ ^-1 ^ minecraft:air unless block ^ ^ ^.4 #ocarina_of_time:leever_2 run tp @s ^.15 ^ ^.15 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=Special,scores={lifetime=31..}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^ minecraft:air unless block ^ ^-1 ^ minecraft:air unless block ^ ^ ^.4 #ocarina_of_time:leever_2 run tp @s ^ ^ ^.13 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=Special,scores={lifetime=31..}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^-.4 minecraft:air unless block ^ ^-1 ^ minecraft:air unless block ^ ^ ^.4 #ocarina_of_time:leever_2 run tp @s ^ ^ ^.13 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=Special,scores={lifetime=31..}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^.4 minecraft:air unless block ^ ^-1 ^ minecraft:air unless block ^ ^ ^.4 #ocarina_of_time:leever_2 run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=Special,scores={lifetime=31..}] facing entity @p feet rotated ~ 0 if block ^ ^-1 ^ minecraft:air run tp @s ^.15 ^-1 ^.13 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=Special,scores={lifetime=31..}] facing entity @p feet rotated ~ 0 if block ^ ^ ^.4 #ocarina_of_time:leever_2 run tp @s ^.15 ^1 ^.13 ~ 0

#Attack
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=10}] at @e[type=armor_stand,tag=Leever1] if entity @e[type=armor_stand,tag=Leever,tag=!Leever1,distance=..0.7] run tp @s ~1 ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=10}] at @e[type=armor_stand,tag=Leever3] if entity @e[type=armor_stand,tag=Leever,tag=!Leever3,distance=..0.7] run tp @s ~1 ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=2..30}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=!Special,scores={lifetime=31..}] if block ^ ^-1 ^ minecraft:air run tp @s ^ ^-1 ^.2 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=!Special,scores={lifetime=31..}] if block ^ ^ ^.4 #ocarina_of_time:leever_2 run tp @s ^ ^1 ^.2 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=!Special,scores={lifetime=31..}] unless block ^ ^-1 ^ minecraft:air unless block ^ ^ ^.4 #ocarina_of_time:leever_2 run tp @s ^ ^ ^.2 ~ 0

#Block
execute if entity @a[distance=..0.8] if entity @s[tag=!Hide,tag=!Special] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]},distance=..1] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Special] if entity @a[distance=..0.8] if entity @s[tag=!Hide,tag=!Special] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]},distance=..1] run tag @s add Hide
execute if entity @a[distance=..0.8] if entity @s[tag=!Hide,tag=!Special] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}},distance=..1] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Special] if entity @a[distance=..0.8] if entity @s[tag=!Hide,tag=!Special] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}},distance=..1] run tag @s add Hide
execute if entity @a[distance=..0.9] if entity @s[tag=!Hide,tag=Special] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]},distance=..1] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Special] if entity @a[distance=..0.9] if entity @s[tag=!Hide,tag=Special] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]},distance=..1] run tag @s add Hide
execute if entity @a[distance=..0.9] if entity @s[tag=!Hide,tag=Special] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}},distance=..1] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Special] if entity @a[distance=..0.9] if entity @s[tag=!Hide,tag=Special] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}},distance=..1] run tag @s add Hide
execute if entity @a[distance=..0.8] if entity @s[tag=!Hide,tag=!Special] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true
execute unless entity @s[tag=Special] if entity @a[distance=..0.8] if entity @s[tag=!Hide,tag=!Special] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Hide
execute if entity @a[distance=..0.9] if entity @s[tag=!Hide,tag=Special] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true
execute unless entity @s[tag=Special] if entity @a[distance=..0.9] if entity @s[tag=!Hide,tag=Special] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run tag @s add Hide

#Hide
execute unless entity @s[tag=Special] if entity @a[nbt={HurtTime:10s}] run tag @s add Hide
execute if block ~ ~-1 ~ minecraft:water run tag @s add Hide
execute if block ^ ^ ^.4 #ocarina_of_time:leever run tag @s add Hide
execute if block ^ ^ ^.4 #ocarina_of_time:leever run scoreboard players set @s GameTimer 30
execute unless entity @s[tag=Special] if entity @s[scores={lifetime=91..}] run tag @s add Hide
execute at @a unless entity @s[distance=..10] run tag @s add Hide
execute if entity @s[tag=Hide] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=10..30}] run tp @s ^ ^-.1 ^.2
execute if entity @s[scores={GameTimer=31..40}] run tp @s ^ ^-.5 ^
execute if entity @s[scores={GameTimer=41}] run scoreboard players remove @e[type=area_effect_cloud,tag=LeeverSpawn] timer 1
execute if entity @s[scores={GameTimer=41..}] run kill @e[type=armor_stand,tag=Leever,limit=1,sort=nearest]
execute if entity @s[scores={GameTimer=41..}] run kill @s

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[tag=Stun] run data merge entity @e[type=armor_stand,tag=Leever,limit=1,sort=nearest] {NoAI:1b}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.5 ~ .3 .1 .3 1 1
execute if entity @s[scores={time=110..}] run data merge entity @e[type=armor_stand,tag=Leever,limit=1,sort=nearest] {NoAI:0b}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Sounds
execute if entity @s[tag=!Special,scores={lifetime=1}] run playsound minecraft:block.sand.place hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=!Special,scores={lifetime=4}] run playsound minecraft:block.sand.place hostile @a ~ ~ ~ 1 .7
execute unless entity @s[tag=Stun] if entity @s[tag=!Special,scores={lifetime=7}] run playsound minecraft:block.sand.place hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=Special,scores={lifetime=1}] run playsound minecraft:block.barrel.open hostile @a ~ ~ ~ 1 .5
execute unless entity @s[scores={GameTimer=40..}] if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.bat.hurt hostile @a ~ ~ ~ .6 .5
scoreboard players add @s ArrowCount 1
execute unless entity @s[tag=Stun] if entity @s[tag=!Special,scores={ArrowCount=8}] run playsound minecraft:block.chorus_flower.grow hostile @a ~ ~ ~ 1 2
execute unless entity @s[tag=Stun] if entity @s[tag=Special,scores={ArrowCount=8}] run playsound minecraft:block.chorus_flower.grow hostile @a ~ ~ ~ 1 1.9
execute if entity @s[scores={ArrowCount=8..}] run scoreboard players set @s ArrowCount 0

#Arrow
execute positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] unless entity @s[tag=Block] run tag @s add Stun

#Particles
execute if entity @s[scores={lifetime=1..20}] run particle minecraft:falling_dust minecraft:sand ~ ~.7 ~ .25 .1 .25 1 1 normal
execute if entity @s[scores={GameTimer=10..}] run particle minecraft:falling_dust minecraft:sand ~ ~.7 ~ .25 .1 .25 1 1 normal
