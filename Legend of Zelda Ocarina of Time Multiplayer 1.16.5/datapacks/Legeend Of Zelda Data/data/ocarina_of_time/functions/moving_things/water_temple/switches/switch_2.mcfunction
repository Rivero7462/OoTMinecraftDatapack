execute if entity @s[scores={timer=1}] run fill 1023 58 3046 1021 58 3048 minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={timer=3}] run fill 1023 57 3046 1021 57 3048 minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={timer=5}] run fill 1023 56 3046 1021 56 3048 minecraft:air replace minecraft:pink_stained_glass

execute if entity @s[scores={timer=20}] run clone 1021 52 3046 1023 52 3048 1021 56 3046 masked
execute if entity @s[scores={timer=23}] run clone 1021 53 3046 1023 53 3048 1021 57 3046
execute if entity @s[scores={timer=25}] run clone 1021 53 3046 1023 53 3048 1021 58 3046

execute if entity @s[scores={timer=15}] at @a run playsound minecraft:entity.experience_orb.pickup ambient @a ~ ~ ~ .5 1.7
execute if entity @s[scores={timer=26..}] run tag @s add Off
