scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run scoreboard players set @s text 0
execute if entity @s[scores={lifetime=1}] run fill 1569 50 1936 1569 50 1936 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1568 50 1935 1568 50 1935 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1570 50 1935 1570 50 1935 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run fill 1569 50 1934 1569 50 1934 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run tp @a 1569 48.5 1935

execute if entity @s[scores={lifetime=50}] run gamemode spectator @a
execute if entity @s[scores={lifetime=50..200}] run tp @a 1542 77 1930 -90 60

execute if entity @s[scores={lifetime=100}] run fill 1548 69 1931 1546 69 1929 minecraft:air replace minecraft:water
execute if entity @s[scores={lifetime=100}] run fill 1546 69 1930 1546 69 1930 minecraft:ladder[facing=east,waterlogged=false]
execute if entity @s[scores={lifetime=105}] run fill 1548 68 1931 1546 68 1929 minecraft:air replace minecraft:water
execute if entity @s[scores={lifetime=105}] run fill 1546 68 1930 1546 68 1930 minecraft:ladder[facing=east,waterlogged=false]
execute if entity @s[scores={lifetime=110}] run fill 1548 67 1931 1546 67 1929 minecraft:air replace minecraft:water
execute if entity @s[scores={lifetime=110}] run fill 1546 67 1930 1546 67 1930 minecraft:ladder[facing=east,waterlogged=false]
execute if entity @s[scores={lifetime=115}] run fill 1548 66 1931 1546 66 1929 minecraft:air replace minecraft:water
execute if entity @s[scores={lifetime=115}] run fill 1546 66 1930 1546 66 1930 minecraft:ladder[facing=east,waterlogged=false]
execute if entity @s[scores={lifetime=120}] run fill 1548 65 1931 1546 65 1929 minecraft:air replace minecraft:water
execute if entity @s[scores={lifetime=120}] run fill 1546 65 1930 1546 65 1930 minecraft:ladder[facing=east,waterlogged=false]
execute if entity @s[scores={lifetime=125}] run fill 1548 64 1931 1546 64 1929 minecraft:air replace minecraft:water
execute if entity @s[scores={lifetime=125}] run fill 1546 64 1930 1546 64 1930 minecraft:ladder[facing=east,waterlogged=false]

execute if entity @s[scores={lifetime=130}] run fill 1552 63 1932 1546 48 1928 minecraft:air replace minecraft:water
execute if entity @s[scores={lifetime=130}] run fill 1546 63 1930 1546 48 1930 minecraft:ladder[facing=east,waterlogged=false]

execute if entity @s[scores={lifetime=140}] run scoreboard players set @s text 2
execute if entity @s[scores={lifetime=140}] run fill 1565 43 1937 1565 43 1937 minecraft:gold_block
execute if entity @s[scores={lifetime=140}] run fill 1568 49 1934 1570 51 1936 minecraft:air replace minecraft:barrier
execute if entity @s[scores={lifetime=140}] run gamemode adventure @a
execute if entity @s[scores={lifetime=140}] run tp @a 1569 48.5 1935 0 ~
execute if entity @s[scores={lifetime=140}] run tag @a remove DrainWell
