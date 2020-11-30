#Rotation
data modify entity @s Rotation[1] set value 0f

#Scores
execute if entity @s[tag=Appear] run scoreboard players add @s lifetime 1

#Locate
execute if entity @a[distance=..13] run tag @s add Locate
execute unless entity @a[distance=..13] run tag @s remove Locate
execute unless entity @a[distance=..13] run tag @s remove Attack

execute positioned ~ ~2 ~ unless entity @s[tag=Attack] if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:enemies/ray_cast

#Spotted
execute if entity @s[tag=Attack] positioned ~-2 ~2 ~-2 unless entity @a[dx=4,dy=1,dz=4] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] if entity @s[tag=Reset] unless block ~ ~ ~ minecraft:air run tp @s ~ ~1.3 ~
execute if entity @s[scores={timer=1}] run playsound minecraft:block.wet_grass.place hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1..}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={timer=4..}] unless entity @s[tag=Appear] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={timer=4..}] if entity @s[tag=Appear] if block ~ ~-1.2 ~ minecraft:air facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

#Gone
execute if entity @a[distance=13..] run scoreboard players add @s GameTimer 1
execute positioned ~-2 ~1 ~-2 if entity @a[dx=4,dy=2,dz=4] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run tag @s add Reset
execute if entity @s[scores={GameTimer=1}] at @s unless entity @s[tag=Appear] run playsound minecraft:block.wet_grass.break hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=1}] at @s unless entity @s[tag=Appear] if block ~ ~ ~ minecraft:air run tp @s ~ ~-1.3 ~
execute if entity @s[scores={GameTimer=1..}] run scoreboard players set @s timer 0

#Reset
execute if entity @s[scores={timer=90..}] run scoreboard players set @s timer 1

execute if entity @e[type=armor_stand,tag=Deflect,distance=..1] if block ~ ~ ~ minecraft:air run tag @s add Appear
execute as @e[type=armor_stand,tag=Deflect,distance=..1] run kill @s

#Shoot
execute if entity @s[scores={timer=30}] run summon minecraft:armor_stand ~ ~-.7 ~ {Tags:["DekuNut"],DisabledSlots:4144959,NoGravity:1b,Small:1b,ShowArms:0b,Invisible:1b,ArmorItems:[{},{},{},{id:player_head,Count:1,tag:{SkullOwner:{Name:"\"DekuNut\"",Id:[I;-192246084,-1548333507,-1318376299,131892291],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjI1Mjg3YzJiNzYxMDg0YmMzOTFhYTc1ZmIwMWFkZTNlMmRjNTVlM2U1YTIxNWRjZTA3MDYwOGVhNjk2MmUifX19"}]}}}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

#Sell
execute if entity @s[tag=Appear] run scoreboard players set @s timer -1
execute if entity @s[tag=Appear,scores={lifetime=1}] run playsound minecraft:entity.bat.death hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=Appear,scores={lifetime=1..}] unless block ~ ~-1.2 ~ minecraft:air run tp @s ~ ~.2 ~
execute if entity @s[tag=Appear,scores={lifetime=1}] run scoreboard players set @s text 1
execute if entity @s[tag=Appear,scores={lifetime=495..}] run tp @s ~ ~-.4 ~
execute if entity @s[tag=Appear,scores={lifetime=500..}] as @e[type=villager,tag=ScrubShop] at @s run tp @s ~ ~-5 ~
execute if entity @s[tag=Appear,scores={lifetime=500..}] run kill @e[type=villager,tag=ScrubShop,distance=..2,sort=nearest,limit=1]
execute if entity @s[tag=Appear,scores={lifetime=500..}] run kill @s

#Slingshot
execute if entity @e[type=snowball,distance=..2] run tag @s add Appear

#Arrow
execute if entity @e[type=arrow,distance=..1.5] run tag @s add Appear

#Sound
execute if entity @s[scores={timer=35}] run playsound minecraft:block.dispenser.launch hostile @a ~ ~ ~ .6 1

#Hide Appear
execute if entity @a[distance=..30] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:105}}]}
execute unless entity @a[distance=..30] run data merge entity @s {ArmorItems:[{},{},{},{}]}
