#Scores
execute if entity @a[distance=..10] unless entity @s[tag=Run] unless entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
execute if entity @s[tag=Attack] unless entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[tag=Run] unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Stun] run scoreboard players add @s time 1

#Random Spin
execute if entity @s[scores={GameTimer=85..98}] run tp @s ~ ~ ~ ~5 ~
execute if entity @s[scores={GameTimer=99..}] run scoreboard players set @s GameTimer 1

#Rotation
data modify entity @s Rotation[1] set value 0f

#Attack
execute positioned ^ ^ ^1.5 if entity @a[distance=..1.5] run tag @s add Attack
execute if entity @s[scores={timer=1..15}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute unless block ~ ~-.01 ~ minecraft:air unless entity @a[distance=..1] if entity @s[scores={timer=10..}] facing entity @p feet rotated ~ 0 if block ^ ^ ^1 minecraft:air run data merge entity @s {Attributes:[{Base:35.0d,Name:"generic.follow_range"},{Base:0.20d,Name:"generic.movement_speed"}]}
execute if entity @a[distance=..1] unless block ~ ~-.01 ~ minecraft:air if entity @s[scores={timer=10..}] facing entity @p feet rotated ~ 0 run playsound minecraft:block.anvil.step hostile @a ~ ~ ~ 1 1
execute if entity @a[distance=..1.3] unless block ~ ~-.01 ~ minecraft:air if entity @s[scores={timer=10..}] facing entity @p feet rotated ~ 0 if block ^ ^ ^1 minecraft:air run tp @s ^ ^1 ^ ~ 0

#Stop Attack
execute if entity @a[distance=4..] run tag @s remove Attack
execute if entity @a[distance=4..] run data merge entity @s {Attributes:[{Base:0.1d,Name:"generic.follow_range"}]}
execute unless entity @s[tag=Attack] run tag @s remove Attack
execute unless entity @s[tag=Attack] run data merge entity @s {Attributes:[{Base:0.1d,Name:"generic.follow_range"}]}
execute unless entity @s[tag=Attack] run scoreboard players set @s timer 0

#Run
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.dolphin.hurt hostile @a ~ ~ ~ 1 1.7
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Run
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s lifetime 0
execute if entity @s[nbt={HurtTime:10s}] run tag @s remove Attack
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=1..300}] facing entity @p feet rotated ~180 0 unless block ~ ~-.1 ~ minecraft:air if block ^.3 ^ ^.5 minecraft:air if block ^-.3 ^ ^.5 minecraft:air if block ^ ^ ^1 minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[scores={lifetime=1..300}] facing entity @p feet rotated ~180 0 if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.1 ~ ~ 0
execute if entity @s[scores={lifetime=301}] run tag @s remove Run
execute if entity @s[scores={lifetime=301}] run scoreboard players set @s lifetime 0

#Particle
execute unless entity @s[tag=Run] run particle minecraft:flame ~ ~.5 ~ 0.1 0.1 0.1 0 1 normal

#Stun
execute if entity @s[tag=Stun] run data merge entity @s {NoAI:1b,Attributes:[{Base:0.1d,Name:"generic.follow_range"},{Base:0d,Name:"generic.movement_speed"}]}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.3 ~ .2 .1 .2 1 1
execute if entity @s[scores={time=1..110}] run scoreboard players set @s timer 0
execute if entity @s[scores={time=1..110}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={time=110..}] run data merge entity @s {NoAI:0b,Attributes:[{Base:35.0d,Name:"generic.follow_range"},{Base:0.20d,Name:"generic.movement_speed"}]}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute if entity @s[scores={time=110..}] run tag @s add Run
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Arrow
execute if entity @e[type=arrow,nbt={Potion:"minecraft:night_vision"},distance=..1.5] run tag @s add Stun

#Sounds
execute if entity @s[scores={timer=1}] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ .2 2

#Places
execute if entity @s[x=3140,y=91,z=1967,dx=5,dy=1,dz=0] run tp @s ~ ~ ~.2 ~ 0
execute if entity @s[x=3128,y=94,z=1967,dx=11,dy=1,dz=0] run tp @s ~ ~ ~.2 ~ 0
execute if entity @s[x=3140,y=95,z=1968,dx=0,dy=1,dz=4] run tp @s ~-.2 ~ ~ ~ 0
execute if entity @s[x=3140,y=95,z=1968,dx=0,dy=1,dz=4] run tp @s ~-.2 ~ ~ ~ 0
execute if entity @s[x=3130,y=113,z=1960,dx=10,dy=1,dz=0] run tp @s ~ ~ ~-.2 ~ 0
execute if entity @s[x=3130,y=113,z=1952,dx=10,dy=1,dz=0] run tp @s ~ ~ ~.2 ~ 0
execute if entity @s[x=3130,y=113,z=1953,dx=0,dy=1,dz=6] run tp @s ~.2 ~ ~ ~ 0
execute if entity @s[x=3140,y=113,z=1953,dx=0,dy=1,dz=6] run tp @s ~-.2 ~ ~ ~ 0
execute if entity @s[x=3117,y=113,z=1940,dx=0,dy=1,dz=3] run tp @s ~.2 ~ ~ ~ 0
execute if entity @s[x=3122,y=113,z=1945,dx=0,dy=1,dz=2] run tp @s ~.2 ~ ~ ~ 0
execute if entity @s[x=3128,y=113,z=1941,dx=0,dy=1,dz=2] run tp @s ~.2 ~ ~ ~ 0
execute if entity @s[x=3131,y=113,z=1940,dx=0,dy=1,dz=6] run tp @s ~-.2 ~ ~ ~ 0
execute if entity @s[x=3126,y=113,z=1941,dx=0,dy=1,dz=2] run tp @s ~-.2 ~ ~ ~ 0
execute if entity @s[x=3117,y=113,z=1939,dx=14,dy=1,dz=0] run tp @s ~ ~ ~.2 ~ 0
execute if entity @s[x=3127,y=113,z=1943,dx=0,dy=1,dz=0] run tp @s ~ ~ ~.2 ~ 0
execute if entity @s[x=3127,y=113,z=1941,dx=0,dy=1,dz=0] run tp @s ~ ~ ~-.2 ~ 0
execute if entity @s[x=3117,y=113,z=1944,dx=5,dy=1,dz=0] run tp @s ~ ~ ~-.2 ~ 0
execute if entity @s[x=3123,y=113,z=1947,dx=8,dy=1,dz=0] run tp @s ~ ~ ~-.2 ~ 0
execute if entity @s[x=3118,y=113,z=1973,dx=3,dy=1,dz=0] run tp @s ~ ~ ~.2 ~ 0
execute if entity @s[x=3118,y=113,z=1981,dx=3,dy=1,dz=0] run tp @s ~ ~ ~-.2 ~ 0
execute if entity @s[x=3121,y=113,z=1974,dx=0,dy=1,dz=6] run tp @s ~-.2 ~ ~ ~ 0
