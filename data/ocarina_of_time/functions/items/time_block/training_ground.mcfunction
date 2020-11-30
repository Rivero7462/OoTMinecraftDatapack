#1
execute if entity @s[scores={timer=1}] run fill 529 36 882 534 33 885 minecraft:air
execute if entity @s[scores={timer=2}] if block 532 35 884 minecraft:air run clone 529 17 883 534 20 885 529 33 882

#2
execute if entity @s[scores={lifetime=1}] run fill 559 32 881 563 32 885 minecraft:dead_brain_coral_block
execute if entity @s[scores={lifetime=2}] run fill 559 32 881 563 32 885 minecraft:water
