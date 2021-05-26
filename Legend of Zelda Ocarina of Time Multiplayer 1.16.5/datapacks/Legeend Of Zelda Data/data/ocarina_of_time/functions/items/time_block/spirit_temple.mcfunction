#1
execute if entity @s[scores={timer=1}] run fill 11 85 841 11 87 841 minecraft:air
execute if entity @s[scores={timer=1}] run fill 11 85 848 11 87 848 minecraft:dead_brain_coral_block
execute if entity @s[scores={timer=2}] run fill 11 85 841 11 87 841 minecraft:dead_brain_coral_block
execute if entity @s[scores={timer=2}] run fill 11 85 848 11 87 848 minecraft:air

#2
execute if entity @s[scores={lifetime=1}] run fill 13 107 888 11 109 886 minecraft:air
execute if entity @s[scores={lifetime=2}] run fill 13 107 888 11 109 886 minecraft:dead_brain_coral_block
