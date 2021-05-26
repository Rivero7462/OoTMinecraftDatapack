#1
execute if entity @s[scores={timer=1}] run fill 1794 63 970 1796 65 972 minecraft:air
execute if entity @s[scores={timer=2}] if block 1794 63 970 minecraft:air run clone 1794 63 966 1796 65 968 1794 63 970

#2
execute if entity @s[scores={lifetime=1}] run fill 1583 58 929 1581 60 931 minecraft:air
execute if entity @s[scores={lifetime=2}] if block 1581 58 929 minecraft:air run clone 1575 58 938 1577 60 940 1581 58 929
