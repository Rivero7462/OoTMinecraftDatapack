#1
scoreboard players add @s timer 1

execute if entity @s[scores={timer=60}] run fill 2184 31 1935 2182 31 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={timer=85}] run fill 2184 32 1935 2182 32 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={timer=110}] run fill 2184 33 1935 2182 33 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={timer=135}] run fill 2184 34 1935 2182 34 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={timer=210}] run fill 2184 34 1935 2182 34 1933 minecraft:air
execute if entity @s[scores={timer=235}] run fill 2184 33 1935 2182 33 1933 minecraft:air
execute if entity @s[scores={timer=260}] run fill 2184 32 1935 2182 32 1933 minecraft:air
execute if entity @s[scores={timer=285}] run fill 2184 31 1935 2182 31 1933 minecraft:air

#2
execute unless entity @s[tag=2] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=60}] run fill 2200 31 1933 2202 31 1935 minecraft:smooth_red_sandstone
execute if entity @s[scores={lifetime=85}] run fill 2200 32 1933 2202 32 1935 minecraft:smooth_red_sandstone
execute if entity @s[scores={lifetime=110}] run fill 2200 33 1933 2202 33 1935 minecraft:smooth_red_sandstone
execute if entity @s[scores={lifetime=135}] run fill 2200 34 1933 2202 34 1935 minecraft:smooth_red_sandstone
execute if entity @s[scores={lifetime=210}] run fill 2200 34 1933 2202 34 1935 minecraft:air
execute if entity @s[scores={lifetime=235}] run fill 2200 33 1933 2202 33 1935 minecraft:air
execute if entity @s[scores={lifetime=260}] run fill 2200 32 1933 2202 32 1935 minecraft:air
execute if entity @s[scores={lifetime=285}] run fill 2200 31 1933 2202 31 1935 minecraft:air

execute if entity @s[tag=2] run scoreboard players set @s lifetime 0
execute if entity @s[tag=2] run fill 2202 31 1933 2200 34 1935 minecraft:smooth_red_sandstone

#2 But Higher
execute if entity @s[tag=2] run scoreboard players add @s time 1
execute if entity @s[scores={time=60}] run fill 2202 35 1935 2200 35 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=70}] run fill 2202 36 1935 2200 36 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=80}] run fill 2202 37 1935 2200 37 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=90}] run fill 2202 38 1935 2200 38 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=100}] run fill 2202 39 1935 2200 39 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=110}] run fill 2202 40 1935 2200 40 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=120}] run fill 2202 41 1935 2200 41 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=130}] run fill 2202 42 1935 2200 42 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=140}] run fill 2202 43 1935 2200 43 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=150}] run fill 2202 44 1935 2200 44 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=160}] run fill 2202 45 1935 2200 45 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=170}] run fill 2202 46 1935 2200 46 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=180}] run fill 2202 47 1935 2200 47 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=190}] run fill 2202 48 1935 2200 48 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=200}] run fill 2202 49 1935 2200 49 1933 minecraft:smooth_red_sandstone
execute if entity @s[scores={time=210}] run fill 2202 50 1935 2200 50 1933 minecraft:smooth_red_sandstone

execute if entity @s[scores={time=285}] run fill 2202 50 1935 2200 50 1933 minecraft:air
execute if entity @s[scores={time=295}] run fill 2202 49 1935 2200 49 1933 minecraft:air
execute if entity @s[scores={time=305}] run fill 2202 48 1935 2200 48 1933 minecraft:air
execute if entity @s[scores={time=315}] run fill 2202 47 1935 2200 47 1933 minecraft:air
execute if entity @s[scores={time=325}] run fill 2202 46 1935 2200 46 1933 minecraft:air
execute if entity @s[scores={time=335}] run fill 2202 45 1935 2200 45 1933 minecraft:air
execute if entity @s[scores={time=345}] run fill 2202 44 1935 2200 44 1933 minecraft:air
execute if entity @s[scores={time=355}] run fill 2202 43 1935 2200 43 1933 minecraft:air
execute if entity @s[scores={time=365}] run fill 2202 42 1935 2200 42 1933 minecraft:air
execute if entity @s[scores={time=375}] run fill 2202 41 1935 2200 41 1933 minecraft:air
execute if entity @s[scores={time=385}] run fill 2202 40 1935 2200 40 1933 minecraft:air
execute if entity @s[scores={time=395}] run fill 2202 39 1935 2200 39 1933 minecraft:air
execute if entity @s[scores={time=405}] run fill 2202 38 1935 2200 38 1933 minecraft:air
execute if entity @s[scores={time=415}] run fill 2202 37 1935 2200 37 1933 minecraft:air
execute if entity @s[scores={time=425}] run fill 2202 36 1935 2200 36 1933 minecraft:air
execute if entity @s[scores={time=435}] run fill 2202 35 1935 2200 35 1933 minecraft:air

execute if entity @s[scores={time=436..}] run scoreboard players set @s time 0

execute unless entity @s[tag=2] run scoreboard players set @s time 0
execute unless entity @s[tag=2] run fill 2200 35 1935 2202 50 1933 minecraft:air

#3
scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=60}] run fill 2191 31 1944 2193 31 1946 minecraft:smooth_red_sandstone
execute if entity @s[scores={GameTimer=85}] run fill 2191 32 1944 2193 32 1946 minecraft:smooth_red_sandstone
execute if entity @s[scores={GameTimer=110}] run fill 2191 33 1944 2193 33 1946 minecraft:smooth_red_sandstone
execute if entity @s[scores={GameTimer=135}] run fill 2191 34 1944 2193 34 1946 minecraft:smooth_red_sandstone
execute if entity @s[scores={GameTimer=210}] run fill 2191 34 1944 2193 34 1946 minecraft:air
execute if entity @s[scores={GameTimer=235}] run fill 2191 33 1944 2193 33 1946 minecraft:air
execute if entity @s[scores={GameTimer=260}] run fill 2191 32 1944 2193 32 1946 minecraft:air
execute if entity @s[scores={GameTimer=285}] run fill 2191 31 1944 2193 31 1946 minecraft:air

#Reset
execute if entity @s[scores={timer=286..}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={timer=286..}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={timer=286..}] run scoreboard players set @s timer 0
