scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] align xyz run tp @s ~0.5 ~ ~0.5
execute if entity @s[scores={timer=10}] run fill ~ 62 ~ ~ 62 ~ minecraft:pink_stained_glass replace minecraft:water
execute if entity @s[scores={timer=20}] run fill ~ 63 ~ ~ 63 ~ minecraft:pink_stained_glass replace minecraft:air
execute if entity @s[scores={timer=30}] run fill ~ 64 ~ ~ 64 ~ minecraft:pink_stained_glass replace minecraft:air
execute if entity @s[scores={timer=40}] run fill ~ 65 ~ ~ 65 ~ minecraft:pink_stained_glass replace minecraft:air
execute if entity @s[scores={timer=50}] run fill ~ 66 ~ ~ 66 ~ minecraft:pink_stained_glass replace minecraft:air
execute if entity @s[scores={timer=60}] run fill ~ 67 ~ ~ 67 ~ minecraft:pink_stained_glass replace minecraft:air

execute if entity @s[scores={timer=80}] run fill ~ 66 ~ ~ 67 ~ minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={timer=80}] run tp @s ~ 64.2 ~

execute if entity @s[scores={timer=81..84}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

execute if entity @s[scores={timer=85}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^3 ~ 0
execute if entity @s[scores={timer=85}] run data merge entity @s {ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:14}}]}

execute unless entity @s[tag=Shake] if entity @s[scores={timer=297}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute unless entity @s[tag=Shake] if entity @s[scores={timer=302..}] positioned ^ ^ ^-3 run fill ~ 65 ~ ~ 65 ~ minecraft:air replace minecraft:pink_stained_glass
execute unless entity @s[tag=Shake] if entity @s[scores={timer=307..}] positioned ^ ^ ^-3 run fill ~ 64 ~ ~ 64 ~ minecraft:air replace minecraft:pink_stained_glass
execute unless entity @s[tag=Shake] if entity @s[scores={timer=312..}] positioned ^ ^ ^-3 run fill ~ 63 ~ ~ 63 ~ minecraft:air replace minecraft:pink_stained_glass
execute unless entity @s[tag=Shake] if entity @s[scores={timer=317..}] positioned ^ ^ ^-3 run fill ~ 62 ~ ~ 62 ~ minecraft:water replace minecraft:pink_stained_glass

execute unless entity @s[tag=Shake] if entity @s[scores={timer=317..}] run scoreboard players set @e[type=dolphin,tag=RandomMorpha] timer 0
execute unless entity @s[tag=Shake] if entity @s[scores={timer=317..}] run kill @s

#Grab
execute if entity @s[scores={timer=90..297}] positioned ^ ^ ^2.5 if entity @a[distance=..1.2] run tag @s add Shake
execute if entity @s[scores={timer=90..297}] positioned ^ ^ ^1 if entity @a[distance=..1.2] run tag @s add Shake
execute if entity @s[scores={timer=90..297}] positioned ^ ^ ^ if entity @a[distance=..1.2] run tag @s add Shake
execute if entity @s[scores={timer=90..297}] positioned ^ ^ ^-1 if entity @a[distance=..1.2] run tag @s add Shake

execute if entity @s[tag=Shake] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run fill 1054 63 3082 1073 67 3101 minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={lifetime=1}] run fill 1054 62 3082 1073 62 3101 minecraft:water replace minecraft:pink_stained_glass
execute if entity @s[scores={lifetime=1}] run summon minecraft:zombie ^ ^ ^-3 {Tags:["ShakeTentacle","Morpha","Invisible"],Rotation:[0f,-90f],PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Invulnerable:1b,Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:14}}],ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[scores={lifetime=2}] rotated as @s at @e[type=zombie,tag=ShakeTentacle] run tp @e[type=zombie,tag=ShakeTentacle] ~ ~ ~ ~ ~
execute if entity @s[scores={lifetime=2..}] run scoreboard players set @e[type=dolphin,tag=RandomMorpha] timer 0
execute if entity @s[scores={lifetime=2..}] run kill @s

#Sounds
execute if entity @s[scores={timer=85}] run playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ .8 .5
execute if entity @s[scores={timer=135}] run playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ .8 .5
execute if entity @s[scores={timer=185}] run playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ .8 .5
execute if entity @s[scores={timer=235}] run playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ .8 .5
