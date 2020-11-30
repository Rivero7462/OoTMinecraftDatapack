execute if entity @s[scores={timer=1}] run clone 1083 45 3025 1085 45 3027 1083 49 3025
execute if entity @s[scores={timer=8}] run clone 1083 45 3025 1085 45 3027 1083 50 3025
execute if entity @s[scores={timer=15}] run clone 1083 45 3025 1085 45 3027 1083 51 3025
execute if entity @s[scores={timer=22}] run clone 1083 45 3025 1085 45 3027 1083 52 3025
execute if entity @s[scores={timer=29}] run clone 1083 45 3025 1085 45 3027 1083 53 3025
execute if entity @s[scores={timer=36}] run clone 1083 45 3025 1085 45 3027 1083 54 3025
execute if entity @s[scores={timer=43}] run clone 1083 45 3025 1085 45 3027 1083 55 3025
execute if entity @s[scores={timer=50}] run clone 1083 45 3025 1085 45 3027 1083 56 3025
execute if entity @s[scores={timer=57}] run clone 1083 45 3025 1085 45 3027 1083 57 3025
execute if entity @s[scores={timer=64}] run clone 1083 45 3025 1085 45 3027 1083 58 3025
execute if entity @s[scores={timer=71}] run clone 1083 45 3025 1085 45 3027 1083 59 3025

execute if entity @s[scores={timer=120}] run fill 1083 59 3025 1085 59 3027 minecraft:air
execute if entity @s[scores={timer=127}] run fill 1083 58 3025 1085 58 3027 minecraft:air
execute if entity @s[scores={timer=134}] run fill 1083 57 3025 1085 57 3027 minecraft:air
execute if entity @s[scores={timer=141}] run fill 1083 56 3025 1085 56 3027 minecraft:air
execute if entity @s[scores={timer=148}] run fill 1083 55 3025 1085 55 3027 minecraft:air
execute if entity @s[scores={timer=155}] run fill 1083 54 3025 1085 54 3027 minecraft:air
execute if entity @s[scores={timer=162}] run fill 1083 53 3025 1085 53 3027 minecraft:air
execute if entity @s[scores={timer=169}] run fill 1083 52 3025 1085 52 3027 minecraft:air
execute if entity @s[scores={timer=176}] run fill 1083 51 3025 1085 51 3027 minecraft:air
execute if entity @s[scores={timer=183}] run fill 1083 50 3025 1085 50 3027 minecraft:air
execute if entity @s[scores={timer=190}] run fill 1083 49 3025 1085 49 3027 minecraft:air

execute if entity @s[scores={timer=110}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=190..}] run tag @s add Off
