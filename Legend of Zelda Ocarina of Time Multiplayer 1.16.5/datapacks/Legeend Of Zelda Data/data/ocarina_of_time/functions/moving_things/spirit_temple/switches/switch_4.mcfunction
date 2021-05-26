execute if entity @s[scores={timer=1}] at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @s[scores={timer=1}] run fill 13 87 862 13 87 862 minecraft:stone_pressure_plate
execute if entity @s[scores={timer=1}] run fill -7 87 862 -7 87 862 minecraft:stone_pressure_plate

#Child
execute unless entity @a[tag=Adult] run scoreboard players set @s lifetime 0
execute unless entity @a[tag=Adult] run fill -31 98 878 -29 85 876 minecraft:air
execute unless entity @a[tag=Adult] run fill -29 99 878 -31 99 876 minecraft:polished_andesite

#Platform
execute if entity @a[tag=Adult] if entity @s[tag=Platform] run scoreboard players add @s lifetime 1

#Tp
execute if entity @s[scores={lifetime=90}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=95}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=100}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=105}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=110}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=115}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=120}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=125}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=130}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=135}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=140}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=145}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=150}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~
execute if entity @s[scores={lifetime=155}] if entity @a[x=-31,y=86,z=876,dx=2,dy=14,dz=2] at @a if block ~ ~-1 ~ minecraft:polished_andesite run tp @a ~ ~1 ~

execute if entity @s[scores={lifetime=1}] run fill -29 99 878 -31 99 876 minecraft:air
execute if entity @s[scores={lifetime=1}] run fill -29 98 878 -31 98 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=5}] run fill -29 98 878 -31 98 876 minecraft:air
execute if entity @s[scores={lifetime=5}] run fill -29 97 878 -31 97 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=10}] run fill -29 97 878 -31 97 876 minecraft:air
execute if entity @s[scores={lifetime=10}] run fill -29 96 878 -31 96 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=15}] run fill -29 96 878 -31 96 876 minecraft:air
execute if entity @s[scores={lifetime=15}] run fill -29 95 878 -31 95 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=20}] run fill -29 95 878 -31 95 876 minecraft:air
execute if entity @s[scores={lifetime=20}] run fill -29 94 878 -31 94 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=25}] run fill -29 94 878 -31 94 876 minecraft:air
execute if entity @s[scores={lifetime=25}] run fill -29 93 878 -31 93 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=30}] run fill -29 93 878 -31 93 876 minecraft:air
execute if entity @s[scores={lifetime=30}] run fill -29 92 878 -31 92 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=35}] run fill -29 92 878 -31 92 876 minecraft:air
execute if entity @s[scores={lifetime=35}] run fill -29 91 878 -31 91 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=40}] run fill -29 91 878 -31 91 876 minecraft:air
execute if entity @s[scores={lifetime=40}] run fill -29 90 878 -31 90 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=45}] run fill -29 90 878 -31 90 876 minecraft:air
execute if entity @s[scores={lifetime=45}] run fill -29 89 878 -31 89 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=50}] run fill -29 89 878 -31 89 876 minecraft:air
execute if entity @s[scores={lifetime=50}] run fill -29 88 878 -31 88 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=55}] run fill -29 88 878 -31 88 876 minecraft:air
execute if entity @s[scores={lifetime=55}] run fill -29 87 878 -31 87 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=60}] run fill -29 87 878 -31 87 876 minecraft:air
execute if entity @s[scores={lifetime=60}] run fill -29 86 878 -31 86 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=65}] run fill -29 86 878 -31 86 876 minecraft:air
execute if entity @s[scores={lifetime=65}] run fill -29 85 878 -31 85 876 minecraft:polished_andesite

execute if entity @s[scores={lifetime=90}] run fill -29 85 878 -31 85 876 minecraft:air
execute if entity @s[scores={lifetime=90}] run fill -29 86 878 -31 86 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=95}] run fill -29 86 878 -31 86 876 minecraft:air
execute if entity @s[scores={lifetime=95}] run fill -29 87 878 -31 87 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=100}] run fill -29 87 878 -31 87 876 minecraft:air
execute if entity @s[scores={lifetime=100}] run fill -29 88 878 -31 88 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=105}] run fill -29 88 878 -31 88 876 minecraft:air
execute if entity @s[scores={lifetime=105}] run fill -29 89 878 -31 89 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=110}] run fill -29 89 878 -31 89 876 minecraft:air
execute if entity @s[scores={lifetime=110}] run fill -29 90 878 -31 90 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=115}] run fill -29 90 878 -31 90 876 minecraft:air
execute if entity @s[scores={lifetime=115}] run fill -29 91 878 -31 91 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=120}] run fill -29 91 878 -31 91 876 minecraft:air
execute if entity @s[scores={lifetime=120}] run fill -29 92 878 -31 92 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=125}] run fill -29 92 878 -31 92 876 minecraft:air
execute if entity @s[scores={lifetime=125}] run fill -29 93 878 -31 93 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=130}] run fill -29 93 878 -31 93 876 minecraft:air
execute if entity @s[scores={lifetime=130}] run fill -29 94 878 -31 94 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=135}] run fill -29 94 878 -31 94 876 minecraft:air
execute if entity @s[scores={lifetime=135}] run fill -29 95 878 -31 95 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=140}] run fill -29 95 878 -31 95 876 minecraft:air
execute if entity @s[scores={lifetime=140}] run fill -29 96 878 -31 96 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=145}] run fill -29 96 878 -31 96 876 minecraft:air
execute if entity @s[scores={lifetime=145}] run fill -29 97 878 -31 97 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=150}] run fill -29 97 878 -31 97 876 minecraft:air
execute if entity @s[scores={lifetime=150}] run fill -29 98 878 -31 98 876 minecraft:polished_andesite
execute if entity @s[scores={lifetime=155}] run fill -29 98 878 -31 98 876 minecraft:air
execute if entity @s[scores={lifetime=155}] run fill -29 99 878 -31 99 876 minecraft:polished_andesite

execute if entity @s[scores={lifetime=180..}] run scoreboard players set @s lifetime 0

#Fire
execute if entity @s[tag=Fire] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run fill 17 110 878 17 110 878 minecraft:air
execute if entity @s[scores={GameTimer=1}] run fill 17 109 878 17 109 878 minecraft:gold_block
execute if entity @s[scores={GameTimer=1}] run fill 12 111 878 13 111 877 minecraft:barrier
execute if entity @s[scores={GameTimer=1..149}] run fill 12 110 878 13 110 877 minecraft:fire
execute if entity @s[scores={GameTimer=150..}] run fill 17 110 878 17 110 878 minecraft:light_weighted_pressure_plate
execute if entity @s[scores={GameTimer=150..}] run fill 17 109 878 17 109 878 minecraft:smooth_sandstone
execute if entity @s[scores={GameTimer=150..}] run fill 12 110 878 13 111 877 minecraft:air
execute if entity @s[scores={GameTimer=150..}] run tag @s remove Fire
execute if entity @s[scores={GameTimer=150..}] run scoreboard players set @s GameTimer 0

#Ladders
scoreboard players add @s time 1
#1
execute if entity @s[scores={time=1}] run fill -11 113 879 -11 115 879 minecraft:air
execute if entity @s[scores={time=1}] run fill -6 113 879 -6 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=7}] run fill -10 113 879 -10 115 879 minecraft:air
execute if entity @s[scores={time=7}] run fill -5 113 879 -5 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=13}] run fill -9 113 879 -9 115 879 minecraft:air
execute if entity @s[scores={time=13}] run fill -4 113 879 -4 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=53}] run fill -8 113 879 -8 115 879 minecraft:air
execute if entity @s[scores={time=59}] run fill -7 113 879 -7 115 879 minecraft:air
execute if entity @s[scores={time=99}] run fill -6 113 879 -6 115 879 minecraft:air
execute if entity @s[scores={time=105}] run fill -5 113 879 -5 115 879 minecraft:air
execute if entity @s[scores={time=111}] run fill -4 113 879 -4 115 879 minecraft:air
execute if entity @s[scores={time=151}] run fill -4 113 879 -4 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=157}] run fill -5 113 879 -5 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=163}] run fill -6 113 879 -6 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=203}] run fill -7 113 879 -7 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=209}] run fill -8 113 879 -8 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -9 113 879 -9 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -4 113 879 -4 115 879 minecraft:air
execute if entity @s[scores={time=255}] run fill -10 113 879 -10 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=255}] run fill -5 113 879 -5 115 879 minecraft:air
execute if entity @s[scores={time=261}] run fill -11 113 879 -11 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=261}] run fill -6 113 879 -6 115 879 minecraft:air
execute if entity @s[scores={time=301}] run fill -12 113 879 -12 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=301}] run fill -7 113 879 -7 115 879 minecraft:air
execute if entity @s[scores={time=307}] run fill -13 113 879 -13 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=307}] run fill -8 113 879 -8 115 879 minecraft:air
execute if entity @s[scores={time=313}] run fill -14 113 879 -14 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=313}] run fill -9 113 879 -9 115 879 minecraft:air
execute if entity @s[scores={time=353}] run fill -10 113 879 -10 115 879 minecraft:air
execute if entity @s[scores={time=359}] run fill -11 113 879 -11 115 879 minecraft:air
execute if entity @s[scores={time=399}] run fill -12 113 879 -12 115 879 minecraft:air
execute if entity @s[scores={time=405}] run fill -13 113 879 -13 115 879 minecraft:air
execute if entity @s[scores={time=411}] run fill -14 113 879 -14 115 879 minecraft:air
execute if entity @s[scores={time=451}] run fill -14 113 879 -14 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=457}] run fill -13 113 879 -13 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=463}] run fill -12 113 879 -12 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=504}] run fill -11 113 879 -11 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=510}] run fill -10 113 879 -10 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -9 113 879 -9 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -14 113 879 -14 115 879 minecraft:air
execute if entity @s[scores={time=576}] run fill -8 113 879 -8 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=576}] run fill -13 113 879 -13 115 879 minecraft:air
execute if entity @s[scores={time=582}] run fill -7 113 879 -7 115 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=582}] run fill -12 113 879 -12 115 879 minecraft:air
#2
execute if entity @s[scores={time=1}] run fill -12 116 879 -12 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=1}] run fill -7 116 879 -7 118 879 minecraft:air
execute if entity @s[scores={time=7}] run fill -13 116 879 -13 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=7}] run fill -8 116 879 -8 118 879 minecraft:air
execute if entity @s[scores={time=13}] run fill -14 116 879 -14 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=13}] run fill -9 116 879 -9 118 879 minecraft:air
execute if entity @s[scores={time=53}] run fill -10 116 879 -10 118 879 minecraft:air
execute if entity @s[scores={time=59}] run fill -11 116 879 -11 118 879 minecraft:air
execute if entity @s[scores={time=99}] run fill -12 116 879 -12 118 879 minecraft:air
execute if entity @s[scores={time=105}] run fill -13 116 879 -13 118 879 minecraft:air
execute if entity @s[scores={time=111}] run fill -14 116 879 -14 118 879 minecraft:air
execute if entity @s[scores={time=151}] run fill -14 116 879 -14 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=157}] run fill -13 116 879 -13 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=163}] run fill -12 116 879 -12 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=203}] run fill -11 116 879 -11 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=209}] run fill -10 116 879 -10 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -9 116 879 -9 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -14 116 879 -14 118 879 minecraft:air
execute if entity @s[scores={time=255}] run fill -8 116 879 -8 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=255}] run fill -13 116 879 -13 118 879 minecraft:air
execute if entity @s[scores={time=261}] run fill -7 116 879 -7 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=261}] run fill -12 116 879 -12 118 879 minecraft:air
execute if entity @s[scores={time=301}] run fill -11 116 879 -11 118 879 minecraft:air
execute if entity @s[scores={time=301}] run fill -6 116 879 -6 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=307}] run fill -10 116 879 -10 118 879 minecraft:air
execute if entity @s[scores={time=307}] run fill -5 116 879 -5 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=313}] run fill -9 116 879 -9 118 879 minecraft:air
execute if entity @s[scores={time=313}] run fill -4 116 879 -4 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=353}] run fill -8 116 879 -8 118 879 minecraft:air
execute if entity @s[scores={time=359}] run fill -7 116 879 -7 118 879 minecraft:air
execute if entity @s[scores={time=399}] run fill -6 116 879 -6 118 879 minecraft:air
execute if entity @s[scores={time=405}] run fill -5 116 879 -5 118 879 minecraft:air
execute if entity @s[scores={time=411}] run fill -4 116 879 -4 118 879 minecraft:air
execute if entity @s[scores={time=451}] run fill -4 116 879 -4 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=457}] run fill -5 116 879 -5 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=463}] run fill -6 116 879 -6 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=504}] run fill -7 116 879 -7 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=510}] run fill -8 116 879 -8 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -9 116 879 -9 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -4 116 879 -4 118 879 minecraft:air
execute if entity @s[scores={time=576}] run fill -10 116 879 -10 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=576}] run fill -5 116 879 -5 118 879 minecraft:air
execute if entity @s[scores={time=582}] run fill -11 116 879 -11 118 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=582}] run fill -6 116 879 -6 118 879 minecraft:air
#3
execute if entity @s[scores={time=1}] run fill -11 122 879 -11 124 879 minecraft:air
execute if entity @s[scores={time=1}] run fill -6 122 879 -6 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=7}] run fill -10 122 879 -10 124 879 minecraft:air
execute if entity @s[scores={time=7}] run fill -5 122 879 -5 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=13}] run fill -9 122 879 -9 124 879 minecraft:air
execute if entity @s[scores={time=13}] run fill -4 122 879 -4 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=53}] run fill -8 122 879 -8 124 879 minecraft:air
execute if entity @s[scores={time=59}] run fill -7 122 879 -7 124 879 minecraft:air
execute if entity @s[scores={time=99}] run fill -6 122 879 -6 124 879 minecraft:air
execute if entity @s[scores={time=105}] run fill -5 122 879 -5 124 879 minecraft:air
execute if entity @s[scores={time=111}] run fill -4 122 879 -4 124 879 minecraft:air
execute if entity @s[scores={time=151}] run fill -4 122 879 -4 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=157}] run fill -5 122 879 -5 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=163}] run fill -6 122 879 -6 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=203}] run fill -7 122 879 -7 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=209}] run fill -8 122 879 -8 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -9 122 879 -9 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -4 122 879 -4 124 879 minecraft:air
execute if entity @s[scores={time=255}] run fill -10 122 879 -10 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=255}] run fill -5 122 879 -5 124 879 minecraft:air
execute if entity @s[scores={time=261}] run fill -11 122 879 -11 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=261}] run fill -6 122 879 -6 124 879 minecraft:air
execute if entity @s[scores={time=301}] run fill -12 122 879 -12 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=301}] run fill -7 122 879 -7 124 879 minecraft:air
execute if entity @s[scores={time=307}] run fill -13 122 879 -13 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=307}] run fill -8 122 879 -8 124 879 minecraft:air
execute if entity @s[scores={time=313}] run fill -14 122 879 -14 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=313}] run fill -9 122 879 -9 124 879 minecraft:air
execute if entity @s[scores={time=353}] run fill -10 122 879 -10 124 879 minecraft:air
execute if entity @s[scores={time=359}] run fill -11 122 879 -11 124 879 minecraft:air
execute if entity @s[scores={time=399}] run fill -12 122 879 -12 124 879 minecraft:air
execute if entity @s[scores={time=405}] run fill -13 122 879 -13 124 879 minecraft:air
execute if entity @s[scores={time=411}] run fill -14 122 879 -14 124 879 minecraft:air
execute if entity @s[scores={time=451}] run fill -14 122 879 -14 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=457}] run fill -13 122 879 -13 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=463}] run fill -12 122 879 -12 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=504}] run fill -11 122 879 -11 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=510}] run fill -10 122 879 -10 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -9 122 879 -9 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -14 122 879 -14 124 879 minecraft:air
execute if entity @s[scores={time=576}] run fill -8 122 879 -8 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=576}] run fill -13 122 879 -13 124 879 minecraft:air
execute if entity @s[scores={time=582}] run fill -7 122 879 -7 124 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=582}] run fill -12 122 879 -12 124 879 minecraft:air
#4
execute if entity @s[scores={time=1}] run fill -12 125 879 -12 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=1}] run fill -7 125 879 -7 127 879 minecraft:air
execute if entity @s[scores={time=7}] run fill -13 125 879 -13 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=7}] run fill -8 125 879 -8 127 879 minecraft:air
execute if entity @s[scores={time=13}] run fill -14 125 879 -14 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=13}] run fill -9 125 879 -9 127 879 minecraft:air
execute if entity @s[scores={time=53}] run fill -10 125 879 -10 127 879 minecraft:air
execute if entity @s[scores={time=59}] run fill -11 125 879 -11 127 879 minecraft:air
execute if entity @s[scores={time=99}] run fill -12 125 879 -12 127 879 minecraft:air
execute if entity @s[scores={time=105}] run fill -13 125 879 -13 127 879 minecraft:air
execute if entity @s[scores={time=111}] run fill -14 125 879 -14 127 879 minecraft:air
execute if entity @s[scores={time=151}] run fill -14 125 879 -14 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=157}] run fill -13 125 879 -13 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=163}] run fill -12 125 879 -12 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=203}] run fill -11 125 879 -11 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=209}] run fill -10 125 879 -10 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -9 125 879 -9 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=249}] run fill -14 125 879 -14 127 879 minecraft:air
execute if entity @s[scores={time=255}] run fill -8 125 879 -8 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=255}] run fill -13 125 879 -13 127 879 minecraft:air
execute if entity @s[scores={time=261}] run fill -7 125 879 -7 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=261}] run fill -12 125 879 -12 127 879 minecraft:air
execute if entity @s[scores={time=301}] run fill -11 125 879 -11 127 879 minecraft:air
execute if entity @s[scores={time=301}] run fill -6 125 879 -6 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=307}] run fill -10 125 879 -10 127 879 minecraft:air
execute if entity @s[scores={time=307}] run fill -5 125 879 -5 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=313}] run fill -9 125 879 -9 127 879 minecraft:air
execute if entity @s[scores={time=313}] run fill -4 125 879 -4 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=353}] run fill -8 125 879 -8 127 879 minecraft:air
execute if entity @s[scores={time=359}] run fill -7 125 879 -7 127 879 minecraft:air
execute if entity @s[scores={time=399}] run fill -6 125 879 -6 127 879 minecraft:air
execute if entity @s[scores={time=405}] run fill -5 125 879 -5 127 879 minecraft:air
execute if entity @s[scores={time=411}] run fill -4 125 879 -4 127 879 minecraft:air
execute if entity @s[scores={time=451}] run fill -4 125 879 -4 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=457}] run fill -5 125 879 -5 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=463}] run fill -6 125 879 -6 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=504}] run fill -7 125 879 -7 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=510}] run fill -8 125 879 -8 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -9 125 879 -9 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=570}] run fill -4 125 879 -4 127 879 minecraft:air
execute if entity @s[scores={time=576}] run fill -10 125 879 -10 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=576}] run fill -5 125 879 -5 127 879 minecraft:air
execute if entity @s[scores={time=582}] run fill -11 125 879 -11 127 879 minecraft:ladder[facing=south]
execute if entity @s[scores={time=582}] run fill -6 125 879 -6 127 879 minecraft:air
execute if entity @s[scores={time=622..}] run scoreboard players set @s time 0

execute if entity @s[scores={time=1}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=7}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=13}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=53}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=59}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=99}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=105}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=111}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=151}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=157}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=163}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=203}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=209}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=249}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=255}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=261}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=301}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=307}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=313}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=353}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=359}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=399}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=405}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=411}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=451}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=457}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=463}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=504}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=510}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=570}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=576}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=582}] if entity @a[x=-13,y=114,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~

execute if entity @s[scores={time=1}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=7}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=13}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=53}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=59}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=99}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=105}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=111}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=151}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=157}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=163}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=203}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=209}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=249}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=255}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=261}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=301}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=307}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=313}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=353}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=359}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=399}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=405}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=411}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=451}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=457}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=463}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=504}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=510}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=570}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=576}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=582}] if entity @a[x=-13,y=117,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~

execute if entity @s[scores={time=1}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=7}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=13}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=53}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=59}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=99}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=105}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=111}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=151}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=157}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=163}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=203}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=209}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=249}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=255}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=261}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=301}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=307}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=313}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=353}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=359}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=399}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=405}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=411}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=451}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=457}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=463}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=504}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=510}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=570}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=576}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=582}] if entity @a[x=-13,y=123,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~

execute if entity @s[scores={time=1}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=7}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=13}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=53}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=59}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=99}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=105}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=111}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=151}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=157}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=163}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=203}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=209}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=249}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=255}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=261}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=301}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=307}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=313}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=353}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=359}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=399}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=405}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=411}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=451}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~1 ~ ~
execute if entity @s[scores={time=457}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=463}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=504}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=510}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=570}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=576}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
execute if entity @s[scores={time=582}] if entity @a[x=-13,y=126,z=879,dx=8,dy=1,dz=0] at @a run tp @a ~-1 ~ ~
