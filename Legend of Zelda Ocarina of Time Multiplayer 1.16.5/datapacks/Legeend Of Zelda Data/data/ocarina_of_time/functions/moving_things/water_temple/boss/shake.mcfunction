scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run kill @e[type=armor_stand,tag=FakeTentacle]
execute if entity @s[scores={lifetime=1}] run kill @e[type=armor_stand,tag=RealTentacle]
execute if entity @s[scores={lifetime=1}] run data merge entity @s {Pose:{Head:[-90f,0f,0f]}}

execute if entity @s[scores={lifetime=1..209}] run effect give @a minecraft:levitation 1 255 true
execute if entity @s[scores={lifetime=1..209}] run scoreboard players set @e[type=zombie,tag=MorphaEye] timer 0
execute if entity @s[scores={lifetime=1..209}] run scoreboard players set @e[type=zombie,tag=MorphaEye] lifetime 0
execute if entity @s[scores={lifetime=1..209}] run tag @e[type=zombie,tag=MorphaEye] add Bounce
execute if entity @s[scores={lifetime=1..209}] run tag @e[type=zombie,tag=MorphaEye] remove Swim
execute if entity @s[scores={lifetime=1..209}] run scoreboard players set @e[type=dolphin,tag=RandomMorpha] timer 0

execute if entity @s[scores={lifetime=1..30}] run tp @s ~ ~ ~ ~3 ~2
execute if entity @s[scores={lifetime=31..59}] run tp @s ~ ~ ~ ~3 ~-2

execute if entity @s[scores={lifetime=60}] run tp @s ~ ~ ~ ~180 ~

execute if entity @s[scores={lifetime=61..85}] run tp @s ~ ~ ~ ~-3 ~3
execute if entity @s[scores={lifetime=86..114}] run tp @s ~ ~ ~ ~-3 ~-2.5

execute if entity @s[scores={lifetime=115}] run tp @s ~ ~ ~ ~180 ~

execute if entity @s[scores={lifetime=116..135}] run tp @s ~ ~ ~ ~3 ~4
execute if entity @s[scores={lifetime=136..154}] run tp @s ~ ~ ~ ~3 ~-4

execute if entity @s[scores={lifetime=155}] run tp @s ~ ~ ~ ~180 ~

execute if entity @s[scores={lifetime=156..170}] run tp @s ~ ~ ~ ~-3 ~5
execute if entity @s[scores={lifetime=171..184}] run tp @s ~ ~ ~ ~-3 ~-5

execute if entity @s[scores={lifetime=185}] run tp @s ~ ~ ~ ~180 ~

execute if entity @s[scores={lifetime=186..196}] run tp @s ~ ~ ~ ~3 ~6
execute if entity @s[scores={lifetime=197..207}] run tp @s ~ ~ ~ ~3 ~-6

execute if entity @s[scores={lifetime=208}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[scores={lifetime=208}] run data modify entity @s Rotation[1] set value 0f
execute if entity @s[scores={lifetime=208}] at @a run tp @s ~ ~ ~

execute if entity @s[scores={lifetime=1..207}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^ ^ ^4
execute if entity @s[scores={lifetime=209..}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^ ^ ^

execute if entity @s[scores={lifetime=209..}] run tp @s ^ ^ ^-.8

execute if entity @s[scores={lifetime=209..}] unless block ^ ^ ^-1.5 minecraft:air run effect clear @a minecraft:levitation
execute if entity @s[scores={lifetime=209..}] unless block ^ ^ ^-1.5 minecraft:air run tp @s ~ ~-10 ~
execute if entity @s[scores={lifetime=209..}] unless block ^ ^ ^-1.5 minecraft:air run kill @s

#Hurt
execute if entity @s[scores={lifetime=20}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={lifetime=70}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={lifetime=100}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={lifetime=140}] run effect give @a minecraft:wither 2 2 true
