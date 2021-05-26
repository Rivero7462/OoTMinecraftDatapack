stopsound @a block minecraft:block.lava.pop
stopsound @a block minecraft:block.lava.ambient

scoreboard players add @s timer 1

execute unless entity @s[tag=Faster] if entity @s[scores={timer=1..8}] run clone 1576 33 1928 1570 33 1934 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=9..16}] run clone 1583 33 1928 1577 33 1934 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=17..24}] run clone 1583 33 1935 1577 33 1941 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=25..32}] run clone 1576 33 1935 1570 33 1941 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=33..40}] run clone 1569 33 1935 1563 33 1941 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=41..48}] run clone 1562 33 1935 1556 33 1941 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=49..56}] run clone 1583 33 1921 1577 33 1927 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=57..64}] run clone 1576 33 1921 1570 33 1927 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=65..72}] run clone 1569 33 1921 1563 33 1927 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=73..80}] run clone 1562 33 1921 1556 33 1927 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=81..88}] run clone 1562 33 1928 1556 33 1934 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=88..96}] run clone 1569 33 1928 1563 33 1934 1566 51 1926
execute unless entity @s[tag=Faster] if entity @s[scores={timer=96..}] run scoreboard players set @s timer 0

execute if entity @s[tag=Faster] if entity @s[scores={timer=1..4}] run clone 1576 33 1928 1570 33 1934 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=5..8}] run clone 1583 33 1928 1577 33 1934 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=9..12}] run clone 1583 33 1935 1577 33 1941 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=13..16}] run clone 1576 33 1935 1570 33 1941 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=17..20}] run clone 1569 33 1935 1563 33 1941 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=21..24}] run clone 1562 33 1935 1556 33 1941 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=25..28}] run clone 1583 33 1921 1577 33 1927 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=29..32}] run clone 1576 33 1921 1570 33 1927 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=33..36}] run clone 1569 33 1921 1563 33 1927 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=37..40}] run clone 1562 33 1921 1556 33 1927 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=41..44}] run clone 1562 33 1928 1556 33 1934 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=45..48}] run clone 1569 33 1928 1563 33 1934 1566 51 1926
execute if entity @s[tag=Faster] if entity @s[scores={timer=48..}] run scoreboard players set @s timer 0

execute unless entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=north] run tp @a ~ ~ ~.1
execute unless entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=west] run tp @a ~.1 ~ ~
execute unless entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=south] run tp @a ~ ~ ~-.1
execute unless entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=east] run tp @a ~-.1 ~ ~

execute if entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=north] run tp @a ~ ~ ~.2
execute if entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=west] run tp @a ~.2 ~ ~
execute if entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=south] run tp @a ~ ~ ~-.2
execute if entity @s[tag=Faster] if block ~ ~-5 ~ minecraft:yellow_glazed_terracotta[facing=east] run tp @a ~-.2 ~ ~

execute if entity @a[x=1568,y=52,z=1921,dx=2,dz=2] run fill 1569 53 1921 1569 53 1921 minecraft:air
