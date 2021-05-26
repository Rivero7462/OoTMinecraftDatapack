#Scores
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Reset
execute unless entity @s[tag=Attack] run stopsound @a hostile minecraft:item.elytra.flying
execute unless entity @s[tag=Attack] run scoreboard players set @s timer 0
execute at @a unless entity @s[scores={timer=181..201}] if block ~ ~-1 ~ #ocarina_of_time:wallmaster if block ~ ~-2 ~ #ocarina_of_time:wallmaster run scoreboard players set @s timer 1

#Shadow
execute at @a if entity @s[scores={timer=1..29}] run data merge entity @s {NoGravity:0b,ArmorItems:[{},{},{},{}]}
execute at @a if entity @s[scores={timer=1..29}] run tp @s ~ ~20 ~
execute if entity @s[scores={timer=30..130}] run team join Wallmaster @s
execute at @a if entity @s[scores={timer=30..130}] unless block ~ ~-1 ~ minecraft:air run tp @s ~ ~ ~ ~ 0
execute at @a if entity @s[scores={timer=30..130}] if block ~ ~-.5 ~ minecraft:air run tp @s ~ ~-.5 ~ ~ 0
execute at @a if entity @s[scores={timer=30..130}] if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-1 ~ ~ 0
execute if entity @s[scores={timer=50..130}] run data merge entity @s {Invulnerable:1b,ArmorItems:[{},{},{},{id:spruce_sapling,Count:1b,tag:{CustomModelData:1}}]}

#Teleport Down
execute at @a if entity @s[scores={timer=131}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute at @a if entity @s[scores={timer=131}] run tp @s ~ ~5 ~
execute if entity @s[scores={timer=137}] run team leave @s
execute if entity @s[scores={timer=137}] run data merge entity @s {ArmorItems:[{},{},{},{id:black_glazed_terracotta,Count:1b}]}
execute at @s if entity @s[scores={timer=135..}] unless block ~ ~-.1 ~ minecraft:air run data merge entity @s {Invulnerable:0b}

execute at @a if entity @s[scores={timer=170}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={timer=170..173}] run tp @s ~ ~3 ~
execute if entity @s[scores={timer=174}] run tp @s ~ ~10 ~
execute at @a if entity @s[scores={timer=175..180}] run scoreboard players set @s timer 0

#Hurt
execute at @a if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s timer 140
execute at @a if entity @s[nbt={HurtTime:10s}] run tag @s remove Stun
#Grab
execute if entity @s[scores={timer=137..160}] if block ~ ~-1 ~ minecraft:air positioned ~ ~-1 ~ if entity @a[distance=..1] unless entity @a[scores={SpiritMagic=1..30}] run scoreboard players set @s timer 181
execute if entity @s[scores={timer=181}] run data merge entity @s {NoGravity:1b}
execute if entity @s[scores={timer=181}] run tp @s ~ ~1 ~
execute if entity @s[scores={timer=181}] run gamemode spectator @a
execute if entity @s[scores={timer=181..200}] run tp @s ~ ~.3 ~
execute if entity @s[scores={timer=181..200}] positioned ~ ~-2 ~ run tp @a ~ ~ ~
execute if entity @s[scores={timer=201}] run gamemode adventure @a

#Sound
execute at @a if entity @s[scores={timer=1..29}] run stopsound @a hostile minecraft:item.elytra.flying
execute at @a if entity @s[scores={timer=50}] run playsound minecraft:item.elytra.flying hostile @a ~ ~ ~ 1 .7
execute at @a if entity @s[scores={timer=131}] run stopsound @a hostile minecraft:item.elytra.flying
execute at @a if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={timer=146}] at @a run playsound minecraft:block.bamboo.break hostile @a ~ ~ ~ 2 .5

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .3 .3 .3 1 1
execute if entity @s[scores={time=111..}] run tag @s remove Stun

#Slingshot
execute if entity @s[scores={timer=135..169}] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @s[scores={timer=135..169}] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Kill
execute if entity @s[tag=Kill] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=Kill] run kill @s
