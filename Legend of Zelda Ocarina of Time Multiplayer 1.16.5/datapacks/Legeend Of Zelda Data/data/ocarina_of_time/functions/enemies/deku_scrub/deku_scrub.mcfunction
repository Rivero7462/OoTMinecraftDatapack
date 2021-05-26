#Rotation
data modify entity @s Rotation[1] set value 0f

#Scores
execute if entity @s[tag=Scared] unless entity @s[tag=Stun] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Stun] run scoreboard players add @s time 1

#Locate
execute if entity @a[distance=..13] run tag @s add Locate
execute unless entity @a[distance=..13] run tag @s remove Locate
execute unless entity @a[distance=..13] run tag @s remove Attack

execute positioned ~ ~2 ~ unless entity @s[tag=Attack] if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast

#Spotted
execute if entity @s[tag=Attack] positioned ~-2 ~2 ~-2 unless entity @a[dx=4,dy=1,dz=4] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] if entity @s[tag=Reset] unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~
execute if entity @s[scores={timer=1}] run playsound minecraft:block.wet_grass.place hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1..}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={timer=4..}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

#Gone
execute if entity @a[distance=13..] run scoreboard players add @s GameTimer 1
execute positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] unless entity @s[tag=Stun] unless entity @s[tag=Scared] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run tag @s add Reset
execute if entity @s[scores={GameTimer=1}] at @s run playsound minecraft:block.wet_grass.break hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=1}] at @s if block ~ ~ ~ minecraft:air run tp @s ~ ~-1 ~
execute if entity @s[scores={GameTimer=1..}] run scoreboard players set @s timer 0

#Reset
execute if entity @s[scores={timer=90..}] run scoreboard players set @s timer 1

execute if entity @e[type=armor_stand,tag=Deflect,distance=..1] if block ~ ~ ~ minecraft:air unless entity @s[tag=SpecialScrub] run tag @s add Scared
execute if entity @e[type=armor_stand,tag=Deflect,distance=..1] if block ~ ~ ~ minecraft:air if entity @s[tag=SpecialScrub] run tag @s add Stun
execute as @e[type=armor_stand,tag=Deflect,distance=..1] run kill @s

#Shoot
execute unless entity @s[tag=Stun] if entity @s[scores={timer=30}] run summon minecraft:armor_stand ~ ~-.7 ~ {Tags:["DekuNut"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"DekuNut\"",Id:[I;-192246084,-1548333507,-1318376299,131892291],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1Mjg3YzJiNzYxMDg0YmMzOTFhYTc1ZmIwMWFkZTNlMmRjNTVlM2U1YTIxNWRjZTA3MDYwOGVhNjk2MmUifX19"}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=45}] run summon minecraft:armor_stand ~ ~-.7 ~ {Tags:["DekuNut"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"DekuNut\"",Id:[I;-192246084,-1548333507,-1318376299,131892291],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1Mjg3YzJiNzYxMDg0YmMzOTFhYTc1ZmIwMWFkZTNlMmRjNTVlM2U1YTIxNWRjZTA3MDYwOGVhNjk2MmUifX19"}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute unless entity @s[tag=Stun] if entity @s[scores={timer=60}] run summon minecraft:armor_stand ~ ~-.7 ~ {Tags:["DekuNut"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"DekuNut\"",Id:[I;-192246084,-1548333507,-1318376299,131892291],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1Mjg3YzJiNzYxMDg0YmMzOTFhYTc1ZmIwMWFkZTNlMmRjNTVlM2U1YTIxNWRjZTA3MDYwOGVhNjk2MmUifX19"}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

#Scared
execute if entity @s[tag=Scared] run scoreboard players set @s timer -1
execute if entity @s[tag=Scared,scores={lifetime=1}] at @s run playsound minecraft:entity.bat.death hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=Scared,scores={lifetime=1}] at @s unless entity @s[tag=Stun] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["DekuScrubReturn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=Scared,scores={lifetime=1..128}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Scared,scores={lifetime=1..15}] at @s unless entity @s[tag=Stun] unless entity @a[distance=..1.3] facing entity @p feet rotated ~ 0 if block ^ ^.4 ^-.5 minecraft:air unless block ^ ^-.4 ^-.5 minecraft:air run tp @s ^ ^ ^-.2 ~ 0
execute if entity @s[tag=Scared,scores={lifetime=45..55}] at @s unless entity @a[distance=..1.3] facing entity @p feet rotated ~ 0 if block ^ ^.4 ^-1 minecraft:air unless block ^ ^-.4 ^-1 minecraft:air run tp @s ^ ^ ^-.2 ~ 0
execute if entity @s[tag=Scared,scores={lifetime=85..100}] at @s unless entity @a[distance=..1.3] facing entity @p feet rotated ~ 0 if block ^ ^.4 ^-.5 minecraft:air unless block ^ ^-.4 ^-.5 minecraft:air run tp @s ^ ^ ^-.2 ~ 0
execute if entity @s[tag=Scared,scores={lifetime=129}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Scared,scores={lifetime=130..145}] at @s facing entity @e[type=area_effect_cloud,tag=DekuScrubReturn,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^.5 ~ 0
execute if entity @s[tag=Scared,scores={lifetime=147..}] run kill @e[type=area_effect_cloud,tag=DekuScrubReturn]
execute if entity @s[tag=Scared,scores={lifetime=147..}] run function ocarina_of_time:moving_things/deku_tree/enemies/deku_scrubs
execute if entity @s[tag=Scared,scores={lifetime=147..}] run tag @s remove Scared
execute if entity @s[scores={lifetime=147..}] run scoreboard players set @s lifetime 0

execute if entity @s[tag=Scared,scores={lifetime=1..100}] unless block ^.5 ^2 ^ minecraft:air run tp @s ^-.1 ^ ^ ~ 0
execute if entity @s[tag=Scared,scores={lifetime=1..100}] unless block ^-.5 ^2 ^ minecraft:air run tp @s ^.1 ^ ^ ~ 0

#Stun
execute as @s[scores={time=1..110}] unless entity @s[tag=SpecialScrub] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .3 .5 .3 1 1
execute as @s[scores={time=110..}] unless entity @s[tag=SpecialScrub] run tag @s remove Stun
execute unless entity @s[tag=Stun] unless entity @s[tag=SpecialScrub] run scoreboard players set @s time 0

execute if entity @s[tag=SpecialScrub,tag=Stun] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .3 .5 .3 1 1
execute if entity @s[tag=SpecialScrub,tag=Stun] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=SpecialScrub,tag=Stun,scores={time=1}] run playsound minecraft:entity.bat.death hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=SpecialScrub] unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Slingshot
execute unless entity @s[tag=SpecialScrub] unless entity @s[tag=Scared] if entity @e[type=snowball,distance=..2] run tag @s add Scared
execute unless entity @s[tag=SpecialScrub] if entity @s[tag=Scared] if entity @e[type=snowball,distance=..2] run kill @s

#Invulnerable
execute if entity @s[tag=Scared] if entity @s[tag=DekuScrub9] if block 1393 8 -650 minecraft:gold_block if block 1393 8 -649 minecraft:gold_block run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Stun] unless entity @s[tag=SpecialScrub] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[tag=Stun] unless entity @s[tag=Scared] run data merge entity @s {Invulnerable:1b}

#Sound
execute if entity @s[scores={timer=35}] unless entity @s[tag=Stun] run playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ .6 1
execute if entity @s[scores={timer=50}] unless entity @s[tag=Stun] run playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ .6 1
execute if entity @s[scores={timer=65}] unless entity @s[tag=Stun] run playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ .6 1
