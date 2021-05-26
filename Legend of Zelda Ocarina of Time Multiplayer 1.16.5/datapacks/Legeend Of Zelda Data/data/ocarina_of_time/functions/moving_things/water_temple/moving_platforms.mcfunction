fill 1108 38 3039 1107 29 3029 minecraft:air replace minecraft:water

#Platform 1
scoreboard players add @s timer 1

execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=1}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=20}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=40}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=60}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=80}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=100}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=120}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~1 ~-1 ~

execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=1}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=20}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=40}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=60}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=80}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=100}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~1 ~-1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=120}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~1 ~-1 ~

execute if entity @s[scores={timer=1}] run clone 1097 47 3020 1100 48 3022 1095 47 3033
execute if entity @s[scores={timer=20}] run clone 1097 47 3020 1100 48 3022 1096 46 3033
execute if entity @s[scores={timer=40}] run clone 1097 47 3020 1100 48 3022 1097 45 3033
execute if entity @s[scores={timer=60}] run clone 1097 47 3020 1100 48 3022 1098 44 3033
execute if entity @s[scores={timer=80}] run clone 1097 47 3020 1100 48 3022 1099 43 3033
execute if entity @s[scores={timer=100}] run clone 1097 47 3020 1100 48 3022 1100 42 3033
execute if entity @s[scores={timer=120}] run clone 1097 47 3020 1100 48 3022 1101 41 3033

execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=145}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=165}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=185}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=205}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=225}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=245}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=265}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~1 ~

execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=145}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=165}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=185}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=205}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=225}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=245}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~1 ~
execute if entity @a[x=1095,y=40,z=3033,dx=9,dy=10,dz=2] at @a if entity @s[scores={timer=265}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~1 ~

execute if entity @s[scores={timer=145}] run clone 1098 46 3024 1101 47 3026 1101 41 3033
execute if entity @s[scores={timer=165}] run clone 1098 46 3024 1101 47 3026 1100 42 3033
execute if entity @s[scores={timer=185}] run clone 1098 46 3024 1101 47 3026 1099 43 3033
execute if entity @s[scores={timer=205}] run clone 1098 46 3024 1101 47 3026 1098 44 3033
execute if entity @s[scores={timer=225}] run clone 1098 46 3024 1101 47 3026 1097 45 3033
execute if entity @s[scores={timer=245}] run clone 1098 46 3024 1101 47 3026 1096 46 3033
execute if entity @s[scores={timer=265}] run clone 1098 46 3024 1101 47 3026 1095 47 3033

execute if entity @s[scores={timer=290..}] run scoreboard players set @s timer 0

#Platform 2
scoreboard players add @s lifetime 1

execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=1}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=20}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=40}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=60}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=80}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=100}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=120}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=140}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=160}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=180}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=200}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=220}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=240}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=260}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=280}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=300}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=320}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=340}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=360}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=380}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=400}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=420}] if block ~ ~-.5 ~ minecraft:red_terracotta run tp @a ~-1 ~-1 ~

execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=1}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=20}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=40}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=60}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=80}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=100}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=120}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=140}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=160}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=180}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=200}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=220}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=240}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=260}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=280}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=300}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=320}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=340}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=360}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=380}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=400}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~
execute if entity @a[x=1109,y=40,z=3033,dx=12,dy=14,dz=2] at @a if entity @s[scores={lifetime=420}] if block ~ ~-.5 ~ minecraft:gray_glazed_terracotta run tp @a ~-1 ~-1 ~

execute if entity @s[scores={lifetime=1}] run clone 1112 47 3024 1112 47 3026 1123 52 3033
execute if entity @s[scores={lifetime=20}] run clone 1112 47 3024 1113 47 3026 1122 52 3033
execute if entity @s[scores={lifetime=40}] run clone 1112 47 3024 1114 47 3026 1121 52 3033
execute if entity @s[scores={lifetime=60}] run clone 1112 47 3016 1115 48 3018 1120 51 3033
execute if entity @s[scores={lifetime=80}] run clone 1112 47 3020 1115 48 3022 1119 50 3033
execute if entity @s[scores={lifetime=100}] run clone 1112 47 3020 1115 48 3022 1118 49 3033
execute if entity @s[scores={lifetime=120}] run clone 1112 47 3020 1115 48 3022 1117 48 3033
execute if entity @s[scores={lifetime=140}] run clone 1112 47 3020 1115 48 3022 1116 47 3033
execute if entity @s[scores={lifetime=160}] run clone 1112 47 3020 1115 48 3022 1115 46 3033
execute if entity @s[scores={lifetime=180}] run clone 1112 47 3020 1115 48 3022 1114 45 3033
execute if entity @s[scores={lifetime=200}] run clone 1112 47 3020 1115 48 3022 1113 44 3033
execute if entity @s[scores={lifetime=220}] run clone 1112 47 3020 1115 48 3022 1112 43 3033
execute if entity @s[scores={lifetime=240}] run clone 1112 47 3020 1115 48 3022 1111 42 3033
execute if entity @s[scores={lifetime=260}] run clone 1112 47 3020 1115 48 3022 1110 41 3033
execute if entity @s[scores={lifetime=280}] run clone 1112 47 3020 1115 48 3022 1109 40 3033
execute if entity @s[scores={lifetime=300}] run clone 1112 47 3020 1115 48 3022 1108 39 3033
execute if entity @s[scores={lifetime=320}] run clone 1112 47 3020 1115 48 3022 1107 38 3033
execute if entity @s[scores={lifetime=340}] run clone 1112 47 3024 1114 48 3026 1107 37 3033
execute if entity @s[scores={lifetime=360}] run clone 1112 47 3024 1114 48 3026 1107 36 3033
execute if entity @s[scores={lifetime=380}] run clone 1111 47 3020 1112 47 3022 1107 36 3033
execute if entity @s[scores={lifetime=400}] run clone 1110 47 3020 1112 47 3022 1108 36 3033
execute if entity @s[scores={lifetime=420}] run fill 1110 36 3033 1110 36 3035 minecraft:stone
execute if entity @s[scores={lifetime=440..}] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=1}] run clone 1112 47 3024 1114 48 3026 1107 37 3033
execute if entity @s[scores={lifetime=20}] run clone 1112 47 3024 1114 48 3026 1107 36 3033
execute if entity @s[scores={lifetime=40}] run clone 1111 47 3020 1112 47 3022 1107 36 3033
execute if entity @s[scores={lifetime=60}] run clone 1110 47 3020 1112 47 3022 1108 36 3033
execute if entity @s[scores={lifetime=80}] run fill 1110 36 3033 1110 36 3035 minecraft:stone
execute if entity @s[scores={lifetime=100}] run clone 1112 47 3024 1112 47 3026 1123 52 3033
execute if entity @s[scores={lifetime=120}] run clone 1112 47 3024 1113 47 3026 1122 52 3033
execute if entity @s[scores={lifetime=140}] run clone 1112 47 3024 1114 47 3026 1121 52 3033
execute if entity @s[scores={lifetime=160}] run clone 1112 47 3016 1115 48 3018 1120 51 3033
execute if entity @s[scores={lifetime=180}] run clone 1112 47 3020 1115 48 3022 1119 50 3033
execute if entity @s[scores={lifetime=200}] run clone 1112 47 3020 1115 48 3022 1118 49 3033
execute if entity @s[scores={lifetime=220}] run clone 1112 47 3020 1115 48 3022 1117 48 3033
execute if entity @s[scores={lifetime=240}] run clone 1112 47 3020 1115 48 3022 1116 47 3033
execute if entity @s[scores={lifetime=260}] run clone 1112 47 3020 1115 48 3022 1115 46 3033
execute if entity @s[scores={lifetime=280}] run clone 1112 47 3020 1115 48 3022 1114 45 3033
execute if entity @s[scores={lifetime=300}] run clone 1112 47 3020 1115 48 3022 1113 44 3033
execute if entity @s[scores={lifetime=320}] run clone 1112 47 3020 1115 48 3022 1112 43 3033
execute if entity @s[scores={lifetime=340}] run clone 1112 47 3020 1115 48 3022 1111 42 3033
execute if entity @s[scores={lifetime=360}] run clone 1112 47 3020 1115 48 3022 1110 41 3033
execute if entity @s[scores={lifetime=380}] run clone 1112 47 3020 1115 48 3022 1109 40 3033
execute if entity @s[scores={lifetime=400}] run clone 1112 47 3020 1115 48 3022 1108 39 3033
execute if entity @s[scores={lifetime=420}] run clone 1112 47 3020 1115 48 3022 1107 38 3033

execute if entity @s[scores={lifetime=1}] run clone 1112 47 3020 1115 48 3022 1111 42 3033
execute if entity @s[scores={lifetime=20}] run clone 1112 47 3020 1115 48 3022 1110 41 3033
execute if entity @s[scores={lifetime=40}] run clone 1112 47 3020 1115 48 3022 1109 40 3033
execute if entity @s[scores={lifetime=60}] run clone 1112 47 3020 1115 48 3022 1108 39 3033
execute if entity @s[scores={lifetime=80}] run clone 1112 47 3020 1115 48 3022 1107 38 3033
execute if entity @s[scores={lifetime=100}] run clone 1112 47 3024 1114 48 3026 1107 37 3033
execute if entity @s[scores={lifetime=120}] run clone 1112 47 3024 1114 48 3026 1107 36 3033
execute if entity @s[scores={lifetime=140}] run clone 1111 47 3020 1112 47 3022 1107 36 3033
execute if entity @s[scores={lifetime=160}] run clone 1110 47 3020 1112 47 3022 1108 36 3033
execute if entity @s[scores={lifetime=180}] run fill 1110 36 3033 1110 36 3035 minecraft:stone
execute if entity @s[scores={lifetime=200}] run clone 1112 47 3024 1112 47 3026 1123 52 3033
execute if entity @s[scores={lifetime=220}] run clone 1112 47 3024 1113 47 3026 1122 52 3033
execute if entity @s[scores={lifetime=240}] run clone 1112 47 3024 1114 47 3026 1121 52 3033
execute if entity @s[scores={lifetime=260}] run clone 1112 47 3016 1115 48 3018 1120 51 3033
execute if entity @s[scores={lifetime=280}] run clone 1112 47 3020 1115 48 3022 1119 50 3033
execute if entity @s[scores={lifetime=300}] run clone 1112 47 3020 1115 48 3022 1118 49 3033
execute if entity @s[scores={lifetime=320}] run clone 1112 47 3020 1115 48 3022 1117 48 3033
execute if entity @s[scores={lifetime=340}] run clone 1112 47 3020 1115 48 3022 1116 47 3033
execute if entity @s[scores={lifetime=360}] run clone 1112 47 3020 1115 48 3022 1115 46 3033
execute if entity @s[scores={lifetime=380}] run clone 1112 47 3020 1115 48 3022 1114 45 3033
execute if entity @s[scores={lifetime=400}] run clone 1112 47 3020 1115 48 3022 1113 44 3033
execute if entity @s[scores={lifetime=420}] run clone 1112 47 3020 1115 48 3022 1112 43 3033

execute if entity @s[scores={lifetime=1}] run clone 1112 47 3020 1115 48 3022 1117 48 3033
execute if entity @s[scores={lifetime=20}] run clone 1112 47 3020 1115 48 3022 1116 47 3033
execute if entity @s[scores={lifetime=40}] run clone 1112 47 3020 1115 48 3022 1115 46 3033
execute if entity @s[scores={lifetime=60}] run clone 1112 47 3020 1115 48 3022 1114 45 3033
execute if entity @s[scores={lifetime=80}] run clone 1112 47 3020 1115 48 3022 1113 44 3033
execute if entity @s[scores={lifetime=100}] run clone 1112 47 3020 1115 48 3022 1112 43 3033
execute if entity @s[scores={lifetime=120}] run clone 1112 47 3020 1115 48 3022 1111 42 3033
execute if entity @s[scores={lifetime=140}] run clone 1112 47 3020 1115 48 3022 1110 41 3033
execute if entity @s[scores={lifetime=160}] run clone 1112 47 3020 1115 48 3022 1109 40 3033
execute if entity @s[scores={lifetime=180}] run clone 1112 47 3020 1115 48 3022 1108 39 3033
execute if entity @s[scores={lifetime=200}] run clone 1112 47 3020 1115 48 3022 1107 38 3033
execute if entity @s[scores={lifetime=220}] run clone 1112 47 3024 1114 48 3026 1107 37 3033
execute if entity @s[scores={lifetime=240}] run clone 1112 47 3024 1114 48 3026 1107 36 3033
execute if entity @s[scores={lifetime=260}] run clone 1111 47 3020 1112 47 3022 1107 36 3033
execute if entity @s[scores={lifetime=280}] run clone 1110 47 3020 1112 47 3022 1108 36 3033
execute if entity @s[scores={lifetime=300}] run fill 1110 36 3033 1110 36 3035 minecraft:stone
execute if entity @s[scores={lifetime=320}] run clone 1112 47 3024 1112 47 3026 1123 52 3033
execute if entity @s[scores={lifetime=340}] run clone 1112 47 3024 1113 47 3026 1122 52 3033
execute if entity @s[scores={lifetime=360}] run clone 1112 47 3024 1114 47 3026 1121 52 3033
execute if entity @s[scores={lifetime=380}] run clone 1112 47 3016 1115 48 3018 1120 51 3033
execute if entity @s[scores={lifetime=400}] run clone 1112 47 3020 1115 48 3022 1119 50 3033
execute if entity @s[scores={lifetime=420}] run clone 1112 47 3020 1115 48 3022 1118 49 3033

execute if entity @s[scores={lifetime=440..}] run scoreboard players set @s lifetime 0
