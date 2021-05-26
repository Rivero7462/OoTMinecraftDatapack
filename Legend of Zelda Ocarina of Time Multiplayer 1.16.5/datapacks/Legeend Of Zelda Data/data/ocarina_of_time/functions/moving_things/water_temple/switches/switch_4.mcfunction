execute if entity @s[scores={timer=1}] run clone 1085 24 3057 1087 24 3059 1085 30 3057
execute if entity @s[scores={timer=9}] run clone 1085 24 3057 1087 24 3059 1085 31 3057
execute if entity @s[scores={timer=17}] run clone 1085 24 3057 1087 24 3059 1085 32 3057
execute if entity @s[scores={timer=25}] run clone 1085 24 3057 1087 24 3059 1085 33 3057
execute if entity @s[scores={timer=33}] run clone 1085 24 3057 1087 24 3059 1085 34 3057
execute if entity @s[scores={timer=41}] run clone 1085 24 3057 1087 24 3059 1085 35 3057
execute if entity @s[scores={timer=49}] run clone 1085 24 3057 1087 24 3059 1085 36 3057
execute if entity @s[scores={timer=57}] run clone 1085 24 3057 1087 24 3059 1085 37 3057

execute if entity @s[scores={timer=158}] run fill 1085 37 3057 1087 37 3059 minecraft:air
execute if entity @s[scores={timer=166}] run fill 1085 36 3057 1087 36 3059 minecraft:air
execute if entity @s[scores={timer=174}] run fill 1085 35 3057 1087 35 3059 minecraft:air
execute if entity @s[scores={timer=182}] run fill 1085 34 3057 1087 34 3059 minecraft:air
execute if entity @s[scores={timer=190}] run fill 1085 33 3057 1087 33 3059 minecraft:air
execute if entity @s[scores={timer=198}] run fill 1085 32 3057 1087 32 3059 minecraft:air
execute if entity @s[scores={timer=206}] run fill 1085 31 3057 1087 31 3059 minecraft:air
execute if entity @s[scores={timer=214}] run fill 1085 30 3057 1087 30 3059 minecraft:air

execute if entity @s[scores={timer=150}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=215..}] run tag @s add Off
