#1
execute if block 2174 59 1831 minecraft:air run scoreboard players add @s timer 1
execute if entity @s[scores={timer=110..}] run fill 2174 59 1831 2174 59 1831 minecraft:tnt
execute if entity @s[scores={timer=110..}] run scoreboard players set @s timer 0

#2
execute if block 2174 59 1827 minecraft:air run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=110..}] run fill 2174 59 1827 2174 59 1827 minecraft:tnt
execute if entity @s[scores={lifetime=110..}] run scoreboard players set @s lifetime 0

#3
execute if block 2196 64 1846 minecraft:air run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=110..}] run fill 2196 66 1845 2196 66 1845 minecraft:tnt
execute if entity @s[scores={GameTimer=110..}] run fill 2196 64 1846 2196 64 1846 minecraft:tnt
execute if entity @s[scores={GameTimer=110..}] run scoreboard players set @s GameTimer 0

#4
execute if block 2194 64 1848 minecraft:air run scoreboard players add @s time 1
execute if entity @s[scores={time=110..}] run fill 2193 66 1848 2193 66 1848 minecraft:tnt
execute if entity @s[scores={time=110..}] run fill 2194 64 1848 2194 64 1848 minecraft:tnt
execute if entity @s[scores={time=110..}] run scoreboard players set @s time 0

#5
execute if block 2172 69 1845 minecraft:air run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=110..}] run fill 2172 69 1845 2172 69 1845 minecraft:tnt
execute if entity @s[scores={ArrowCount=110..}] run scoreboard players set @s ArrowCount 0

#6
execute if block 2168 69 1845 minecraft:air run scoreboard players add @s PushBlock 1
execute if entity @s[scores={PushBlock=110..}] run fill 2168 69 1845 2168 69 1845 minecraft:tnt
execute if entity @s[scores={PushBlock=110..}] run scoreboard players set @s PushBlock 0

#7
execute if block 2157 66 1823 minecraft:air run scoreboard players add @s nearbyBomb 1
execute if entity @s[scores={nearbyBomb=110..}] run fill 2157 66 1823 2157 66 1823 minecraft:tnt
execute if entity @s[scores={nearbyBomb=110..}] run scoreboard players set @s nearbyBomb 0
