#Bomb 1
execute if block -40 36 1312 minecraft:air run scoreboard players add @s timer 1
execute if entity @s[scores={timer=110..}] run fill -40 36 1312 -40 36 1312 minecraft:tnt
execute if entity @s[scores={timer=110..}] run scoreboard players set @s timer 0

#Bomb 2
execute if block 5 36 1339 minecraft:air run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=110..}] run fill 5 36 1339 5 36 1339 minecraft:tnt
execute if entity @s[scores={lifetime=110..}] run scoreboard players set @s lifetime 0

#Bomb 3
execute if block 4 36 1340 minecraft:air run scoreboard players add @s time 1
execute if entity @s[scores={time=110..}] run fill 4 36 1340 4 36 1340 minecraft:tnt
execute if entity @s[scores={time=110..}] run scoreboard players set @s time 0

#Bomb 4
execute if block 3 36 1341 minecraft:air run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=110..}] run fill 3 36 1341 3 36 1341 minecraft:tnt
execute if entity @s[scores={ArrowCount=110..}] run scoreboard players set @s ArrowCount 0

#Bomb 5
execute if block 2 36 1340 minecraft:air run scoreboard players add @s PushBlock 1
execute if entity @s[scores={PushBlock=110..}] run fill 2 36 1340 2 36 1340 minecraft:tnt
execute if entity @s[scores={PushBlock=110..}] run scoreboard players set @s PushBlock 0

#Bomb 6
execute if block 1 36 1339 minecraft:air run scoreboard players add @s nearbyBomb 1
execute if entity @s[scores={nearbyBomb=110..}] run fill 1 36 1339 1 36 1339 minecraft:tnt
execute if entity @s[scores={nearbyBomb=110..}] run scoreboard players set @s nearbyBomb 0
