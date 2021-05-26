#/scoreboard players list @e[tag=Lizalfos2,limit=1]

#Block
execute if block ~ ~ ~ minecraft:smooth_red_sandstone run tp @s ~ ~.5 ~

#Rotation
data modify entity @s Rotation[1] set value 0f

#Platform Points
scoreboard players set @e[type=area_effect_cloud,tag=LizPlatform1] text 1
scoreboard players set @e[type=area_effect_cloud,tag=LizPlatform2] text 2
scoreboard players set @e[type=area_effect_cloud,tag=LizPlatform3] text 3
scoreboard players set @e[type=area_effect_cloud,tag=LizPlatform4] text 4
scoreboard players set @e[type=area_effect_cloud,tag=LizPlatform5] text 5
scoreboard players set @e[type=area_effect_cloud,tag=LizPlatform6] text 6
scoreboard players set @e[type=area_effect_cloud,tag=LizPlatform7] text 7

#Players Platform
execute at @a if block ~ ~-.2 ~ minecraft:smooth_red_sandstone run scoreboard players operation @s text = @e[type=area_effect_cloud,tag=LizPlatform,sort=nearest,limit=1] text

#Correct Platform
execute unless entity @s[tag=Run] if score @s lifetime = @s text if entity @s[tag=Jump] run tag @s remove Platform
execute unless entity @s[tag=Run] unless score @s lifetime = @s text run tag @s add Platform

#Lizalfos Platform + Cooldown + Choose Closest Platform
execute unless score @s lifetime = @s text if entity @e[type=area_effect_cloud,tag=LizPlatform,distance=..1.5] run tag @s add Cooldown
execute if entity @s[tag=Cooldown] run scoreboard players add @s timer 1
execute unless entity @s[tag=Run] if entity @s[scores={timer=1}] run scoreboard players operation @s lifetime = @e[type=area_effect_cloud,tag=LizPlatform,sort=nearest,distance=..1.5,limit=1] text
execute unless entity @s[tag=Run] if entity @s[scores={timer=1}] run scoreboard players operation @s text -= @s lifetime
execute unless entity @s[tag=Run] if entity @s[scores={timer=1}] if entity @s[scores={text=0}] run tag @s remove Platform
execute unless entity @s[tag=Run] if entity @s[scores={timer=1}] if score @s text matches ..-1 run tag @s add Reverse
execute unless entity @s[tag=Run] if entity @s[scores={timer=1}] if score @s text matches 0.. run tag @s remove Reverse
execute unless entity @s[tag=Run] unless entity @s[tag=Reverse] if entity @s[scores={timer=1}] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Run] if entity @s[tag=Reverse,scores={timer=1}] run scoreboard players remove @s lifetime 1
execute if entity @s[scores={timer=15..}] run tag @s remove Cooldown
execute if entity @s[scores={timer=15..}] run scoreboard players set @s timer 0

#Loop Lifetime Scores
execute unless block 2269 37 1930 minecraft:stone_pressure_plate if entity @s[scores={lifetime=8..}] run scoreboard players set @s lifetime 1
execute unless block 2269 37 1930 minecraft:stone_pressure_plate if entity @s[scores={lifetime=..0}] run scoreboard players set @s lifetime 7

#Move
execute unless block ~ ~-.5 ~ minecraft:air unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=1}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform1,limit=1]
execute unless block ~ ~-.5 ~ minecraft:air unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=2}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform2,limit=1]
execute unless block ~ ~-.5 ~ minecraft:air unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=3}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform3,limit=1]
execute unless block ~ ~-.5 ~ minecraft:air unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=4}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform4,limit=1]
execute unless block ~ ~-.5 ~ minecraft:air unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=5}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform5,limit=1]
execute unless block ~ ~-.5 ~ minecraft:air unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=6}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform6,limit=1]
execute unless block ~ ~-.5 ~ minecraft:air unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=7}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform7,limit=1]

execute unless entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform] if block ~ ~-.5 ~ minecraft:air rotated ~ 0 run tp @s ~ ~-.5 ~

#Jump/Correction
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform] unless block ~ ~-2 ~ minecraft:smooth_red_sandstone run tag @s add Jump
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform] if entity @s[tag=Jump] run scoreboard players add @s time 1
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform] if entity @s[scores={time=1}] run tp @s ~ ~1 ~ ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform,scores={lifetime=1}] if entity @s[scores={time=2..10}] facing entity @e[type=area_effect_cloud,tag=LizPlatform1,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform,scores={lifetime=2}] if entity @s[scores={time=2..10}] facing entity @e[type=area_effect_cloud,tag=LizPlatform2,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform,scores={lifetime=3}] if entity @s[scores={time=2..10}] facing entity @e[type=area_effect_cloud,tag=LizPlatform3,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform,scores={lifetime=4}] if entity @s[scores={time=2..10}] facing entity @e[type=area_effect_cloud,tag=LizPlatform4,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform,scores={lifetime=5}] if entity @s[scores={time=2..10}] facing entity @e[type=area_effect_cloud,tag=LizPlatform5,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform,scores={lifetime=6}] if entity @s[scores={time=2..10}] facing entity @e[type=area_effect_cloud,tag=LizPlatform6,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform,scores={lifetime=7}] if entity @s[scores={time=2..10}] facing entity @e[type=area_effect_cloud,tag=LizPlatform7,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless block ~ ~ ~ minecraft:smooth_red_sandstone if entity @s[tag=Platform] if entity @s[scores={time=11}] run tp @s ~ ~-1 ~ ~ 0

execute unless entity @s[tag=Platform] if block ~ ~-2 ~ minecraft:netherrack run tag @s add Jump
execute unless entity @s[tag=Platform] if entity @s[tag=Jump] run scoreboard players add @s time 1
execute unless entity @s[tag=Platform] if entity @s[scores={time=1}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=Platform] if entity @s[scores={time=2}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute unless entity @s[tag=Platform] if entity @s[scores={time=3..10}] rotated ~ 0 run tp @s ^ ^ ^.3
execute unless entity @s[tag=Platform] if entity @s[scores={time=11}] run tp @s ~ ~-.5 ~
execute if entity @s[scores={time=12}] run tag @s remove Jump
execute if entity @s[scores={time=12}] run scoreboard players set @s time 0

#Jump Attack
execute if entity @s[nbt={HurtTime:10s}] at @a rotated ~ 0 if block ^ ^-2 ^-2 minecraft:smooth_red_sandstone if block ^ ^ ^-1 minecraft:air if block ^ ^ ^-2 minecraft:air run tag @s add JumpAttack
execute if entity @s[tag=JumpAttack] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=11..16}] if block ^ ^1 ^1 minecraft:air run tp @s ^ ^.6 ^.4
execute if entity @s[scores={GameTimer=20..25}] if block ^ ^1 ^1 minecraft:air run tp @s ^ ^-.55 ^.4
execute if entity @s[scores={GameTimer=27..}] run tag @s remove JumpAttack
execute if entity @s[scores={GameTimer=27..}] run scoreboard players set @s GameTimer 0

#Swap
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s CuccoCount 1
execute if entity @s[scores={CuccoCount=2..}] run tag @e[type=zombie,tag=Lizalfos,sort=furthest] remove Run
execute if entity @s[scores={CuccoCount=2..}] run tag @s add Run
execute if entity @s[scores={CuccoCount=2..}] run scoreboard players set @s CuccoCount 0

scoreboard objectives add Lizalfos dummy
execute store result score @s Lizalfos if entity @e[type=zombie,tag=Lizalfos]
execute if entity @s[scores={Lizalfos=1}] run tag @s remove Run

#Run
execute if entity @s[tag=Run] run tag @s add Platform
execute if entity @s[tag=Run] if score @s lifetime = @s text run scoreboard players add @s lifetime 1
execute if entity @s[tag=Run] unless entity @s[tag=Jump] if block ~ ~-.1 ~ minecraft:air rotated ~ 0 run tp @s ~ ~-.1 ~
execute unless block ~ ~-.5 ~ minecraft:air if entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=1}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform1,limit=1,distance=1.5..]
execute unless block ~ ~-.5 ~ minecraft:air if entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=2}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform2,limit=1,distance=1.5..]
execute unless block ~ ~-.5 ~ minecraft:air if entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=3}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform3,limit=1,distance=1.5..]
execute unless block ~ ~-.5 ~ minecraft:air if entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=4}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform4,limit=1,distance=1.5..]
execute unless block ~ ~-.5 ~ minecraft:air if entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=5}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform5,limit=1,distance=1.5..]
execute unless block ~ ~-.5 ~ minecraft:air if entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=6}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform6,limit=1,distance=1.5..]
execute unless block ~ ~-.5 ~ minecraft:air if entity @s[tag=Run] unless entity @s[tag=Jump] if entity @s[tag=Platform,scores={lifetime=7}] rotated ~ 0 run tp @s ^ ^ ^.3 facing entity @e[type=area_effect_cloud,tag=LizPlatform7,limit=1,distance=1.5..]

#Cooldown
execute if entity @s[tag=Run] if entity @s[scores={timer=1}] run scoreboard players operation @s lifetime = @e[type=area_effect_cloud,tag=LizPlatform,sort=nearest,limit=1] text

#AI and Vulnerability
execute if entity @s[tag=Platform] run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute if entity @s[tag=Jump] run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute if entity @s[scores={GameTimer=10..}] run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute at @a if block ~ ~-1 ~ minecraft:netherrack run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute if entity @s[tag=Run] run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute at @a unless entity @s[tag=Run] unless entity @s[scores={GameTimer=10..}] unless entity @s[tag=Platform] unless entity @s[tag=Jump] unless block ~ ~-1 ~ minecraft:netherrack unless block ~ ~-2 ~ minecraft:netherrack run data merge entity @s {Invulnerable:0b,NoAI:0b}

#Slingshot
execute unless entity @s[tag=JumpAttack] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute unless entity @s[tag=JumpAttack] if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Arrow
execute unless entity @s[tag=JumpAttack] positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] unless entity @s[tag=Block] run tag @s add Stun

#Sounds
execute if entity @s[scores={time=1}] run playsound minecraft:entity.dolphin.hurt hostile @a ~ ~ ~ 1 1.6
execute if entity @s[scores={GameTimer=6}] run playsound minecraft:entity.dolphin.hurt hostile @a ~ ~ ~ 1 1.6
execute if entity @s[nbt={Invulnerable:0b}] unless entity @s[tag=Platform] unless entity @s[tag=Run] if entity @a[distance=...7] at @a run playsound minecraft:entity.dolphin.attack hostile @a ~ ~ ~ 1 1.2

#Out of Bounds
execute if block 2269 34 1929 minecraft:gold_block if entity @s[x=2272,y=50,z=1925,dx=1,dy=2,dz=5] run tp @s 2283.0 50 1930.0
execute if block 2269 34 1929 minecraft:gold_block if entity @s[x=2273,y=50,z=1923,dx=12,dy=2,dz=1] run tp @s 2283.0 50 1930.0
execute if block 2269 34 1929 minecraft:gold_block if entity @s[y=48,dy=1] run tp @s 2283.0 50 1930.0

execute if block 2269 34 1929 minecraft:air if entity @s[y=48,dy=1] run tp @s 2269 37 1925
execute if block 2269 34 1929 minecraft:air if entity @s[y=33,dy=1] run tp @s 2269 37 1925


execute as @a at @a unless block 2276 50 1941 minecraft:stone_pressure_plate if entity @a[y=47,dy=1] run function ocarina_of_time:music/dodongo_cavern
execute as @a at @a unless block 2276 50 1941 minecraft:stone_pressure_plate if entity @a[y=47,dy=1] run fill 2285 46 1945 2285 46 1945 minecraft:air
execute as @a at @a unless block 2276 50 1941 minecraft:stone_pressure_plate if entity @a[y=47,dy=1] run kill @e[type=zombie,tag=Lizalfos]
execute as @a at @a unless block 2276 50 1941 minecraft:stone_pressure_plate if entity @a[y=47,dy=1] run kill @e[type=area_effect_cloud,tag=LizPlatform]
