#1
execute unless entity @s[tag=One] if entity @e[type=snowball,x=2261,y=54,z=1955,dx=0,dz=0] run tag @s add One
execute if entity @s[tag=One] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run fill 2262 54 1955 2262 54 1955 minecraft:orange_shulker_box
execute if entity @s[scores={timer=1}] run fill 2254 49 1956 2256 49 1954 minecraft:smooth_red_sandstone
execute if entity @s[scores={timer=1}] run fill 2254 50 1954 2256 50 1956 minecraft:air
execute if entity @s[scores={timer=1}] run fill 2256 51 1956 2254 51 1954 minecraft:air

execute if entity @s[scores={timer=240..}] run fill 2262 54 1955 2262 54 1955 minecraft:yellow_shulker_box
execute if entity @s[scores={timer=240..}] run fill 2254 49 1956 2256 49 1954 minecraft:netherrack
execute if entity @s[scores={timer=240..}] run fill 2254 50 1954 2256 50 1956 minecraft:fire
execute if entity @s[scores={timer=240..}] run fill 2256 51 1956 2254 51 1954 minecraft:barrier
execute if entity @s[scores={timer=241..}] run tag @s remove One
execute if entity @s[scores={timer=241..}] run scoreboard players set @s timer 0

#2
execute unless entity @s[tag=Two] if entity @e[type=snowball,x=2249,y=54,z=1941,dx=0,dz=0] run tag @s add Two
execute if entity @s[tag=Two] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run fill 2248 54 1941 2248 54 1941 minecraft:orange_shulker_box
execute if entity @s[scores={lifetime=1}] run fill 2261 49 1942 2259 49 1940 minecraft:smooth_red_sandstone
execute if entity @s[scores={lifetime=1}] run fill 2261 50 1942 2259 50 1940 minecraft:air
execute if entity @s[scores={lifetime=1}] run fill 2261 51 1942 2259 51 1940 minecraft:air

execute if entity @s[scores={lifetime=300..}] run fill 2248 54 1941 2248 54 1941 minecraft:yellow_shulker_box
execute if entity @s[scores={lifetime=300..}] run fill 2261 49 1942 2259 49 1940 minecraft:netherrack
execute if entity @s[scores={lifetime=300..}] run fill 2261 50 1942 2259 50 1940 minecraft:fire
execute if entity @s[scores={lifetime=300..}] run fill 2261 51 1942 2259 51 1940 minecraft:barrier
execute if entity @s[scores={lifetime=301..}] run tag @s remove Two
execute if entity @s[scores={lifetime=301..}] run scoreboard players set @s lifetime 0

#3
execute unless entity @s[tag=Three] if entity @e[type=snowball,x=2260,y=51,z=1947,dx=0,dz=0] run tag @s add Three
execute if entity @s[tag=Three] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run fill 2260 51 1948 2260 51 1948 minecraft:orange_shulker_box
execute if entity @s[scores={GameTimer=1}] run fill 2256 49 1942 2254 49 1940 minecraft:smooth_red_sandstone
execute if entity @s[scores={GameTimer=1}] run fill 2256 50 1942 2254 50 1940 minecraft:air
execute if entity @s[scores={GameTimer=1}] run fill 2256 51 1942 2254 51 1940 minecraft:air

execute if entity @s[scores={GameTimer=240..}] run fill 2260 51 1948 2260 51 1948 minecraft:yellow_shulker_box
execute if entity @s[scores={GameTimer=240..}] run fill 2256 49 1942 2254 49 1940 minecraft:netherrack
execute if entity @s[scores={GameTimer=240..}] run fill 2256 50 1942 2254 50 1940 minecraft:fire
execute if entity @s[scores={GameTimer=240..}] run fill 2256 51 1942 2254 51 1940 minecraft:barrier
execute if entity @s[scores={GameTimer=241..}] run tag @s remove Three
execute if entity @s[scores={GameTimer=241..}] run scoreboard players set @s GameTimer 0
