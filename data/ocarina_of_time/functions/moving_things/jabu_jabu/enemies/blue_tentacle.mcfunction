#Up
execute if entity @s[tag=Seen] unless entity @a[x=1755,y=53,z=1306,dx=14,dz=14] if block 1762 55 1313 minecraft:blue_wool run clone 1773 55 1315 1775 66 1317 1761 55 1312
execute unless entity @a[x=1755,y=53,z=1306,dx=14,dz=14] run tag @s remove Attack

#Down
execute if entity @a[x=1755,y=53,z=1306,dx=14,dz=14] unless entity @s[scores={lifetime=30..}] run tp @s 1762 55.5 1313 facing entity @p eyes
execute if entity @a[x=1755,y=53,z=1306,dx=14,dz=14] run tag @s add Seen
execute if entity @a[x=1755,y=53,z=1306,dx=14,dz=14] run tag @s add Attack
execute unless entity @s[scores={timer=1..60}] if entity @a[x=1755,y=53,z=1306,dx=14,dz=14] unless block 1762 55 1313 minecraft:blue_wool run clone 1773 55 1311 1775 66 1313 1761 55 1312
execute if entity @s[tag=Seen] run fill 1751 52 1315 1751 56 1311 minecraft:vine[west=true] replace minecraft:air

#Hurt
execute if entity @s[tag=Attack] positioned 1762 61 1313 if entity @e[type=armor_stand,tag=Boomerang,distance=..1.5] run tag @s add Hurt
execute if entity @s[tag=Attack] positioned 1762 61 1313 if entity @e[type=armor_stand,tag=Boomerang,distance=..1.5] run tag @s add Seem
execute if entity @s[scores={timer=1}] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={timer=1}] if block 1762 55 1313 minecraft:blue_wool run clone 1773 55 1315 1775 66 1317 1761 55 1312
execute if entity @s[scores={timer=61..}] if entity @s[tag=Attack] unless block 1762 55 1313 minecraft:blue_wool run clone 1773 55 1311 1775 66 1313 1761 55 1312
execute if entity @s[scores={timer=61..}] run tag @s remove Hurt
execute if entity @s[scores={timer=61..}] run scoreboard players set @s timer 0

#Health
execute if entity @s[scores={GameTimer=4}] run playsound minecraft:ui.stonecutter.take_result hostile @a ~ ~ ~ 2 .5
execute if entity @s[scores={GameTimer=4}] run fill 1747 52 1292 1745 56 1296 minecraft:air replace minecraft:glass_pane
execute if entity @s[scores={GameTimer=4}] run fill 1746 56 1295 1746 52 1293 minecraft:air
execute if entity @s[scores={GameTimer=4}] run fill 1751 52 1315 1751 56 1311 minecraft:air replace minecraft:vine
execute if entity @s[scores={GameTimer=4}] run fill 1761 65 1312 1763 55 1314 minecraft:air
execute if entity @s[scores={GameTimer=4}] run kill @s

#Attack
execute if entity @s[scores={lifetime=29}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^ run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=30}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^.4 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=31}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^.8 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=32}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^1.2 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=33}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^1.6 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=34}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^2 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=35}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^2.4 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=36}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^2.8 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=37}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^3.2 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=38}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^3.6 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=39}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^4 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=40}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^4.4 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=41}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^4.8 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=42}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^5.2 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=43}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^5.6 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=44}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^6 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=45}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^6.4 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=46}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^6.8 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=47}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^7.2 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force
execute if entity @s[scores={lifetime=48}] unless block ^ ^ ^ minecraft:pink_terracotta positioned ^ ^-.5 ^7.6 run particle minecraft:dust 0 0 1 1.5 ^ ^ ^1 0 0 0.001 100 0 force

execute if entity @s[scores={lifetime=29}] positioned ^ ^ ^ if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=30}] positioned ^ ^ ^.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=31}] positioned ^ ^ ^.8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=32}] positioned ^ ^ ^1.2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=33}] positioned ^ ^ ^1.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=34}] positioned ^ ^ ^2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=35}] positioned ^ ^ ^2.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=36}] positioned ^ ^ ^2.8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=37}] positioned ^ ^ ^3.2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=38}] positioned ^ ^ ^3.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=39}] positioned ^ ^ ^4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=40}] positioned ^ ^ ^4.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=41}] positioned ^ ^ ^4.8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=42}] positioned ^ ^ ^5.2 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=43}] positioned ^ ^ ^5.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=44}] positioned ^ ^ ^6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=45}] positioned ^ ^ ^6.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=46}] positioned ^ ^ ^7.4 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=47}] positioned ^ ^ ^8 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=48}] positioned ^ ^ ^8.6 if entity @a[dx=0,dy=0,dz=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[scores={lifetime=60..}] run tag @s remove Attack
execute if entity @s[scores={lifetime=60..}] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Attack] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Hurt] run tag @s remove Attack
execute if entity @s[tag=Hurt] run scoreboard players set @s lifetime 0

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:ui.stonecutter.take_result hostile @a ~ ~ ~ 2 1.5
execute if entity @s[scores={lifetime=29..49}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 2 1.5
