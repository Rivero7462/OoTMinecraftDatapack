execute if entity @s[tag=CavernBlock] run scoreboard players add @s GameTimer 1

execute if entity @s[tag=CavernBlock,scores={GameTimer=10}] run fill 2144 35 1933 2144 35 1933 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=10}] run fill 2148 35 1933 2148 35 1933 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=10}] run particle minecraft:explosion 2144 35 1933 1 1 1 0 5
execute if entity @s[tag=CavernBlock,scores={GameTimer=10}] run particle minecraft:explosion 2148 35 1933 1 1 1 0 5
execute at @a if entity @s[tag=CavernBlock,scores={GameTimer=10}] run playsound entity.generic.explode block @p

execute if entity @s[tag=CavernBlock,scores={GameTimer=20}] run fill 2144 35 1931 2144 35 1931 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=20}] run fill 2148 35 1931 2148 35 1931 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=20}] run particle minecraft:explosion 2144 35 1931 1 1 1 0 5
execute if entity @s[tag=CavernBlock,scores={GameTimer=20}] run particle minecraft:explosion 2148 35 1931 1 1 1 0 5
execute at @a if entity @s[tag=CavernBlock,scores={GameTimer=20}] run playsound entity.generic.explode block @p

execute if entity @s[tag=CavernBlock,scores={GameTimer=30}] run fill 2144 35 1929 2144 35 1929 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=30}] run fill 2148 35 1929 2148 35 1929 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=30}] run particle minecraft:explosion 2144 35 1929 1 1 1 0 5
execute if entity @s[tag=CavernBlock,scores={GameTimer=30}] run particle minecraft:explosion 2148 35 1929 1 1 1 0 5
execute at @a if entity @s[tag=CavernBlock,scores={GameTimer=30}] run playsound entity.generic.explode block @p

execute if entity @s[tag=CavernBlock,scores={GameTimer=40}] run fill 2144 35 1927 2144 35 1927 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=40}] run fill 2148 35 1927 2148 35 1927 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=40}] run particle minecraft:explosion 2144 35 1927 1 1 1 0 5
execute if entity @s[tag=CavernBlock,scores={GameTimer=40}] run particle minecraft:explosion 2148 35 1927 1 1 1 0 5
execute at @a if entity @s[tag=CavernBlock,scores={GameTimer=40}] run playsound entity.generic.explode block @p

execute if entity @s[tag=CavernBlock,scores={GameTimer=50}] run fill 2144 35 1925 2144 35 1925 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=50}] run fill 2148 35 1925 2148 35 1925 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=50}] run particle minecraft:explosion 2144 35 1925 1 1 1 0 5
execute if entity @s[tag=CavernBlock,scores={GameTimer=50}] run particle minecraft:explosion 2148 35 1925 1 1 1 0 5
execute at @a if entity @s[tag=CavernBlock,scores={GameTimer=50}] run playsound entity.generic.explode block @p

execute if entity @s[tag=CavernBlock,scores={GameTimer=60}] run fill 2144 35 1923 2144 35 1923 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=60}] run fill 2148 35 1923 2148 35 1923 minecraft:air
execute if entity @s[tag=CavernBlock,scores={GameTimer=60}] run particle minecraft:explosion 2144 35 1923 1 1 1 0 5
execute if entity @s[tag=CavernBlock,scores={GameTimer=60}] run particle minecraft:explosion 2148 35 1923 1 1 1 0 5
execute at @a if entity @s[tag=CavernBlock,scores={GameTimer=60}] run playsound entity.generic.explode block @p

execute if entity @s[tag=CavernBlock,scores={GameTimer=65}] run fill 2145 34 1932 2147 34 1918 minecraft:air replace minecraft:gold_block

execute if entity @s[tag=CavernBlock,scores={GameTimer=111}] run tag @s remove CavernBlock
execute if entity @s[scores={GameTimer=111}] run scoreboard players set @s GameTimer 0
