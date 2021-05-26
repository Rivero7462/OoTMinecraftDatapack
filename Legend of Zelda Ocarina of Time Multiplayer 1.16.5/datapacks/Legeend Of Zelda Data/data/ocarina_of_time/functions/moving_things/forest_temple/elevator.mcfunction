execute if entity @a[x=897,y=57,z=-1156,dx=2,dz=2] run tag @s add Down
execute if entity @a[x=897,y=24,z=-1156,dx=2,dz=2] run tag @s add Up

scoreboard players add @s lifetime 1

#Down
execute if entity @s[tag=Down,scores={lifetime=1..4}] run tp @a 898 56 -1155
execute if entity @s[tag=Down,scores={lifetime=5..37}] run tp @a 898 ~-1 -1155

execute if entity @s[tag=Down,scores={lifetime=5}] run clone 891 45 -1154 893 51 -1156 897 53 -1156
execute if entity @s[tag=Down,scores={lifetime=6}] run clone 891 45 -1154 893 51 -1156 897 52 -1156
execute if entity @s[tag=Down,scores={lifetime=7}] run clone 891 45 -1154 893 51 -1156 897 51 -1156
execute if entity @s[tag=Down,scores={lifetime=8}] run clone 891 45 -1154 893 51 -1156 897 50 -1156
execute if entity @s[tag=Down,scores={lifetime=9}] run clone 891 45 -1154 893 51 -1156 897 49 -1156
execute if entity @s[tag=Down,scores={lifetime=10}] run clone 891 45 -1154 893 51 -1156 897 48 -1156
execute if entity @s[tag=Down,scores={lifetime=11}] run clone 891 45 -1154 893 51 -1156 897 47 -1156
execute if entity @s[tag=Down,scores={lifetime=12}] run clone 891 45 -1154 893 51 -1156 897 46 -1156
execute if entity @s[tag=Down,scores={lifetime=13}] run clone 891 45 -1154 893 51 -1156 897 45 -1156
execute if entity @s[tag=Down,scores={lifetime=14}] run clone 891 45 -1154 893 51 -1156 897 44 -1156
execute if entity @s[tag=Down,scores={lifetime=15}] run clone 891 45 -1154 893 51 -1156 897 43 -1156
execute if entity @s[tag=Down,scores={lifetime=16}] run clone 891 45 -1154 893 51 -1156 897 42 -1156
execute if entity @s[tag=Down,scores={lifetime=17}] run clone 891 45 -1154 893 51 -1156 897 41 -1156
execute if entity @s[tag=Down,scores={lifetime=18}] run clone 891 45 -1154 893 51 -1156 897 40 -1156
execute if entity @s[tag=Down,scores={lifetime=19}] run clone 891 45 -1154 893 51 -1156 897 39 -1156
execute if entity @s[tag=Down,scores={lifetime=20}] run clone 891 45 -1154 893 51 -1156 897 38 -1156
execute if entity @s[tag=Down,scores={lifetime=21}] run clone 891 45 -1154 893 51 -1156 897 37 -1156
execute if entity @s[tag=Down,scores={lifetime=22}] run clone 891 45 -1154 893 51 -1156 897 36 -1156
execute if entity @s[tag=Down,scores={lifetime=23}] run clone 891 45 -1154 893 51 -1156 897 35 -1156
execute if entity @s[tag=Down,scores={lifetime=24}] run clone 891 45 -1154 893 51 -1156 897 34 -1156
execute if entity @s[tag=Down,scores={lifetime=25}] run clone 891 45 -1154 893 51 -1156 897 33 -1156
execute if entity @s[tag=Down,scores={lifetime=26}] run clone 891 45 -1154 893 51 -1156 897 32 -1156
execute if entity @s[tag=Down,scores={lifetime=27}] run clone 891 45 -1154 893 51 -1156 897 31 -1156
execute if entity @s[tag=Down,scores={lifetime=28}] run clone 891 45 -1154 893 51 -1156 897 30 -1156
execute if entity @s[tag=Down,scores={lifetime=29}] run clone 891 45 -1154 893 51 -1156 897 29 -1156
execute if entity @s[tag=Down,scores={lifetime=30}] run clone 891 45 -1154 893 51 -1156 897 28 -1156
execute if entity @s[tag=Down,scores={lifetime=31}] run clone 891 45 -1154 893 51 -1156 897 27 -1156
execute if entity @s[tag=Down,scores={lifetime=32}] run clone 891 45 -1154 893 51 -1156 897 26 -1156
execute if entity @s[tag=Down,scores={lifetime=33}] run clone 891 45 -1154 893 51 -1156 897 25 -1156
execute if entity @s[tag=Down,scores={lifetime=34}] run clone 891 45 -1154 893 51 -1156 897 24 -1156
execute if entity @s[tag=Down,scores={lifetime=35}] run clone 891 45 -1154 893 51 -1156 897 23 -1156
execute if entity @s[tag=Down,scores={lifetime=36}] run clone 891 45 -1154 893 51 -1156 897 22 -1156
execute if entity @s[tag=Down,scores={lifetime=37}] run clone 891 46 -1154 893 51 -1156 897 22 -1156

#Up
execute if entity @s[tag=Up,scores={lifetime=1..4}] run tp @a 898 23 -1155
execute if entity @s[tag=Up,scores={lifetime=5..37}] run tp @a 898 ~1 -1155

execute if entity @s[tag=Up,scores={lifetime=5}] run clone 891 45 -1154 893 51 -1156 897 22 -1156
execute if entity @s[tag=Up,scores={lifetime=6}] run clone 891 45 -1154 893 51 -1156 897 23 -1156
execute if entity @s[tag=Up,scores={lifetime=7}] run clone 891 45 -1154 893 51 -1156 897 24 -1156
execute if entity @s[tag=Up,scores={lifetime=8}] run clone 891 45 -1154 893 51 -1156 897 25 -1156
execute if entity @s[tag=Up,scores={lifetime=9}] run clone 891 45 -1154 893 51 -1156 897 26 -1156
execute if entity @s[tag=Up,scores={lifetime=10}] run clone 891 45 -1154 893 51 -1156 897 27 -1156
execute if entity @s[tag=Up,scores={lifetime=11}] run clone 891 45 -1154 893 51 -1156 897 28 -1156
execute if entity @s[tag=Up,scores={lifetime=12}] run clone 891 45 -1154 893 51 -1156 897 29 -1156
execute if entity @s[tag=Up,scores={lifetime=13}] run clone 891 45 -1154 893 51 -1156 897 30 -1156
execute if entity @s[tag=Up,scores={lifetime=14}] run clone 891 45 -1154 893 51 -1156 897 31 -1156
execute if entity @s[tag=Up,scores={lifetime=15}] run clone 891 45 -1154 893 51 -1156 897 32 -1156
execute if entity @s[tag=Up,scores={lifetime=16}] run clone 891 45 -1154 893 51 -1156 897 33 -1156
execute if entity @s[tag=Up,scores={lifetime=17}] run clone 891 45 -1154 893 51 -1156 897 34 -1156
execute if entity @s[tag=Up,scores={lifetime=18}] run clone 891 45 -1154 893 51 -1156 897 35 -1156
execute if entity @s[tag=Up,scores={lifetime=19}] run clone 891 45 -1154 893 51 -1156 897 36 -1156
execute if entity @s[tag=Up,scores={lifetime=20}] run clone 891 45 -1154 893 51 -1156 897 37 -1156
execute if entity @s[tag=Up,scores={lifetime=21}] run clone 891 45 -1154 893 51 -1156 897 38 -1156
execute if entity @s[tag=Up,scores={lifetime=22}] run clone 891 45 -1154 893 51 -1156 897 39 -1156
execute if entity @s[tag=Up,scores={lifetime=23}] run clone 891 45 -1154 893 51 -1156 897 40 -1156
execute if entity @s[tag=Up,scores={lifetime=24}] run clone 891 45 -1154 893 51 -1156 897 41 -1156
execute if entity @s[tag=Up,scores={lifetime=25}] run clone 891 45 -1154 893 51 -1156 897 42 -1156
execute if entity @s[tag=Up,scores={lifetime=26}] run clone 891 45 -1154 893 51 -1156 897 43 -1156
execute if entity @s[tag=Up,scores={lifetime=27}] run clone 891 45 -1154 893 51 -1156 897 44 -1156
execute if entity @s[tag=Up,scores={lifetime=28}] run clone 891 45 -1154 893 51 -1156 897 45 -1156
execute if entity @s[tag=Up,scores={lifetime=29}] run clone 891 45 -1154 893 51 -1156 897 46 -1156
execute if entity @s[tag=Up,scores={lifetime=30}] run clone 891 45 -1154 893 51 -1156 897 47 -1156
execute if entity @s[tag=Up,scores={lifetime=31}] run clone 891 45 -1154 893 51 -1156 897 48 -1156
execute if entity @s[tag=Up,scores={lifetime=32}] run clone 891 45 -1154 893 51 -1156 897 49 -1156
execute if entity @s[tag=Up,scores={lifetime=33}] run clone 891 45 -1154 893 51 -1156 897 50 -1156
execute if entity @s[tag=Up,scores={lifetime=34}] run clone 891 45 -1154 893 51 -1156 897 51 -1156
execute if entity @s[tag=Up,scores={lifetime=35}] run clone 891 45 -1154 893 51 -1156 897 52 -1156
execute if entity @s[tag=Up,scores={lifetime=36}] run clone 891 45 -1154 893 51 -1156 897 53 -1156
execute if entity @s[tag=Up,scores={lifetime=37}] run clone 891 45 -1154 893 51 -1156 897 54 -1156

execute if entity @s[tag=Up,scores={lifetime=38..}] run tag @s remove Up
execute if entity @s[tag=Down,scores={lifetime=38..}] run tag @s remove Down
