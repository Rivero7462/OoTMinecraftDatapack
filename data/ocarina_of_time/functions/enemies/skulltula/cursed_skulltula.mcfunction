team join Skulltula @s

#Locate
execute unless entity @s[tag=Stun] positioned ~-3.2 ~-10 ~-3.2 if entity @a[dx=5.2,dy=16,dz=5.2] run tag @s add Locate

#Found
execute unless entity @s[tag=Attack] if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1

#Fall
execute if entity @s[scores={timer=1..}] if block ~ ~-.4 ~ minecraft:cobweb run tp @s ~ ~-.4 ~
execute if entity @s[scores={timer=1..}] if block ~ ~-.4 ~ minecraft:air run tp @s ~ ~-.4 ~

#Lost
execute unless entity @s[tag=Stun] positioned ~-3.2 ~-10 ~-3.2 unless entity @a[dx=5.2,dy=16,dz=5.2] run tag @s remove Locate
execute unless entity @s[tag=Stun] positioned ~-3.2 ~-10 ~-3.2 unless entity @a[dx=5.2,dy=16,dz=5.2] run tag @s remove Attack
execute unless entity @s[tag=Stun] positioned ~-3.2 ~-10 ~-3.2 unless entity @a[dx=5.2,dy=16,dz=5.2] run scoreboard players set @s timer 0

#Sound Effects
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ 1 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=4}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ 1 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=7}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ 1 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=9}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ 1 1.5
execute unless entity @s[tag=Stun] if entity @s[scores={timer=13}] run playsound minecraft:block.tripwire.detach hostile @p ~ ~ ~ 1 1.5

#Follow
execute unless entity @s[tag=Stun] if entity @s[scores={timer=15..}] facing entity @p feet run tp @s ~ ~ ~ ~ 0

#Hide Appear
execute if entity @s[tag=CursedMan] if entity @a[distance=..30] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:109}}]}
execute if entity @s[tag=CursedChild] if entity @a[distance=..30] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:108}}]}
execute unless entity @a[distance=..30] run data merge entity @s {ArmorItems:[{},{},{},{}]}
