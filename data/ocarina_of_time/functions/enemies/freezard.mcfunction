data merge entity @s {Fire:0s}
function ocarina_of_time:entity_setup/fire_resist

#Attack
execute unless entity @s[tag=Move] if entity @a[distance=..12] run tag @s add Attack
execute unless entity @a[distance=..12] run tag @s remove Attack
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1

#Rotate
#Right
execute unless entity @s[tag=Move] if entity @s[scores={timer=1..150}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^ ~-1 ~
#Left
execute unless entity @s[tag=Move] if entity @s[scores={timer=1..150}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^ ~1 ~

#Right
execute if entity @s[tag=Move] if entity @s[scores={timer=1..150}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^ ~-2 ~
#Left
execute if entity @s[tag=Move] if entity @s[scores={timer=1..150}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^ ~2 ~

#Breathe
execute if entity @s[scores={timer=151}] run playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 .7
execute if entity @s[scores={timer=181}] run playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 .7
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^.5 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^1 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^1.5 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^2 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^2.5 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^3 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^3.5 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=151..180}] run particle minecraft:end_rod ^ ^1 ^4 0.2 0.2 0.2 0.01 1 normal
execute if entity @s[scores={timer=281}] if entity @s[tag=Move] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[scores={timer=281}] if entity @s[tag=Move] run tp @s @e[type=area_effect_cloud,tag=FreezardReset,limit=1,sort=nearest]
execute if entity @s[scores={timer=281}] if entity @s[tag=Move] run kill @e[type=area_effect_cloud,tag=FreezardReset,limit=1,sort=nearest]
execute if entity @s[scores={timer=281}] if entity @s[tag=Move] run tag @s remove Attack
execute if entity @s[scores={timer=281..}] run scoreboard players set @s timer 0
execute unless entity @s[tag=Attack] run scoreboard players set @s timer 0

#Hurt
execute if entity @s[scores={timer=151..180}] positioned ^ ^ ^1 if entity @a[distance=..1] run tag @a add Freeze
execute if entity @s[scores={timer=151..180}] positioned ^ ^ ^2 if entity @a[distance=..1] run tag @a add Freeze
execute if entity @s[scores={timer=151..180}] positioned ^ ^ ^3 if entity @a[distance=..1] run tag @a add Freeze

#Arrow
execute as @e[type=arrow] unless entity @s[type=arrow,nbt={Potion:"minecraft:healing"}] run effect give @e[type=zombie,tag=Freezard] minecraft:resistance 1 10 true

#Move Version
execute if entity @s[tag=Move] unless entity @s[tag=Attack] unless entity @s[tag=Chase] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=Move] unless entity @s[tag=Attack] if entity @a[distance=..6] run tag @s add Chase
execute if entity @s[tag=Chase] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:white_stained_glass_pane",Count:1b,tag:{CustomModelData:2}}]}
execute if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["FreezardReset"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={lifetime=1..10}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={lifetime=11..}] if block ^ ^ ^1 minecraft:air if block ^.2 ^ ^ minecraft:air if block ^-.2 ^ ^ minecraft:air run tp @s ^ ^ ^.15
execute if entity @s[scores={lifetime=11..}] unless block ^ ^ ^1 minecraft:air run tag @s add Attack
execute if entity @s[scores={lifetime=11..}] unless block ^ ^ ^1 minecraft:air run tag @s remove Chase
execute if entity @s[scores={lifetime=11..}] unless block ^ ^ ^1 minecraft:air run scoreboard players set @s lifetime 0
execute if entity @s[scores={lifetime=11..}] unless block ^.2 ^ ^ minecraft:air run tag @s add Attack
execute if entity @s[scores={lifetime=11..}] unless block ^.2 ^ ^ minecraft:air run tag @s remove Chase
execute if entity @s[scores={lifetime=11..}] unless block ^.2 ^ ^ minecraft:air run scoreboard players set @s lifetime 0
execute if entity @s[scores={lifetime=11..}] unless block ^-.2 ^ ^ minecraft:air run tag @s add Attack
execute if entity @s[scores={lifetime=11..}] unless block ^-.2 ^ ^ minecraft:air run tag @s remove Chase
execute if entity @s[scores={lifetime=11..}] unless block ^-.2 ^ ^ minecraft:air run scoreboard players set @s lifetime 0
