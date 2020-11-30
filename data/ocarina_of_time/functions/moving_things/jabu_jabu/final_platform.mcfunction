execute unless block 1698 23 1251 minecraft:gold_block run fill 1693 25 1256 1703 25 1266 minecraft:air
execute unless block 1698 23 1251 minecraft:gold_block run fill 1698 23 1251 1698 23 1251 minecraft:gold_block

execute if entity @s[tag=Up] run scoreboard players add @s timer 1

execute if entity @s[tag=Up,scores={timer=1}] run clone 1689 4 1253 1699 6 1243 1693 23 1256
execute if entity @s[tag=Up,scores={timer=3}] run clone 1689 4 1253 1699 6 1243 1693 24 1256
execute if entity @s[tag=Up,scores={timer=6}] run fill 1693 24 1266 1703 24 1256 minecraft:purpur_slab[waterlogged=true]
execute if entity @s[tag=Up,scores={timer=9}] run clone 1689 4 1253 1699 6 1243 1693 25 1256
execute if entity @s[tag=Up,scores={timer=12}] run clone 1689 4 1253 1699 6 1243 1693 26 1256
execute if entity @s[tag=Up,scores={timer=15}] run clone 1689 4 1253 1699 6 1243 1693 27 1256
execute if entity @s[tag=Up,scores={timer=18}] run clone 1689 4 1253 1699 6 1243 1693 28 1256
execute if entity @s[tag=Up,scores={timer=21}] run clone 1689 4 1253 1699 6 1243 1693 29 1256
execute if entity @s[tag=Up,scores={timer=24}] run clone 1689 4 1253 1699 6 1243 1693 30 1256
execute if entity @s[tag=Up,scores={timer=27}] run clone 1689 4 1253 1699 6 1243 1693 31 1256
execute if entity @s[tag=Up,scores={timer=30}] run clone 1689 4 1253 1699 6 1243 1693 32 1256
execute if entity @s[tag=Up,scores={timer=33}] run clone 1689 4 1253 1699 6 1243 1693 33 1256
execute if entity @s[tag=Up,scores={timer=36}] run clone 1689 4 1253 1699 6 1243 1693 34 1256
execute if entity @s[tag=Up,scores={timer=39}] run clone 1689 4 1253 1699 6 1243 1693 35 1256
execute if entity @s[tag=Up,scores={timer=42}] run clone 1689 4 1253 1699 6 1243 1693 36 1256
execute if entity @s[tag=Up,scores={timer=45}] run clone 1689 4 1253 1699 6 1243 1693 37 1256
execute if entity @s[tag=Up,scores={timer=48}] run clone 1689 4 1253 1699 6 1243 1693 38 1256
execute if entity @s[tag=Up,scores={timer=51}] run clone 1689 4 1253 1699 6 1243 1693 39 1256
execute if entity @s[tag=Up,scores={timer=54}] run clone 1689 4 1253 1699 6 1243 1693 40 1256
execute if entity @s[tag=Up,scores={timer=57}] run clone 1689 4 1253 1699 6 1243 1693 41 1256
execute if entity @s[tag=Up,scores={timer=60}] run clone 1677 4 1269 1687 6 1259 1693 42 1256
execute if entity @s[tag=Up,scores={timer=63}] run clone 1689 4 1269 1699 6 1259 1693 43 1256
execute if entity @s[tag=Up,scores={timer=66}] run clone 1701 4 1269 1711 6 1259 1693 44 1256
execute if entity @s[tag=Up,scores={timer=72}] run clone 1701 4 1281 1711 6 1271 1693 45 1256
execute if entity @s[tag=Up,scores={timer=75}] run clone 1701 4 1281 1711 6 1271 1693 46 1256
execute if entity @s[tag=Up,scores={timer=78}] run clone 1701 4 1281 1711 6 1271 1693 47 1256
execute if entity @s[tag=Up,scores={timer=81}] run clone 1701 4 1281 1711 6 1271 1693 48 1256
execute if entity @s[tag=Up,scores={timer=84}] run clone 1701 4 1281 1711 6 1271 1693 49 1256
execute if entity @s[tag=Up,scores={timer=87}] run clone 1701 4 1281 1711 6 1271 1693 50 1256
execute if entity @s[tag=Up,scores={timer=90}] run clone 1701 4 1281 1711 6 1271 1693 51 1256
execute if entity @s[tag=Up,scores={timer=93}] run clone 1701 4 1281 1711 6 1271 1693 52 1256
execute if entity @s[tag=Up,scores={timer=96}] run clone 1701 4 1281 1711 6 1271 1693 53 1256
execute if entity @s[tag=Up,scores={timer=99}] run clone 1701 4 1281 1711 6 1271 1693 54 1256
execute if entity @s[tag=Up,scores={timer=102}] run clone 1701 4 1281 1711 6 1271 1693 55 1256
execute if entity @s[tag=Up,scores={timer=105}] run clone 1701 4 1281 1711 6 1271 1693 56 1256
execute if entity @s[tag=Up,scores={timer=108}] run clone 1701 4 1281 1711 6 1271 1693 57 1256
execute if entity @s[tag=Up,scores={timer=111}] run clone 1701 4 1281 1711 6 1271 1693 58 1256
execute if entity @s[tag=Up,scores={timer=114}] run clone 1701 4 1281 1711 6 1271 1693 59 1256
execute if entity @s[tag=Up,scores={timer=117}] run clone 1677 4 1281 1687 6 1271 1693 60 1256

execute if entity @s[tag=Up,scores={timer=1..118}] run tp @a 1698 ~ 1261

execute if entity @s[tag=Up,scores={timer=118..}] run tag @s remove Up
execute if entity @s[scores={timer=118..}] run scoreboard players set @s timer 0