execute if entity @a[x=1340,y=45,z=-664,dx=2,dy=2,dz=10] at @a if block ~ ~ ~ minecraft:stone_bricks run tp @a ~ ~-1 ~
execute if entity @a[x=1340,y=45,z=-664,dx=2,dy=2,dz=10] at @a if block ~ ~1 ~ minecraft:stone_bricks run tp @a ~ ~-1 ~

#1
execute unless entity @s[tag=2] run scoreboard players add @s timer 1
execute unless entity @s[tag=2] run fill 1342 45 -664 1340 45 -654 minecraft:air replace minecraft:stone_bricks

#Tp
#1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=10}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=20}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=30}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=40}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=50}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=60}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=70}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={timer=80}] run tp @a ~ ~ ~-1

execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=110}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=120}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=130}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=140}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=150}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=160}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=170}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={timer=180}] run tp @a ~ ~ ~1
#2
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=10}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=20}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=30}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=40}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=50}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=60}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=70}] run tp @a ~ ~ ~-1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~-.5 minecraft:air if block ~ ~1 ~-1 minecraft:air if entity @s[scores={lifetime=80}] run tp @a ~ ~ ~-1

execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=110}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=120}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=130}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=140}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=150}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=160}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=170}] run tp @a ~ ~ ~1
execute if entity @a[x=1340,y=46,z=-664,dx=2,dy=2,dz=10] if block ~ ~-.1 ~ minecraft:stone_bricks if block ~ ~1 ~.5 minecraft:air if block ~ ~1 ~1 minecraft:air if entity @s[scores={lifetime=180}] run tp @a ~ ~ ~1

execute if entity @s[scores={timer=10}] run fill 1342 46 -654 1340 46 -654 minecraft:air
execute if entity @s[scores={timer=10}] run fill 1342 46 -657 1340 46 -657 minecraft:stone_bricks
execute if entity @s[scores={timer=20}] run fill 1342 46 -655 1340 46 -655 minecraft:air
execute if entity @s[scores={timer=20}] run fill 1342 46 -658 1340 46 -658 minecraft:stone_bricks
execute if entity @s[scores={timer=30}] run fill 1342 46 -656 1340 46 -656 minecraft:air
execute if entity @s[scores={timer=30}] run fill 1342 46 -659 1340 46 -659 minecraft:stone_bricks
execute if entity @s[scores={timer=40}] run fill 1342 46 -657 1340 46 -657 minecraft:air
execute if entity @s[scores={timer=40}] run fill 1342 46 -660 1340 46 -660 minecraft:stone_bricks
execute if entity @s[scores={timer=50}] run fill 1342 46 -658 1340 46 -658 minecraft:air
execute if entity @s[scores={timer=50}] run fill 1342 46 -661 1340 46 -661 minecraft:stone_bricks
execute if entity @s[scores={timer=60}] run fill 1342 46 -659 1340 46 -659 minecraft:air
execute if entity @s[scores={timer=60}] run fill 1342 46 -662 1340 46 -662 minecraft:stone_bricks
execute if entity @s[scores={timer=70}] run fill 1342 46 -660 1340 46 -660 minecraft:air
execute if entity @s[scores={timer=70}] run fill 1342 46 -663 1340 46 -663 minecraft:stone_bricks
execute if entity @s[scores={timer=80}] run fill 1342 46 -661 1340 46 -661 minecraft:air
execute if entity @s[scores={timer=80}] run fill 1342 46 -664 1340 46 -664 minecraft:stone_bricks

execute if entity @s[scores={timer=110}] run fill 1342 46 -664 1340 46 -664 minecraft:air
execute if entity @s[scores={timer=110}] run fill 1342 46 -661 1340 46 -661 minecraft:stone_bricks
execute if entity @s[scores={timer=120}] run fill 1342 46 -663 1340 46 -663 minecraft:air
execute if entity @s[scores={timer=120}] run fill 1342 46 -660 1340 46 -660 minecraft:stone_bricks
execute if entity @s[scores={timer=130}] run fill 1342 46 -662 1340 46 -662 minecraft:air
execute if entity @s[scores={timer=130}] run fill 1342 46 -659 1340 46 -659 minecraft:stone_bricks
execute if entity @s[scores={timer=140}] run fill 1342 46 -661 1340 46 -661 minecraft:air
execute if entity @s[scores={timer=140}] run fill 1342 46 -658 1340 46 -658 minecraft:stone_bricks
execute if entity @s[scores={timer=150}] run fill 1342 46 -660 1340 46 -660 minecraft:air
execute if entity @s[scores={timer=150}] run fill 1342 46 -657 1340 46 -657 minecraft:stone_bricks
execute if entity @s[scores={timer=160}] run fill 1342 46 -659 1340 46 -659 minecraft:air
execute if entity @s[scores={timer=160}] run fill 1342 46 -656 1340 46 -656 minecraft:stone_bricks
execute if entity @s[scores={timer=170}] run fill 1342 46 -658 1340 46 -658 minecraft:air
execute if entity @s[scores={timer=170}] run fill 1342 46 -655 1340 46 -655 minecraft:stone_bricks
execute if entity @s[scores={timer=180}] run fill 1342 46 -657 1340 46 -657 minecraft:air
execute if entity @s[scores={timer=180}] run fill 1342 46 -654 1340 46 -654 minecraft:stone_bricks
execute if entity @s[scores={timer=200}] run scoreboard players set @s timer 0

#2
execute if entity @s[tag=2] run scoreboard players add @s lifetime 1
execute if entity @s[tag=2] run fill 1342 46 -664 1340 46 -654 minecraft:air

execute if entity @s[scores={lifetime=10}] run fill 1342 45 -654 1340 45 -654 minecraft:air
execute if entity @s[scores={lifetime=10}] run fill 1342 45 -657 1340 45 -657 minecraft:stone_bricks
execute if entity @s[scores={lifetime=20}] run fill 1342 45 -655 1340 45 -655 minecraft:air
execute if entity @s[scores={lifetime=20}] run fill 1342 45 -658 1340 45 -658 minecraft:stone_bricks
execute if entity @s[scores={lifetime=30}] run fill 1342 45 -656 1340 45 -656 minecraft:air
execute if entity @s[scores={lifetime=30}] run fill 1342 45 -659 1340 45 -659 minecraft:stone_bricks
execute if entity @s[scores={lifetime=40}] run fill 1342 45 -657 1340 45 -657 minecraft:air
execute if entity @s[scores={lifetime=40}] run fill 1342 45 -660 1340 45 -660 minecraft:stone_bricks
execute if entity @s[scores={lifetime=50}] run fill 1342 45 -658 1340 45 -658 minecraft:air
execute if entity @s[scores={lifetime=50}] run fill 1342 45 -661 1340 45 -661 minecraft:stone_bricks
execute if entity @s[scores={lifetime=60}] run fill 1342 45 -659 1340 45 -659 minecraft:air
execute if entity @s[scores={lifetime=60}] run fill 1342 45 -662 1340 45 -662 minecraft:stone_bricks
execute if entity @s[scores={lifetime=70}] run fill 1342 45 -660 1340 45 -660 minecraft:air
execute if entity @s[scores={lifetime=70}] run fill 1342 45 -663 1340 45 -663 minecraft:stone_bricks
execute if entity @s[scores={lifetime=80}] run fill 1342 45 -661 1340 45 -661 minecraft:air
execute if entity @s[scores={lifetime=80}] run fill 1342 45 -664 1340 45 -664 minecraft:stone_bricks

execute if entity @s[scores={lifetime=110}] run fill 1342 45 -664 1340 45 -664 minecraft:air
execute if entity @s[scores={lifetime=110}] run fill 1342 45 -661 1340 45 -661 minecraft:stone_bricks
execute if entity @s[scores={lifetime=120}] run fill 1342 45 -663 1340 45 -663 minecraft:air
execute if entity @s[scores={lifetime=120}] run fill 1342 45 -660 1340 45 -660 minecraft:stone_bricks
execute if entity @s[scores={lifetime=130}] run fill 1342 45 -662 1340 45 -662 minecraft:air
execute if entity @s[scores={lifetime=130}] run fill 1342 45 -659 1340 45 -659 minecraft:stone_bricks
execute if entity @s[scores={lifetime=140}] run fill 1342 45 -661 1340 45 -661 minecraft:air
execute if entity @s[scores={lifetime=140}] run fill 1342 45 -658 1340 45 -658 minecraft:stone_bricks
execute if entity @s[scores={lifetime=150}] run fill 1342 45 -660 1340 45 -660 minecraft:air
execute if entity @s[scores={lifetime=150}] run fill 1342 45 -657 1340 45 -657 minecraft:stone_bricks
execute if entity @s[scores={lifetime=160}] run fill 1342 45 -659 1340 45 -659 minecraft:air
execute if entity @s[scores={lifetime=160}] run fill 1342 45 -656 1340 45 -656 minecraft:stone_bricks
execute if entity @s[scores={lifetime=170}] run fill 1342 45 -658 1340 45 -658 minecraft:air
execute if entity @s[scores={lifetime=170}] run fill 1342 45 -655 1340 45 -655 minecraft:stone_bricks
execute if entity @s[scores={lifetime=180}] run fill 1342 45 -657 1340 45 -657 minecraft:air
execute if entity @s[scores={lifetime=180}] run fill 1342 45 -654 1340 45 -654 minecraft:stone_bricks
execute if entity @s[scores={lifetime=200}] run scoreboard players set @s lifetime 0

execute if entity @s[tag=Start] run scoreboard players add @s GameTimer 1

execute if entity @s[scores={GameTimer=600}] run fill 1335 45 -653 1335 45 -665 minecraft:iron_bars[waterlogged=true,north=true,south=true] replace minecraft:iron_bars
execute if entity @s[scores={GameTimer=600}] run fill 1347 45 -663 1347 45 -655 minecraft:iron_bars[waterlogged=true,north=true,south=true] replace minecraft:iron_bars
execute if entity @s[scores={GameTimer=600}] run fill 1336 45 -665 1346 45 -649 minecraft:water replace minecraft:air
execute if entity @s[scores={GameTimer=600}] run fill 1336 42 -659 1336 42 -659 minecraft:dirt
execute if entity @s[scores={GameTimer=600}] run fill 1336 43 -659 1336 43 -659 minecraft:light_weighted_pressure_plate
execute if entity @s[scores={GameTimer=600}] run tag @s remove 2
execute if entity @s[scores={GameTimer=600}] run tag @s remove Start
execute if entity @s[scores={GameTimer=600}] run scoreboard players set @s GameTimer 0
