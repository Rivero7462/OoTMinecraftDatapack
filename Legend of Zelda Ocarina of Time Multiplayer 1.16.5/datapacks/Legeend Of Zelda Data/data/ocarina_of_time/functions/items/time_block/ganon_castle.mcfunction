execute if entity @s[scores={timer=1}] run fill -474 30 1933 -478 28 1940 minecraft:air replace minecraft:dead_brain_coral_block
execute if entity @s[scores={timer=2}] run clone -490 29 1924 -486 32 1931 -478 28 1933

execute if entity @s[scores={lifetime=1}] run fill -445 27 2022 -447 29 2024 minecraft:air replace minecraft:dead_brain_coral_block
execute if entity @s[scores={lifetime=2}] run fill -446 29 2024 -446 27 2022 minecraft:dead_brain_coral_block
execute if entity @s[scores={lifetime=2}] run fill -445 27 2023 -447 29 2023 minecraft:dead_brain_coral_block
