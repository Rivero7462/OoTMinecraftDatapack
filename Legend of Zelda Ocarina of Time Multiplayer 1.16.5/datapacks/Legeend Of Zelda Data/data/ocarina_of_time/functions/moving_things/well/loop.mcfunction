#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/well/pots

#Bomb Dirt
#1
execute unless blocks -19 59 1347 -17 60 1349 -26 53 1349 all run fill -19 59 1347 -17 60 1349 minecraft:air
#2
execute unless blocks -45 59 1311 -43 60 1313 -51 58 1310 all run fill -45 60 1311 -43 59 1313 minecraft:air replace minecraft:coarse_dirt
execute unless blocks -45 59 1311 -43 60 1313 -51 58 1310 all run fill -45 60 1311 -43 59 1313 minecraft:air replace minecraft:mossy_cobblestone

#Navi
#1
execute unless block -31 55 1319 minecraft:gold_block if entity @a[x=-33,y=59,z=1318,dx=4,dy=1,dz=0,y_rotation=90..270] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This wall... It says something here... \"","color":"aqua"},{"text":"Danger above"},{"text":"\"... That's what it says.","color":"aqua"}]
execute unless block -31 55 1319 minecraft:gold_block if entity @a[x=-33,y=59,z=1318,dx=4,dy=1,dz=0,y_rotation=90..270] run fill -31 55 1319 -31 55 1319 minecraft:gold_block
#2
execute unless block 7 55 1319 minecraft:gold_block if entity @a[x=5,y=59,z=1318,dx=4,dy=1,dz=0,y_rotation=90..270] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This wall... It says something here... \"","color":"aqua"},{"text":"Danger below"},{"text":"\"... That's what it says.","color":"aqua"}]
execute unless block 7 55 1319 minecraft:gold_block if entity @a[x=5,y=59,z=1318,dx=4,dy=1,dz=0,y_rotation=90..270] run fill 7 55 1319 7 55 1319 minecraft:gold_block
#3
execute unless block -13 55 1312 minecraft:gold_block if entity @a[x=-15,y=59,z=1311,dx=6,dz=4] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This statue must be the source of all the water on this floor.","color":"aqua"}]
execute unless block -13 55 1312 minecraft:gold_block if entity @a[x=-15,y=59,z=1311,dx=6,dz=4] run fill -13 55 1312 -13 55 1312 minecraft:gold_block

#Water Level
execute unless block -11 55 1312 minecraft:gold_block if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]},x=-15,y=59,z=1311,dx=6,dz=4] run function ocarina_of_time:moving_things/well/remove_water
execute unless block -11 55 1312 minecraft:gold_block if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]},x=-15,y=59,z=1311,dx=6,dz=4] run fill -11 55 1312 -11 55 1312 minecraft:gold_block

#Enemies
function ocarina_of_time:moving_things/well/enemies/loop

#Compass
execute if data block -21 59 1344 {Items:[]} run fill -22 67 1345 -22 67 1345 minecraft:gold_block

#Bombs
execute as @e[type=area_effect_cloud,tag=Bomb4] at @s run function ocarina_of_time:moving_things/well/bomb

#Loot Tables
#Chest
execute if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block 21 59 1330 minecraft:chest{Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]} run data merge block 21 59 1330 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]}
execute unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block 21 59 1330 minecraft:chest{Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]} run data merge block 21 59 1330 {Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]}

execute if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""}}}]}] if block 18 59 1334 minecraft:chest{Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}}}]} run data merge block 18 59 1334 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]}
execute unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""}}}]}] if block 18 59 1334 minecraft:chest{Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]} run data merge block 18 59 1334 {Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}}}]}

#Regen Bushes
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -41 36 1314 -41 36 1314 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -38 36 1315 -38 36 1315 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -38 36 1317 -38 36 1317 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -41 36 1317 -41 36 1317 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -41 36 1319 -41 36 1319 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -38 36 1319 -38 36 1319 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -39 36 1321 -39 36 1321 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -39 36 1325 -39 36 1325 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -37 36 1328 -37 36 1328 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -31 36 1334 -31 36 1334 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -31 36 1336 -31 36 1336 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -33 36 1336 -33 36 1336 minecraft:fern

#Silver Rupees
execute if entity @e[type=armor_stand,tag=Skeleton1] if entity @e[type=armor_stand,tag=Skeleton2] if entity @e[type=armor_stand,tag=WellTorch1] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run fill -39 59 1350 -39 59 1350 minecraft:stone_pressure_plate replace minecraft:air

#Slide
execute as @a at @s if entity @s[x=-5,y=56,z=1326,dx=6,dz=0] run tp @s ~ ~ ~-1
execute as @a at @s if entity @s[x=-4,y=53,z=1325,dx=4,dz=0] run tp @s ~ ~ ~-1
execute as @a at @s if entity @s[x=-5,y=56,z=1320,dx=6,dz=0] run tp @s ~ ~ ~1
execute as @a at @s if entity @s[x=-4,y=53,z=1321,dx=4,dz=0] run tp @s ~ ~ ~1
execute as @a at @s if entity @s[x=-5,y=56,z=1321,dx=0,dz=4] run tp @s ~1 ~ ~
execute as @a at @s if entity @s[x=-4,y=53,z=1322,dx=0,dz=2] run tp @s ~1 ~ ~
execute as @a at @s if entity @s[x=1,y=55,z=1321,dx=0,dz=4] run tp @s ~-1 ~ ~
execute as @a at @s if entity @s[x=0,y=53,z=1322,dx=0,dz=2] run tp @s ~-1 ~ ~

#Locked Doors
#1
execute positioned 1 60 1330 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned 1 60 1330 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1 60 1330 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Well)"} destroy
#2
execute positioned -25 60 1330 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned -25 60 1330 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -25 60 1330 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Well)"} destroy
#3
execute positioned 21 60 1315 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run function ocarina_of_time:items/locked_door/south_iron
execute positioned 21 60 1315 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 21 60 1315 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Well)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Well)"} destroy

#Graves
#1
execute unless block -71 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch1,tag=LitTorch] run fill -70 60 1332 -71 60 1329 minecraft:air
execute unless block -71 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch1,tag=LitTorch] run fill -73 59 1329 -72 59 1332 minecraft:nether_brick_slab
execute unless block -71 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch1,tag=LitTorch] run particle minecraft:dust .5 0 1 1 -70.0 60 1331.0 .4 0 1 0 50 force
execute unless block -71 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch1,tag=LitTorch] run fill -71 57 1332 -71 57 1332 minecraft:gold_block
#2
execute unless block -71 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch2,tag=LitTorch] run fill -71 60 1339 -70 60 1336 minecraft:air
execute unless block -71 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch2,tag=LitTorch] run fill -68 59 1339 -69 59 1336 minecraft:nether_brick_slab
execute unless block -71 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch2,tag=LitTorch] run particle minecraft:dust .5 0 1 1 -70.0 60 1338.0 .4 0 1 0 50 force
execute unless block -71 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch2,tag=LitTorch] run summon minecraft:bat -70.0 60 1338.5 {Tags:["Keese29","Keese"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
execute unless block -71 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch2,tag=LitTorch] run summon minecraft:bat -70.0 60 1337.5 {Tags:["Keese30","Keese"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
execute unless block -71 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch2,tag=LitTorch] run fill -71 57 1336 -71 57 1336 minecraft:gold_block
#3
execute unless block -77 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch3,tag=LitTorch] run fill -77 60 1339 -76 60 1336 minecraft:air
execute unless block -77 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch3,tag=LitTorch] run fill -74 59 1336 -75 59 1339 minecraft:nether_brick_slab
execute unless block -77 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch3,tag=LitTorch] run particle minecraft:dust .5 0 1 1 -76.0 60 1338.0 .4 0 1 0 50 force
execute unless block -77 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch3,tag=LitTorch] run summon minecraft:wither_skeleton -76.0 59 1340 {Tags:["Gibdo","Gibdo2","Invisible"],Rotation:[0f,60f],Silent:1b,NoAI:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:15198183}}},{id:"leather_leggings",Count:1,tag:{display:{color:15198183}}},{id:"leather_chestplate",Count:1,tag:{display:{color:15198183}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Redead\"}",Id:[I;-475848018,-178109510,-1568674502,-1552720674],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFlZWNkMGQ0MDg1NDY1NGQ0YjExOGI4OGNiMGI0ODNhZGEwMTk1MDc0MzEyZTIyNGYyMDY0ZGQyMTUxYmNjZiJ9fX0="}]}}}}],PersistenceRequired:1b,Health:38,Attributes:[{Name:"generic.max_health",Base:38},{Name:"generic.attack_damage",Base:0}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:19}},{id:stone,Count:1b,tag:{CustomModelData:19}}],DeathLootTable:"ocarina_of_time:entities/floormaster",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}
execute unless block -77 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch3,tag=LitTorch] run fill -77 57 1336 -77 57 1336 minecraft:gold_block
#4
execute unless block -83 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch4,tag=LitTorch] run fill -83 60 1339 -82 60 1336 minecraft:air
execute unless block -83 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch4,tag=LitTorch] run fill -80 59 1336 -81 59 1339 minecraft:nether_brick_slab
execute unless block -83 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch4,tag=LitTorch] run particle minecraft:dust .5 0 1 1 -82.0 60 1338.0 .4 0 1 0 50 force
execute unless block -83 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch4,tag=LitTorch] run summon minecraft:item -82.0 60 1338.0 {Item:{Count:1b,id:"minecraft:lever",tag:{display:{Name:"\"Small Key (Well)\""}}}}
execute unless block -83 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch4,tag=LitTorch] run summon minecraft:bat -82.0 60 1338.5 {Tags:["Keese31","Keese"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
execute unless block -83 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch4,tag=LitTorch] run summon minecraft:bat -82.0 60 1337.5 {Tags:["Keese32","Keese"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
execute unless block -83 57 1336 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch4,tag=LitTorch] run fill -83 57 1336 -83 57 1336 minecraft:gold_block
#5
execute unless block -83 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch5,tag=LitTorch] run fill -83 60 1329 -82 60 1332 minecraft:air
execute unless block -83 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch5,tag=LitTorch] run fill -84 59 1329 -85 59 1332 minecraft:nether_brick_slab
execute unless block -83 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch5,tag=LitTorch] run particle minecraft:dust .5 0 1 1 -82.0 60 1331.0 .4 0 1 0 50 force
execute unless block -83 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch5,tag=LitTorch] run summon minecraft:bat -82.0 60 1331.5 {Tags:["Keese33","Keese"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
execute unless block -83 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch5,tag=LitTorch] run summon minecraft:bat -82.0 60 1330.5 {Tags:["Keese34","Keese"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
execute unless block -83 57 1332 minecraft:gold_block if entity @e[type=armor_stand,tag=WellTorch5,tag=LitTorch] run fill -83 57 1332 -83 57 1332 minecraft:gold_block

#Invisible Chest
execute positioned 33 59 1363 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone 38 59 1363 38 59 1363 33 59 1363
execute positioned 33 59 1363 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill 38 59 1362 38 59 1362 minecraft:gold_block
execute positioned 33 59 1363 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0

#Big Fairies
execute positioned 7 36 1311 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 7 36 1311 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 7 36 1311 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 7 36 1311 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

execute if entity @a[tag=GreenNaviSpot] positioned 7 36 1311 unless entity @a[distance=..5] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 7 36 1311 unless entity @a[distance=..5] run tag @a remove GreenNaviSpot
