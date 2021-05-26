#1
execute if entity @s[scores={timer=1}] run fill 3113 50 1927 3111 52 1925 minecraft:dead_brain_coral_block replace minecraft:air
execute if entity @s[scores={timer=1}] run fill 3111 48 1928 3113 46 1930 minecraft:air
execute if entity @s[scores={timer=2}] unless block 3113 46 1930 minecraft:dead_brain_coral_block run clone 3105 45 1925 3107 47 1927 3111 46 1928
execute if entity @s[scores={timer=2}] run fill 3111 50 1927 3113 52 1925 minecraft:air replace minecraft:dead_brain_coral_block

#2
execute if entity @s[scores={lifetime=1}] run fill 3030 109 1960 3032 112 1962 minecraft:air replace minecraft:dead_brain_coral_block
execute if entity @s[scores={lifetime=1}] run fill 3025 114 1957 3023 115 1955 minecraft:dead_brain_coral_block replace minecraft:air
execute if entity @s[scores={lifetime=2}] unless block 3030 109 1960 minecraft:dead_brain_coral_block run clone 3030 103 1959 3032 106 1961 3030 109 1960
execute if entity @s[scores={lifetime=2}] run fill 3025 114 1957 3023 115 1955 minecraft:air replace minecraft:dead_brain_coral_block
