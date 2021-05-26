execute unless entity @s[tag=Bean3] if entity @a[x=-583,y=76,z=-706,dx=2,dz=2] if block ~ ~-1 ~ minecraft:acacia_leaves run tag @s add Bean3
execute if entity @s[tag=Bean3] run scoreboard players add @s GameTimer 1

#Tp
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=10}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=20}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=30}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=40}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=50}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=60}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=70}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=80}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=90}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={GameTimer=100}] run tp @a ~ ~-1 ~

#Fill
execute if entity @s[scores={GameTimer=1}] run clone -581 70 -707 -579 70 -705 -583 75 -706

execute if entity @s[scores={GameTimer=10}] run clone -581 69 -707 -579 70 -705 -583 75 -706
execute if entity @s[scores={GameTimer=20}] run clone -581 69 -707 -579 70 -705 -583 76 -706
execute if entity @s[scores={GameTimer=30}] run clone -581 69 -707 -579 70 -705 -583 77 -706
execute if entity @s[scores={GameTimer=40}] run clone -581 69 -707 -579 70 -705 -583 78 -706
execute if entity @s[scores={GameTimer=50}] run clone -581 69 -707 -579 70 -705 -583 79 -706
execute if entity @s[scores={GameTimer=60}] run clone -581 70 -707 -579 71 -705 -583 79 -706
execute if entity @s[scores={GameTimer=70}] run clone -581 70 -707 -579 71 -705 -583 78 -706
execute if entity @s[scores={GameTimer=80}] run clone -581 70 -707 -579 71 -705 -583 77 -706
execute if entity @s[scores={GameTimer=90}] run clone -581 70 -707 -579 71 -705 -583 76 -706
execute if entity @s[scores={GameTimer=100}] run clone -581 70 -707 -579 71 -705 -583 75 -706

execute if entity @s[scores={GameTimer=110..}] run tag @s remove Bean3
execute if entity @s[scores={GameTimer=110..}] run scoreboard players set @s GameTimer 0
