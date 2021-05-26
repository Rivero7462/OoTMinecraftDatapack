#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run time add 10
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[tag=!StaffRole,scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field_morning
execute if entity @a[tag=!StaffRole,scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field

#Bombs
execute as @e[type=area_effect_cloud,tag=Bomb2] at @s if entity @a[tag=InDeathMountain] run function ocarina_of_time:moving_things/death_mountain/bomb

#Rolling Goron
execute as @e[type=armor_stand,tag=Goron2] at @s run function ocarina_of_time:moving_things/death_mountain/rolling_goron/rolling_goron
execute unless entity @a[tag=Adult] unless entity @e[type=armor_stand,tag=Goron2] run summon minecraft:armor_stand 2033 111.9 1454 {Rotation:[0f],Small:0b,NoGravity:1b,ShowArms:1b,Invisible:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512},Damage:0}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}},display:{Name:"{\"text\":\"Goron\"}"}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:9}},{id:stone,Count:1b,tag:{CustomModelData:9}}],DisabledSlots:4144959,Pose:{Head:[90f,0f,0f],Body:[-45f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]},CustomName:"\"Goron\"",CustomNameVisible:0,Tags:["Goron","Goron2","Npc"]}

#New Text
execute as @a at @s if entity @s[tag=MountainText] run function ocarina_of_time:moving_things/death_mountain/new_text

#Great Fairy Fountain
execute if entity @a[x=2028,y=127,z=1313,dx=0,dz=0] unless block 2028 125 1313 minecraft:gold_block run tellraw @a {"text":"The crest of the Royal Family of Hyrule is inscribed here."}
execute if entity @a[x=2028,y=127,z=1313,dx=0,dz=0] unless block 2028 125 1313 minecraft:gold_block run fill 2028 125 1313 2028 125 1313 minecraft:gold_block

#Owl
execute as @e[type=armor_stand,tag=OwlStand9] at @s run tp @s ~ ~ ~ facing entity @p
execute unless entity @e[type=area_effect_cloud,tag=Progress,tag=HalfMagic] unless entity @e[type=area_effect_cloud,tag=Progress,tag=FullMagic] run scoreboard players set @e[type=armor_stand,tag=OwlStand9] text 1
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=HalfMagic] run scoreboard players set @e[type=armor_stand,tag=OwlStand9] text 2
execute if entity @e[type=area_effect_cloud,tag=Progress,tag=FullMagic] run scoreboard players set @e[type=armor_stand,tag=OwlStand9] text 2
execute as @e[type=armor_stand,tag=OwlFly] at @s run function ocarina_of_time:moving_things/death_mountain/owl
execute if entity @a[tag=Fly] unless entity @e[type=area_effect_cloud,tag=Fly] run summon minecraft:area_effect_cloud 2026.505 158.00000 1347.643 {Tags:["Fly"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=Fly] at @s run function ocarina_of_time:moving_things/death_mountain/fly

#Meteors
execute as @e[type=area_effect_cloud,tag=Meteor] at @a unless block 2021 100 1406 minecraft:gold_block if entity @a[tag=Adult,x=2018,y=113,z=1364,dx=14,dy=14,dz=64] run function ocarina_of_time:moving_things/death_mountain/meteor/meteor_1
execute as @e[type=area_effect_cloud,tag=Meteor] at @a unless entity @a[tag=Adult] if entity @a[x=2018,y=113,z=1364,dx=14,dy=14,dz=64] run function ocarina_of_time:moving_things/death_mountain/meteor/meteor_1
execute as @e[type=area_effect_cloud,tag=Meteor] unless entity @a[x=2018,y=113,z=1364,dx=14,dy=14,dz=64] run function ocarina_of_time:moving_things/death_mountain/meteor/meteor_2
execute as @e[type=wither_skull,tag=Meteor] run scoreboard players add @s timer 1
execute as @e[type=wither_skull,tag=Meteor,scores={timer=50..}] run kill @s
fill 2031 127 1359 2022 152 1359 minecraft:ladder[facing=south] replace minecraft:air

#Bug Rock
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/death_mountain/rock

#Adult/Child
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_things/death_mountain/adult
execute unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/death_mountain/child

#Rolling Rocks
#1
execute if entity @a[tag=Adult] if block 2010 112 1441 minecraft:smooth_red_sandstone unless entity @e[type=armor_stand,tag=Rock1] run summon minecraft:armor_stand 2009 113 1442 {NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[-90f],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:grass_path",Count:1},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Tags:["Rock1","Rock"]}
execute as @e[type=armor_stand,tag=Rock1] at @s if entity @a[tag=Adult] run function ocarina_of_time:moving_things/death_mountain/rolling_rock_1
execute unless entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Rock1]
#2
execute if entity @a[tag=Adult] if block 2010 112 1441 minecraft:smooth_red_sandstone unless entity @e[type=armor_stand,tag=Rock2] run summon minecraft:armor_stand 2017 126.75 1461 {NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[-90f],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:grass_path",Count:1},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Tags:["Rock2","Rock"]}
execute as @e[type=armor_stand,tag=Rock2] at @s if entity @a[tag=Adult] run function ocarina_of_time:moving_things/death_mountain/rolling_rock_2
execute unless entity @a[tag=Adult] run kill @e[type=armor_stand,tag=Rock2]

#Goron City Final
execute if entity @a[tag=FinalDeathMountain] run fill 2021 100 1406 2021 100 1406 minecraft:gold_block
execute if block 2021 100 1406 minecraft:gold_block run tag @a remove FinalDeathMountain

#Mountain Ring
execute unless entity @a[tag=Adult] run fill 1976 204 1339 2084 204 1285 minecraft:smooth_quartz replace minecraft:red_concrete
execute unless entity @a[tag=Adult] run fill 2084 204 1284 1976 204 1231 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult,tag=MountainRing] run fill 1976 204 1339 2084 204 1285 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult,tag=MountainRing] run fill 2084 204 1284 1976 204 1231 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult] unless entity @a[tag=MountainRing] run fill 1976 204 1339 2084 204 1285 minecraft:red_concrete replace minecraft:smooth_quartz
execute if entity @a[tag=Adult] unless entity @a[tag=MountainRing] run fill 2084 204 1284 1976 204 1231 minecraft:red_concrete replace minecraft:smooth_quartz

#Big Fairies
execute positioned 2031 107 1477 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2031 107 1477 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 2031 107 1477 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 2031 107 1477 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon
execute positioned 2023 67 1471 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2023 67 1471 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 2023 67 1471 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 2023 67 1471 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 2023 67 1471 unless entity @a[distance=..5] positioned 2031 107 1477 unless entity @a[distance=..5] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 2023 67 1471 unless entity @a[distance=..5] positioned 2031 107 1477 unless entity @a[distance=..5] run tag @a remove GreenNaviSpot

#Grotto
execute if entity @a[x=2025,y=109,z=1428,dx=8,dy=1,dz=8] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill 2029 109 1432 2029 109 1432 minecraft:air
execute if entity @a[tag=ShardAgony,x=2025,y=109,z=1428,dx=8,dy=1,dz=8] run tag @a add ShardAgonyStart
execute unless entity @a[tag=ShardAgony,x=2025,y=109,z=1428,dx=8,dy=1,dz=8] run tag @a remove ShardAgonyStart
