scoreboard players add @s timer 1
#Closed
execute if entity @s[tag=Closed,scores={timer=50}] unless entity @a[tag=Adult] run fill 1399 60 1288 1399 60 1288 minecraft:cyan_terracotta
execute if entity @s[tag=Closed,scores={timer=50}] unless entity @a[tag=Adult] run fill 1399 60 1294 1399 60 1294 minecraft:cyan_terracotta

execute if entity @s[tag=Closed,scores={timer=52..}] unless entity @a[tag=Adult] run fill 1399 60 1288 1399 60 1288 minecraft:blue_concrete
execute if entity @s[tag=Closed,scores={timer=52..}] unless entity @a[tag=Adult] run fill 1399 60 1294 1399 60 1294 minecraft:blue_concrete
execute if entity @s[tag=Closed,scores={timer=52..}] unless entity @a[tag=Adult] run scoreboard players set @s timer 0
#Open
execute if entity @s[tag=Open,scores={timer=50}] unless entity @a[tag=Adult] run fill 1400 62 1288 1400 62 1288 minecraft:cyan_terracotta
execute if entity @s[tag=Open,scores={timer=50}] unless entity @a[tag=Adult] run fill 1400 62 1294 1400 62 1294 minecraft:cyan_terracotta

execute if entity @s[tag=Open,scores={timer=52..}] unless entity @a[tag=Adult] run fill 1400 62 1288 1400 62 1288 minecraft:blue_concrete
execute if entity @s[tag=Open,scores={timer=52..}] unless entity @a[tag=Adult] run fill 1400 62 1294 1400 62 1294 minecraft:blue_concrete
execute if entity @s[tag=Open,scores={timer=52..}] unless entity @a[tag=Adult] run scoreboard players set @s timer 0
