execute unless entity @s[tag=Bean] if entity @a[x=1612,y=76,z=1941,dx=2,dz=2] if block ~ ~-1 ~ minecraft:acacia_leaves run tag @s add Bean
execute if entity @s[tag=Bean] run scoreboard players add @s timer 1

#Tp
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=10}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=20}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=30}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=40}] run tp @a ~ ~1 ~
execute if block ~ ~-1 ~ minecraft:acacia_leaves if entity @s[scores={timer=50}] run tp @a ~ ~1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=70}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=80}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=90}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=100}] run tp @a ~ ~-1 ~
execute if block ~ ~-.1 ~ minecraft:acacia_leaves if entity @s[scores={timer=110}] run tp @a ~ ~-1 ~

#Move
execute if entity @s[scores={timer=1}] run clone 1613 76 1931 1615 76 1933 1612 75 1941

execute if entity @s[scores={timer=10}] run clone 1613 75 1931 1615 76 1933 1612 75 1941
execute if entity @s[scores={timer=20}] run clone 1613 75 1931 1615 76 1933 1612 76 1941
execute if entity @s[scores={timer=30}] run clone 1613 75 1931 1615 76 1933 1612 77 1941
execute if entity @s[scores={timer=40}] run clone 1613 75 1931 1615 76 1933 1612 78 1941
execute if entity @s[scores={timer=50}] run clone 1613 75 1931 1615 76 1933 1612 79 1941
execute if entity @s[scores={timer=70}] run clone 1613 76 1931 1615 77 1933 1612 79 1941
execute if entity @s[scores={timer=80}] run clone 1613 76 1931 1615 77 1933 1612 78 1941
execute if entity @s[scores={timer=90}] run clone 1613 76 1931 1615 77 1933 1612 77 1941
execute if entity @s[scores={timer=100}] run clone 1613 76 1931 1615 77 1933 1612 76 1941
execute if entity @s[scores={timer=110}] run clone 1613 76 1931 1615 77 1933 1612 75 1941

execute if entity @s[scores={timer=120..}] run tag @s remove Bean
execute if entity @s[scores={timer=120..}] run scoreboard players set @s timer 0
