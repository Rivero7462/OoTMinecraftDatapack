#Fires
fill -493 35 2039 -493 35 2039 minecraft:fire
fill -489 35 2039 -489 35 2039 minecraft:fire
fill -489 38 2050 -489 38 2050 minecraft:fire
fill -493 38 2050 -493 38 2050 minecraft:fire

#Enemies
function ocarina_of_time:moving_things/ganon_castle_underground/enemies/loop

#Torch
execute as @e[type=armor_stand,tag=GanonTorch] at @s run function ocarina_of_time:moving_things/ganon_castle_underground/torch

#Fires
#1
execute positioned -414 34 1855 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 0 1 1 0 normal
execute positioned -407 34 1862 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 0 1 1 0 normal
#2
execute positioned -559 32 1877 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 0 0 1 0 normal
execute positioned -566 32 1884 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 0 0 1 0 normal
#3
execute positioned -394 21 1970 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 0 0 1 1 0 normal
execute positioned -394 21 1978 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 0 0 1 1 0 normal
#4
execute positioned -412 31 2056 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 0 1 0.1 1 0 normal
execute positioned -419 31 2063 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 0 1 0.1 1 0 normal
#5
execute positioned -616 22 1978 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 1 0 1 0 normal
execute positioned -616 22 1970 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 1 0 1 0 normal
#6
execute positioned -542 32 2050 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 .7 0 1 0 normal
execute positioned -549 32 2043 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 .7 0 1 0 normal
#7
execute positioned -591 21 1978 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 1 0 1 0 normal
execute positioned -591 21 1970 if entity @a[distance=..20] run particle minecraft:entity_effect ~ ~ ~ 1 1 0 1 0 normal

#Blue Fire
#1
particle minecraft:soul_fire_flame -447 21.5 1974 .2 .4 .2 0 1
execute if entity @a[x=-448,y=21,z=1973,dx=2,dz=2] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Blue Fire\"}"},Unbreakable:1b,Damage:18,HideFlags:63,BlueFire:1b}
execute if entity @a[x=-448,y=21,z=1973,dx=2,dz=2] if entity @a[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run clear @a minecraft:glass_bottle 1

#Red Ice
execute unless block -434 20 1972 minecraft:red_stained_glass run fill -434 20 1976 -434 23 1972 minecraft:air replace minecraft:red_stained_glass
execute unless block -434 20 1974 minecraft:red_stained_glass run fill -434 20 1976 -434 23 1972 minecraft:air replace minecraft:red_stained_glass
execute unless block -434 20 1976 minecraft:red_stained_glass run fill -434 20 1976 -434 23 1972 minecraft:air replace minecraft:red_stained_glass
execute unless block -418 22 1959 minecraft:red_stained_glass run fill -417 25 1959 -419 22 1959 minecraft:air replace minecraft:red_stained_glass

#Time blocks
#1
execute if entity @a[x=-475,y=32,z=1939,dx=6,dz=5] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand -475 31 1939 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=-475,y=32,z=1939,dx=6,dz=5] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=-475,y=32,z=1939,dx=6,dz=5] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1
#2
execute if entity @a[x=-451,y=31,z=2023,dx=5,dz=3] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand -446 30 2023 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=-451,y=31,z=2023,dx=5,dz=3] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=-451,y=31,z=2023,dx=5,dz=3] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] lifetime 1

#Big Fairies
execute positioned -517 31 2013 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand -517 31 2013 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned -517 31 2013 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned -517 31 2013 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute positioned -517 31 2013 unless entity @a[distance=..5] if entity @a[tag=GreenNaviSpot] unless entity @a[x=-451,y=31,z=2023,dx=5,dz=3] unless entity @a[x=-475,y=32,z=1939,dx=6,dz=5] run kill @e[type=armor_stand,tag=GreenNavi]
execute positioned -517 31 2013 unless entity @a[distance=..5] if entity @a[tag=GreenNaviSpot] unless entity @a[x=-451,y=31,z=2023,dx=5,dz=3] unless entity @a[x=-475,y=32,z=1939,dx=6,dz=5] run tag @a remove GreenNaviSpot

#Pits
#1
execute at @a if block ~ ~-1 ~ minecraft:purple_stained_glass run effect give @a minecraft:wither 1 2 true
execute at @a if block ~ ~-1 ~ minecraft:purple_stained_glass run tp @a -471 31 1944 -145 ~
#2
execute at @a if entity @a[y=11,dy=0] if block ~ ~-1 ~ minecraft:black_wool run function ocarina_of_time:moving_things/ganon_castle_underground/enemies/time_room_1/reset_1
#3
execute at @a if entity @a[y=28,dy=0] if block ~ ~-.1 ~ minecraft:netherrack positioned -554 34 1889 as @e[type=armor_stand,tag=Medallions,distance=..1.5,sort=nearest,limit=1] unless block -514 30 1938 minecraft:orange_concrete run tag @s add ResetPlatform
execute at @a if entity @a[y=28,dy=0] if block ~ ~-.1 ~ minecraft:netherrack run effect give @a minecraft:wither 1 2 true
execute at @a if entity @a[y=28,dy=0] if block ~ ~-.1 ~ minecraft:netherrack run tp @a -511 31 1944 147 0
#4
execute at @a if entity @a[y=14,dy=0] if block ~ ~-1 ~ minecraft:black_wool run effect give @a minecraft:wither 1 2 true
execute at @a if entity @a[y=14,dy=0] if block ~ ~-1 ~ minecraft:black_wool run tp @a -450 30 2025 -45 0

#Fire Platforms
execute positioned -554 34 1889 as @e[type=armor_stand,tag=Medallions,distance=..1.5,sort=nearest,limit=1] at @a run function ocarina_of_time:moving_things/ganon_castle_underground/fire_platforms

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/ganon_castle_underground/pots

#Golden Gauntlets
execute if block -421 27 1888 minecraft:light_weighted_pressure_plate[power=1] run clone -432 28 1896 -432 28 1896 -432 31 1896
execute if block -421 27 1888 minecraft:light_weighted_pressure_plate[power=1] run fill -421 26 1888 -421 26 1888 minecraft:gold_block
execute if block -421 27 1888 minecraft:light_weighted_pressure_plate[power=1] run fill -421 27 1888 -421 27 1888 minecraft:air
execute as @a[nbt={Inventory:[{tag:{GoldenGauntlets:1b}}]}] run function ocarina_of_time:moving_things/ganon_castle_underground/gauntlets

#Shadow Door
execute if block -419 33 1867 minecraft:air unless block -438 31 1879 minecraft:heavy_weighted_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block -419 33 1867 minecraft:air unless block -438 31 1879 minecraft:heavy_weighted_pressure_plate run fill -438 30 1879 -438 30 1879 minecraft:iron_block
execute if block -419 33 1867 minecraft:air unless block -438 31 1879 minecraft:heavy_weighted_pressure_plate run fill -419 33 1867 -419 33 1867 minecraft:stone_pressure_plate

#Ice Door
execute if block -405 20 1974 minecraft:air unless block -418 22 1958 minecraft:heavy_weighted_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block -405 20 1974 minecraft:air unless block -418 22 1958 minecraft:heavy_weighted_pressure_plate run fill -418 21 1958 -418 21 1958 minecraft:iron_block
execute if block -405 20 1974 minecraft:air unless block -418 22 1958 minecraft:heavy_weighted_pressure_plate run fill -405 20 1974 -405 20 1974 minecraft:stone_pressure_plate replace minecraft:air

#Fix Red Glass
execute unless entity @a[tag=FireBarrier] unless block -565 27 1878 minecraft:gold_block run fill -564 35 1878 -566 35 1878 minecraft:red_stained_glass replace minecraft:air
execute unless entity @a[tag=FireBarrier] unless block -565 27 1878 minecraft:gold_block run fill -565 35 1877 -565 35 1879 minecraft:red_stained_glass replace minecraft:air
execute unless entity @a[tag=FireBarrier] unless block -565 27 1878 minecraft:gold_block run fill -565 32 1878 -565 38 1878 minecraft:red_stained_glass replace minecraft:air

#Light Arrow Barriers
#1
execute unless block -408 29 1856 minecraft:gold_block if entity @e[type=arrow,tag=LightArrow,x=-409,y=37,z=1855,dx=2,dz=2] run tag @a add ShadowBarrier
execute if entity @a[tag=ShadowBarrier] as @e[type=armor_stand,tag=BarrierImpa] run function ocarina_of_time:moving_things/ganon_castle_underground/barrier_cutscenes/shadow
#2
execute unless block -391 16 1974 minecraft:gold_block if entity @e[type=arrow,tag=LightArrow,x=-392,y=24,z=1973,dx=2,dz=2] run tag @a add WaterBarrier
execute if entity @a[tag=WaterBarrier] as @e[type=armor_stand,tag=BarrierRuto] run function ocarina_of_time:moving_things/ganon_castle_underground/barrier_cutscenes/water
#3
execute unless block -565 27 1878 minecraft:gold_block if entity @e[type=arrow,tag=LightArrow,x=-566,y=35,z=1877,dx=2,dz=2] run tag @a add FireBarrier
execute if entity @a[tag=FireBarrier] as @e[type=armor_stand,tag=BarrierDarunia] run function ocarina_of_time:moving_things/ganon_castle_underground/barrier_cutscenes/fire
#4
execute unless block -619 17 1974 minecraft:gold_block if entity @e[type=arrow,tag=LightArrow,x=-620,y=25,z=1973,dx=2,dz=2] run tag @a add LightBarrier
execute if entity @a[tag=LightBarrier] as @e[type=armor_stand,tag=BarrierRauru] run function ocarina_of_time:moving_things/ganon_castle_underground/barrier_cutscenes/light
#5
execute unless block -548 27 2049 minecraft:gold_block if entity @e[type=arrow,tag=LightArrow,x=-549,y=35,z=2048,dx=2,dz=2] run tag @a add SpiritBarrier
execute if entity @a[tag=SpiritBarrier] as @e[type=armor_stand,tag=BarrierNabooru] run function ocarina_of_time:moving_things/ganon_castle_underground/barrier_cutscenes/spirit
#6
execute unless block -413 26 2062 minecraft:gold_block if entity @e[type=arrow,tag=LightArrow,x=-414,y=34,z=2061,dx=2,dz=2] run tag @a add ForestBarrier
execute if entity @a[tag=ForestBarrier] as @e[type=armor_stand,tag=BarrierSaria] run function ocarina_of_time:moving_things/ganon_castle_underground/barrier_cutscenes/forest
#Final
execute unless block -492 21 1974 minecraft:gold_block unless entity @a[tag=ForestBarrier] unless entity @a[tag=SpiritBarrier] unless entity @a[tag=LightBarrier] unless entity @a[tag=ShadowBarrier] unless entity @a[tag=WaterBarrier] unless entity @a[tag=FireBarrier] if block -470 47 1974 minecraft:air if block -481 45 1957 minecraft:air if block -501 45 1957 minecraft:air if block -512 47 1974 minecraft:air if block -501 45 1991 minecraft:air if block -481 45 1991 minecraft:air run tag @a add RemoveBarrier
execute if entity @a[tag=RemoveBarrier] as @e[type=armor_stand,tag=BarrierNabooru] run function ocarina_of_time:moving_things/ganon_castle_underground/barrier_cutscenes/finish

#Barrier
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-505,y=33,z=1981,dx=28,dz=8] if block ~ ~-1 ~ minecraft:light_gray_terracotta run effect give @a minecraft:wither 1 2 true
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-505,y=33,z=1981,dx=28,dz=8] if block ~ ~-1 ~ minecraft:light_gray_terracotta run tp @a ~ ~ ~1
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-506,y=33,z=1968,dx=0,dz=12] if block ~ ~-1 ~ minecraft:light_gray_terracotta run effect give @a minecraft:wither 1 2 true
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-506,y=33,z=1968,dx=0,dz=12] if block ~ ~-1 ~ minecraft:light_gray_terracotta run tp @a ~-1 ~ ~
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-476,y=33,z=1968,dx=0,dz=12] if block ~ ~-1 ~ minecraft:light_gray_terracotta run effect give @a minecraft:wither 1 2 true
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-476,y=33,z=1968,dx=0,dz=12] if block ~ ~-1 ~ minecraft:light_gray_terracotta run tp @a ~1 ~ ~
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-506,y=33,z=1959,dx=28,dz=8] if block ~ ~-1 ~ minecraft:light_gray_terracotta run effect give @a minecraft:wither 1 2 true
execute unless block -492 21 1974 minecraft:gold_block at @a if entity @a[x=-506,y=33,z=1959,dx=28,dz=8] if block ~ ~-1 ~ minecraft:light_gray_terracotta run tp @a ~ ~ ~-1

execute if block -492 21 1974 minecraft:gold_block run fill -477 33 1976 -477 35 1972 minecraft:air replace minecraft:barrier
execute if block -492 21 1974 minecraft:gold_block run fill -492 33 1988 -490 34 1988 minecraft:air
execute unless block -492 21 1974 minecraft:gold_block unless entity @e[type=giant,tag=Barrier] run summon minecraft:giant -491 21 1974 {Tags:["Barrier","Invisible","Fire"],Rotation:[6f],NoAI:1b,Silent:1b,HandItems:[{id:"minecraft:cobblestone",Count:1b,PersistenceRequired:1b,tag:{CustomModelData:113}},{},{},{}],DeathLootTable:"ocarina_of_time:entities/nothing"}

#Ice Block
execute as @a at @s if entity @s[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/ganon_castle_underground/ice_block/loop
execute as @e[type=armor_stand,tag=IceBlock] at @s run function ocarina_of_time:moving_things/ganon_castle_underground/ice_block/ice_block
execute unless block 2028 26 2284 minecraft:light_blue_concrete if entity @a[x=2039,y=27,z=2280,dx=0,dz=2] run fill 2033 26 2299 2011 26 2274 minecraft:air replace minecraft:light_blue_concrete
execute unless block 2028 26 2284 minecraft:light_blue_concrete if entity @a[x=2039,y=27,z=2280,dx=0,dz=2] run fill 2026 26 2282 2028 26 2284 minecraft:light_blue_concrete
execute unless block 2028 26 2284 minecraft:light_blue_concrete if entity @a[x=2039,y=27,z=2280,dx=0,dz=2] run kill @e[tag=IceBlock]

#Pillars
#1
execute at @a if entity @a[tag=GoldenGauntlets,x=-549,y=33,z=1918,dx=2,dz=3] if block ~ ~ ~1 minecraft:obsidian run tag @a add ThrowPillar1
execute at @a if entity @a[tag=GoldenGauntlets,x=-549,y=33,z=1918,dx=2,dz=3] if block ~-1 ~ ~ minecraft:obsidian run tag @a add ThrowPillar1
execute if entity @a[tag=ThrowPillar1] as @e[type=armor_stand,tag=BarrierDarunia] run function ocarina_of_time:moving_things/ganon_castle_underground/pillars/pillar_1
#2
execute at @a if entity @a[tag=GoldenGauntlets,x=-521,y=21,z=1972,dx=1,dz=4] if block ~ ~ ~1 minecraft:obsidian run tag @a add ThrowPillar2
execute at @a if entity @a[tag=GoldenGauntlets,x=-521,y=21,z=1972,dx=1,dz=4] if block ~ ~ ~-1 minecraft:obsidian run tag @a add ThrowPillar2
execute at @a if entity @a[tag=GoldenGauntlets,x=-521,y=21,z=1972,dx=1,dz=4] if block ~-1 ~ ~ minecraft:obsidian run tag @a add ThrowPillar2
execute if entity @a[tag=ThrowPillar2] as @e[type=armor_stand,tag=BarrierRauru] run function ocarina_of_time:moving_things/ganon_castle_underground/pillars/pillar_2

#Silver Rupees
#1
execute positioned -554 34 1889 if entity @e[type=armor_stand,tag=Medallions,distance=..1.5,sort=nearest,limit=1] unless block -554 31 1889 minecraft:stone_pressure_plate if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run fill -554 31 1889 -554 31 1889 minecraft:stone_pressure_plate
#2
execute if entity @e[type=armor_stand,tag=Rock1] unless block -580 20 1974 minecraft:stone_pressure_plate if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run fill -580 20 1974 -580 20 1974 minecraft:stone_pressure_plate
#3
execute if entity @e[type=armor_stand,tag=BladeTrap25] unless block -530 31 2015 minecraft:stone_pressure_plate if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={RedRupee=0}] run fill -530 31 2015 -530 31 2015 minecraft:stone_pressure_plate
#4
execute if entity @e[type=armor_stand,tag=Fan1] unless block -424 30 2051 minecraft:stone_pressure_plate if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={RedRupee2=0}] run fill -424 30 2051 -424 30 2051 minecraft:stone_pressure_plate

#Locked Doors
#1
execute positioned -544 21 1974 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Ganon's Castle)\""}}}]} run function ocarina_of_time:items/locked_door/west_iron
execute positioned -544 21 1974 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Ganon's Castle)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -544 21 1974 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Ganon's Castle)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Ganon's Castle)"} destroy
#2
execute positioned -556 21 1974 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Ganon's Castle)\""}}}]} run function ocarina_of_time:items/locked_door/west_iron
execute positioned -556 21 1974 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Ganon's Castle)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -556 21 1974 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Ganon's Castle)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Ganon's Castle)"} destroy

#Lullaby
execute if entity @a[x=-555,y=20,z=1972,dx=4,dz=4] unless block -551 18 1970 minecraft:gold_block if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run clone -550 18 1970 -550 18 1970 -550 21 1970
execute if entity @a[x=-555,y=20,z=1972,dx=4,dz=4] unless block -551 18 1970 minecraft:gold_block if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run fill -551 18 1970 -551 18 1970 minecraft:gold_block

#Rock
execute as @e[type=armor_stand,tag=Rock] at @s run function ocarina_of_time:moving_things/ganon_castle_underground/rocks

#Web
execute if block -532 39 2032 minecraft:cobweb if entity @e[type=arrow,tag=Fire,x=-534,y=38,z=2030,dx=4,dz=4] run function ocarina_of_time:moving_things/ganon_castle_underground/webs

#Lights
#1
execute positioned -532 31 2032 if entity @a[distance=..12] unless block -532 39 2032 minecraft:cobweb positioned -532 41 2032 run function ocarina_of_time:moving_things/ganon_castle_underground/light

#Torch Room
execute if block -452 30 2023 minecraft:air as @e[type=armor_stand,tag=GanonTorch2] store result score @s BlueRupee if entity @e[type=armor_stand,tag=LitTorch,tag=GanonTorch2]
execute if block -452 30 2023 minecraft:air as @e[type=armor_stand,tag=GanonTorch2,scores={BlueRupee=5}] at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block -452 30 2023 minecraft:air as @e[type=armor_stand,tag=GanonTorch2,scores={BlueRupee=5}] run fill -452 30 2023 -452 30 2023 minecraft:stone_pressure_plate

#Hookshot Spot
execute if block -425 26 2041 minecraft:light_weighted_pressure_plate[power=1] run clone -431 29 2029 -431 31 2029 -434 28 2032
execute if block -425 26 2041 minecraft:light_weighted_pressure_plate[power=1] run fill -425 25 2041 -425 25 2041 minecraft:gold_block
execute if block -425 26 2041 minecraft:light_weighted_pressure_plate[power=1] run fill -425 26 2041 -425 26 2041 minecraft:air

#Fans
execute as @e[type=armor_stand,tag=Fan] run function ocarina_of_time:moving_things/ganon_castle_underground/fan/fan

#Invisible Chest
#1
execute positioned -550 31 2019 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone -556 32 2019 -556 32 2019 -550 31 2019
execute positioned -550 31 2019 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill -556 32 2020 -556 32 2020 minecraft:gold_block
execute positioned -550 31 2019 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0
