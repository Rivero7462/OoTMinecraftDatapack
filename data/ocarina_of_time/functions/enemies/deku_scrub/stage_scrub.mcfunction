#Rotation
data modify entity @s Rotation[1] set value 0f

#Sound
execute if entity @s[scores={timer=35}] run playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ .6 1

#Option 1
#Appear
execute if entity @s[tag=Attack] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Attack] positioned ~-2 ~2 ~-2 unless entity @a[dx=4,dy=1,dz=4] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..}] unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~
execute if entity @s[scores={timer=1}] run playsound minecraft:block.wet_grass.place hostile @a ~ ~ ~ 1 1
#Hide
execute if entity @s[tag=Attack] positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] at @s if block ~ ~ ~ minecraft:air unless entity @s[scores={timer=0}] run playsound minecraft:block.wet_grass.break hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Attack] positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] at @s if block ~ ~ ~ minecraft:air unless entity @s[scores={timer=0}] run tp @s ~ ~-1 ~
execute if entity @s[tag=Attack] positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] at @s run scoreboard players set @s timer -1
#Reset
execute if entity @s[scores={timer=90..}] run scoreboard players set @s timer 1

#Shoot
execute if entity @s[scores={timer=30}] run summon minecraft:armor_stand ~ ~-.7 ~ {Tags:["DekuNut"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"DekuNut\"",Id:[I;-192246084,-1548333507,-1318376299,131892291],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1Mjg3YzJiNzYxMDg0YmMzOTFhYTc1ZmIwMWFkZTNlMmRjNTVlM2U1YTIxNWRjZTA3MDYwOGVhNjk2MmUifX19"}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

#Option 2
execute if entity @s[tag=Dance] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Dance,scores={lifetime=1..100}] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=Dance,scores={lifetime=101}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/stage_1"}
execute if entity @s[tag=Dance,scores={lifetime=101}] run kill @s

#Option 3
execute if entity @s[tag=Rupees] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Rupees,scores={lifetime=1}] run tp @s ~ ~-1 ~
execute if entity @s[tag=Rupees,scores={lifetime=1}] run data merge entity @s {DeathLootTable:"ocarina_of_time:entities/stage_2"}
execute if entity @s[tag=Rupees,scores={lifetime=1}] run kill @s

#Option 4
execute if entity @s[tag=Wrong] run scoreboard players add @s lifetime 1
execute as @s[tag=StageScrub1,tag=Wrong,scores={lifetime=1}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub1,tag=Wrong,scores={lifetime=1}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub2,tag=Wrong,scores={lifetime=8}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub2,tag=Wrong,scores={lifetime=8}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub3,tag=Wrong,scores={lifetime=16}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub3,tag=Wrong,scores={lifetime=16}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub4,tag=Wrong,scores={lifetime=24}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub4,tag=Wrong,scores={lifetime=24}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub5,tag=Wrong,scores={lifetime=32}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub5,tag=Wrong,scores={lifetime=32}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub6,tag=Wrong,scores={lifetime=40}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub6,tag=Wrong,scores={lifetime=40}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub7,tag=Wrong,scores={lifetime=48}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub7,tag=Wrong,scores={lifetime=48}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub8,tag=Wrong,scores={lifetime=56}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub8,tag=Wrong,scores={lifetime=56}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1
execute as @s[tag=StageScrub9,tag=Wrong,scores={lifetime=64}] run tp @s ~ ~-1 ~
execute as @s[tag=StageScrub9,tag=Wrong,scores={lifetime=64}] run playsound minecraft:entity.shulker_bullet.hurt ambient @a ~ ~ ~ 1 1

#Special Option 1
execute if entity @s[tag=Cheer] run scoreboard players add @s time 1
execute if entity @s[tag=Cheer] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["DekuScrubReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={GameTimer=22..30}] run scoreboard players set @s GameTimer 2

#Push
execute as @s[tag=StageScrub1] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub1,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub2] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub2,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub3] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub3,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub4] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub4,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub5] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub5,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub6] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub6,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub7] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub7,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub8] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub8,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1
execute as @s[tag=StageScrub9] at @s positioned ^-1 ^ ^ if entity @e[type=zombie,tag=!StageScrub9,distance=..0.7] if block ^1 ^ ^ minecraft:air run tag @s add Dodge1

execute as @s[tag=StageScrub1] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub1,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub2] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub2,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub3] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub3,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub4] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub4,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub5] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub5,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub6] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub6,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub7] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub7,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub8] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub8,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2
execute as @s[tag=StageScrub9] at @s positioned ^1 ^ ^ if entity @e[type=zombie,tag=!StageScrub9,distance=..0.7] if block ^-1 ^ ^ minecraft:air run tag @s add Dodge2

execute as @s[tag=Dodge1] run scoreboard players add @s ArrowCount 1
execute as @s[tag=Dodge2] unless entity @s[tag=Dodge1] run scoreboard players add @s ArrowCount 1
execute as @s[tag=Dodge1,scores={ArrowCount=1}] at @s run tp @s ^1 ^ ^
execute as @s[tag=Dodge1,scores={ArrowCount=5}] at @s run tag @s remove Dodge1
execute as @s[tag=Dodge2,scores={ArrowCount=1}] at @s run tp @s ^-1 ^ ^
execute as @s[tag=Dodge2,scores={ArrowCount=5}] at @s run tag @s remove Dodge2
execute as @s[scores={ArrowCount=5..}] run scoreboard players set @s ArrowCount 0

#Face Player
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=1..150}] facing entity @a feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air if block ^ ^ ^.2 minecraft:air unless entity @a[distance=..3] run tp @s ^ ^ ^.1 ~ 0
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=1..150}] facing entity @a feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air if block ^ ^ ^.2 minecraft:air if entity @a[distance=..3] run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=1..150}] facing entity @a feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air unless block ^ ^ ^.2 minecraft:air run tp @s ^ ^1 ^.5 ~ 0
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=1..150}] facing entity @a feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air unless block ^ ^ ^.2 minecraft:air unless block ~ ~ ~ minecraft:air run tp @s ^ ^1 ^ ~ 0
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=1..150}] facing entity @a feet rotated ~ 0 if block ~ ~-.1 ~ minecraft:air if block ^ ^ ^.2 minecraft:air run tp @s ~ ~-.1 ~ ~ 0

#Face Leader
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=151}] unless entity @s[scores={GameTimer=31..}] as @e[type=armor_stand,tag=LeaderScrub] run scoreboard players set @s text 1
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=151..}] unless entity @s[scores={GameTimer=31..}] as @e[type=armor_stand,tag=LeaderScrub] at @s facing entity @p feet run tp @s -602 58 -705 ~ 0
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=151..}] unless entity @s[scores={GameTimer=31..}] facing entity @e[type=armor_stand,tag=LeaderScrub] feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air if block ^ ^ ^.2 minecraft:air unless entity @e[type=armor_stand,tag=LeaderScrub,distance=..4] run tp @s ^ ^ ^.1 ~ 0
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=151..}] unless entity @s[scores={GameTimer=31..}] facing entity @e[type=armor_stand,tag=LeaderScrub] feet rotated ~ 0 unless block ~ ~-.1 ~ minecraft:air unless block ^ ^ ^.2 minecraft:air run tp @s ^ ^1 ^.5 ~ 0
execute unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[tag=Cheer,scores={time=151..}] unless entity @s[scores={GameTimer=31..}] facing entity @e[type=armor_stand,tag=LeaderScrub] feet rotated ~ 0 if block ~ ~-.1 ~ minecraft:air if block ^ ^ ^.2 minecraft:air run tp @s ~ ~-.1 ~ ~ 0

#Return
execute if entity @s[tag=Cheer] unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[scores={GameTimer=31..999}] as @e[type=armor_stand,tag=LeaderScrub] at @s run tp @s -602 57 -705 -90 0
execute if entity @s[tag=Cheer] unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[scores={GameTimer=31..999}] as @e[type=armor_stand,tag=LeaderScrub] run scoreboard players set @s text 0
execute if entity @s[tag=Cheer] unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[scores={GameTimer=31..999}] facing entity @e[type=area_effect_cloud,tag=DekuScrubReturn,limit=1,sort=nearest] feet run tp @s ^ ^ ^.5 ~ 0
execute if entity @s[tag=Cheer] unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[scores={GameTimer=31..999}] if entity @e[type=area_effect_cloud,tag=DekuScrubReturn,distance=..0.3] run scoreboard players set @s GameTimer 1000
execute if entity @s[tag=Cheer] unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[scores={GameTimer=31..999}] as @e[type=area_effect_cloud,tag=DekuScrubReturn,distance=..0.3] run kill @s
execute if entity @s[tag=Cheer] unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[scores={GameTimer=1000..}] if entity @e[type=area_effect_cloud,tag=DekuScrubReturn,distance=..0.3] run tp @s ~ ~-1 ~
execute if entity @s[tag=Cheer] unless entity @s[tag=Dodge1] unless entity @s[tag=Dodge2] if entity @s[scores={GameTimer=1000..}] as @e[type=area_effect_cloud,tag=DekuScrubReturn,distance=..0.3] run kill @s

#Special Option 2
#Hide
execute if entity @s[tag=Confused] run scoreboard players add @s StickCount 1
execute if entity @s[tag=Confused,scores={StickCount=1}] run scoreboard players set @e[type=armor_stand,tag=LeaderScrub] text 2
execute if entity @s[tag=Confused,scores={StickCount=10..30}] run scoreboard players set @s StickCount 0
execute if entity @s[tag=Confused,scores={StickCount=32..}] run scoreboard players set @e[type=armor_stand,tag=LeaderScrub] text 0
execute if entity @s[tag=Confused,scores={StickCount=32}] run playsound minecraft:block.wet_grass.break hostile @a ~ ~ ~ .3 .5
execute if entity @s[tag=Confused,scores={StickCount=31..}] run tp @s ~ 56 ~
execute if entity @s[tag=Confused,scores={StickCount=31..}] run tp @e[type=armor_stand,tag=LeaderScrub] -602 57 -705 -90 0

execute if entity @s[tag=Confused,scores={StickCount=1..30}] positioned ~-2 ~1 ~-2 unless entity @a[dx=4,dy=2,dz=4] at @s unless entity @s[scores={timer=0}] facing entity @e[type=armor_stand,tag=LeaderScrub] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Confused,scores={StickCount=1..30}] positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] at @s if block ~ ~ ~ minecraft:air unless entity @s[scores={timer=0}] run playsound minecraft:block.wet_grass.break hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Confused,scores={StickCount=1..30}] if block ~ ~ ~ minecraft:air unless entity @s[scores={timer=0}] as @e[type=armor_stand,tag=LeaderScrub] at @s facing entity @p feet run tp @s -602 58 -705 ~ 0
execute if entity @s[tag=Confused,scores={StickCount=1..30}] positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] at @s if block ~ ~ ~ minecraft:air unless entity @s[scores={timer=0}] run tp @s ~ ~-1 ~
