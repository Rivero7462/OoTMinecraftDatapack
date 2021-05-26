scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] run fill 1081 39 3111 1081 39 3111 minecraft:air
execute if entity @s[scores={lifetime=1}] run fill 1081 38 3111 1081 38 3111 minecraft:gold_block
execute if entity @s[scores={lifetime=1}] run fill 1079 37 3091 1079 37 3091 minecraft:redstone_torch

execute if entity @s[scores={lifetime=1}] run clone 1077 26 3101 1079 26 3103 1079 32 3097
execute if entity @s[scores={lifetime=1}] run clone 1077 26 3101 1079 26 3103 1077 32 3101
execute if entity @s[scores={lifetime=1}] run clone 1077 26 3101 1079 26 3103 1078 32 3105
execute if entity @s[scores={lifetime=8}] run clone 1077 26 3101 1079 26 3103 1079 33 3097
execute if entity @s[scores={lifetime=8}] run clone 1077 26 3101 1079 26 3103 1077 33 3101
execute if entity @s[scores={lifetime=8}] run clone 1077 26 3101 1079 26 3103 1078 33 3105
execute if entity @s[scores={lifetime=15}] run clone 1077 26 3101 1079 26 3103 1079 34 3097
execute if entity @s[scores={lifetime=15}] run clone 1077 26 3101 1079 26 3103 1077 34 3101
execute if entity @s[scores={lifetime=15}] run clone 1077 26 3101 1079 26 3103 1078 34 3105
execute if entity @s[scores={lifetime=22}] run clone 1077 26 3101 1079 26 3103 1079 35 3097
execute if entity @s[scores={lifetime=22}] run clone 1077 26 3101 1079 26 3103 1077 35 3101
execute if entity @s[scores={lifetime=22}] run clone 1077 26 3101 1079 26 3103 1078 35 3105
execute if entity @s[scores={lifetime=29}] run clone 1077 26 3101 1079 26 3103 1079 36 3097
execute if entity @s[scores={lifetime=29}] run clone 1077 26 3101 1079 26 3103 1077 36 3101
execute if entity @s[scores={lifetime=29}] run clone 1077 26 3101 1079 26 3103 1078 36 3105
execute if entity @s[scores={lifetime=36}] run clone 1077 26 3101 1079 26 3103 1079 37 3097
execute if entity @s[scores={lifetime=36}] run clone 1077 26 3101 1079 26 3103 1077 37 3101
execute if entity @s[scores={lifetime=36}] run clone 1077 26 3101 1079 26 3103 1078 37 3105
execute if entity @s[scores={lifetime=43}] run clone 1077 26 3101 1079 26 3103 1079 38 3097
execute if entity @s[scores={lifetime=43}] run clone 1077 26 3101 1079 26 3103 1077 38 3101
execute if entity @s[scores={lifetime=43}] run clone 1077 26 3101 1079 26 3103 1078 38 3105
execute if entity @s[scores={lifetime=50}] run clone 1077 26 3101 1079 26 3103 1079 39 3097
execute if entity @s[scores={lifetime=50}] run clone 1077 26 3101 1079 26 3103 1077 39 3101
execute if entity @s[scores={lifetime=50}] run clone 1077 26 3101 1079 26 3103 1078 39 3105

execute if entity @s[scores={lifetime=120}] run fill 1077 39 3107 1081 39 3097 minecraft:air
execute if entity @s[scores={lifetime=127}] run fill 1077 38 3107 1081 38 3097 minecraft:air
execute if entity @s[scores={lifetime=134}] run fill 1077 37 3107 1081 37 3097 minecraft:air
execute if entity @s[scores={lifetime=141}] run fill 1077 36 3107 1081 36 3097 minecraft:air
execute if entity @s[scores={lifetime=148}] run fill 1077 35 3107 1081 35 3097 minecraft:air
execute if entity @s[scores={lifetime=155}] run fill 1077 34 3107 1081 34 3097 minecraft:air
execute if entity @s[scores={lifetime=162}] run fill 1077 33 3107 1081 33 3097 minecraft:air
execute if entity @s[scores={lifetime=169}] run fill 1077 32 3107 1081 32 3097 minecraft:air

execute if entity @s[scores={lifetime=110}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={lifetime=110}] run fill 1079 37 3091 1079 37 3091 minecraft:air

execute if entity @s[scores={lifetime=170}] run fill 1081 39 3111 1081 39 3111 minecraft:light_weighted_pressure_plate
execute if entity @s[scores={lifetime=170}] run fill 1081 38 3111 1081 38 3111 minecraft:polished_andesite
execute if entity @s[scores={lifetime=170..}] run tag @s remove Pressure
execute if entity @s[scores={lifetime=170..}] run scoreboard players set @s lifetime 0
