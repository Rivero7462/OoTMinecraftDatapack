execute as @a at @s if block ~ ~1 ~ minecraft:barrier run tp @s ~ ~ ~1

#Bombs
execute as @e[type=area_effect_cloud,tag=Bomb3] at @s run function ocarina_of_time:moving_things/dodongo_cavern/bomb
execute if entity @a[x=2145,y=34,z=1918,dx=2,dy=1,dz=14] run tp @a 2146 35 1934

#Platforms
execute as @a at @s if block ~ ~ ~ minecraft:smooth_red_sandstone run tp @s ~ ~1 ~
execute as @e[type=area_effect_cloud,tag=Platforms] run function ocarina_of_time:moving_things/dodongo_cavern/platforms

#Navi
execute if block 2213 50 1941 minecraft:light_weighted_pressure_plate if entity @a[x=2213,y=50,z=1941,dx=0,dz=0] run tag @e[type=area_effect_cloud,tag=Platforms] add 2
execute if block 2213 50 1941 minecraft:light_weighted_pressure_plate if entity @a[x=2213,y=50,z=1941,dx=0,dz=0] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"With that switch on, the moving ","color":"aqua"},{"text":"platform "},{"text":"goes higher. Now you can quickly reach the second floor!","color":"aqua"}]
execute if block 2213 50 1941 minecraft:light_weighted_pressure_plate if entity @a[x=2213,y=50,z=1941,dx=0,dz=0] run fill 2213 49 1941 2213 49 1941 minecraft:gold_block
execute if block 2213 50 1941 minecraft:light_weighted_pressure_plate if entity @a[x=2213,y=50,z=1941,dx=0,dz=0] run fill 2213 50 1941 2213 50 1941 minecraft:air

execute if entity @a[x=2191,y=35,z=1952,dx=2,dy=1,dz=1] unless block 2192 30 1953 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"It looks like there are many ","color":"aqua"},{"text":"lava pits"},{"text":" around here, so watch your step!","color":"aqua"}]
execute if entity @a[x=2191,y=35,z=1952,dx=2,dy=1,dz=1] unless block 2192 30 1953 minecraft:gold_block run fill 2192 30 1953 2192 30 1953 minecraft:gold_block

execute if entity @a[x=2221,y=51,z=1954,dx=1,dz=2] unless block 2222 48 1955 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"You never know what will be around the corner in these narrow paths... Use ","color":"aqua"},{"text":"F5 "},{"text":"to look in a different direction. This is a useful technique, isn't it?","color":"aqua"}]
execute if entity @a[x=2221,y=51,z=1954,dx=1,dz=2] unless block 2222 48 1955 minecraft:gold_block run fill 2222 48 1955 2222 48 1955 minecraft:gold_block

#Deku Stick Door
execute if entity @e[type=armor_stand,x=2229,y=37,z=1942,dx=0,dz=0,tag=LitTorch] if entity @e[type=armor_stand,x=2229,y=37,z=1933,dx=0,dz=0,tag=LitTorch] if entity @e[type=armor_stand,x=2229,y=37,z=1926,dx=0,dz=0,tag=LitTorch] unless block 2223 37 1941 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @e[type=armor_stand,x=2229,y=37,z=1942,dx=0,dz=0,tag=LitTorch] if entity @e[type=armor_stand,x=2229,y=37,z=1933,dx=0,dz=0,tag=LitTorch] if entity @e[type=armor_stand,x=2229,y=37,z=1926,dx=0,dz=0,tag=LitTorch] run fill 2223 37 1941 2223 37 1941 minecraft:stone_pressure_plate replace minecraft:air

#Door Gold Pressure Plate
execute at @a if block 2214 37 1941 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/dodongo_cavern/gold_pressure_plate

#Push Block Door
execute if entity @e[type=!item,x=2269,y=36,z=1955,dx=0,dz=0] run fill 2269 35 1951 2269 35 1951 minecraft:redstone_torch
execute unless entity @e[type=!item,x=2269,y=36,z=1955,dx=0,dz=0] run fill 2269 35 1951 2269 35 1951 minecraft:air

#Enemy Room Gold Pressure Plate
execute if entity @a[x=2146,y=53,z=1955,dx=0,dz=0] unless block 2146 50 1948 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @a[x=2146,y=53,z=1955,dx=0,dz=0] run fill 2146 50 1948 2146 50 1948 minecraft:stone_pressure_plate
execute if entity @a[x=2146,y=53,z=1955,dx=0,dz=0] run fill 2153 50 1955 2153 50 1955 minecraft:stone_pressure_plate
execute if entity @a[x=2146,y=53,z=1955,dx=0,dz=0] run fill 2146 52 1955 2146 52 1955 minecraft:gold_block
execute if entity @a[x=2146,y=53,z=1955,dx=0,dz=0] run fill 2146 53 1955 2146 53 1955 minecraft:air

#Fire Platforms
execute as @e[type=area_effect_cloud,tag=FirePlatform] run function ocarina_of_time:moving_things/dodongo_cavern/fire_platforms

#Eyes
execute if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},x=2194,y=47,z=1924,dx=1,dz=1,scores={timer=99..}] run fill 2195 46 1925 2193 47 1923 minecraft:red_concrete replace minecraft:black_wool
execute if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},x=2189,y=47,z=1924,dx=1,dz=1,scores={timer=99..}] run fill 2189 46 1925 2191 47 1923 minecraft:red_concrete replace minecraft:black_wool
execute if block 2189 46 1925 minecraft:red_concrete if block 2195 46 1925 minecraft:red_concrete run tag @e[type=area_effect_cloud,tag=Pots] add DodongoHead
execute unless block 2192 33 1931 minecraft:gold_block as @e[type=area_effect_cloud,tag=Pots,tag=DodongoHead] run function ocarina_of_time:moving_things/dodongo_cavern/dodongo_head

#BlockPush and Switch
execute if entity @a[x=2192,y=35,z=1897,dx=0,dz=0] run fill 2184 34 1897 2184 34 1897 minecraft:redstone_torch
execute unless entity @a[x=2192,y=35,z=1897,dx=0,dz=0] unless block 2192 35 1897 minecraft:pink_concrete_powder run fill 2184 34 1897 2184 34 1897 minecraft:air
execute if block 2192 35 1897 minecraft:pink_concrete_powder run fill 2184 34 1897 2184 34 1897 minecraft:redstone_torch

execute if block 2185 36 1904 minecraft:pink_concrete_powder run fill 2192 36 1895 2192 36 1895 minecraft:pink_concrete_powder
execute if block 2185 36 1904 minecraft:pink_concrete_powder run fill 2185 36 1904 2185 36 1904 minecraft:air

execute if block 2218 39 1872 minecraft:pink_concrete_powder run fill 2219 39 1872 2219 39 1872 minecraft:pink_concrete_powder
execute if block 2218 39 1872 minecraft:pink_concrete_powder run fill 2218 39 1872 2218 39 1872 minecraft:air

execute if block 2220 37 1872 minecraft:pink_concrete_powder run fill 2220 37 1872 2220 37 1872 minecraft:pink_concrete

#Ladder
execute if entity @e[type=zombie,tag=Armos,x=2146,y=50,z=1957,dx=0,dz=0] run fill 2146 50 1957 2146 50 1957 minecraft:air
execute unless entity @e[type=zombie,tag=Armos,x=2146,y=50,z=1957,dx=0,dz=0] run fill 2146 50 1957 2146 50 1957 minecraft:ladder[facing=south]

#Enemies
function ocarina_of_time:moving_things/dodongo_cavern/enemies/enemies

#Armos Room
execute if entity @a[x=2140,y=36,z=1947,dx=12,dz=12] unless block 2146 35 1947 minecraft:stone_pressure_plate unless entity @e[type=zombie,tag=Armos7] at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @a[x=2140,y=36,z=1947,dx=12,dz=12] unless block 2146 35 1947 minecraft:stone_pressure_plate unless entity @e[type=zombie,tag=Armos7] run fill 2146 35 1947 2146 35 1947 minecraft:stone_pressure_plate replace minecraft:air

#Secret wall
execute as @e[type=falling_block,tag=CavernWall] run data merge entity @s {Time:-999999999}

#Loot Tables
#Chest
execute if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block 2170 50 1927 minecraft:chest{Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]} run data merge block 2170 50 1927 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]}
execute unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block 2170 50 1927 minecraft:chest{Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]} run data merge block 2170 50 1927 {Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]}

#Regen Bushes
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 2174 50 1950 2174 50 1950 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 2261 46 1951 2261 46 1951 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 2229 47 1933 2229 47 1933 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 2185 36 1904 2185 36 1904 minecraft:fern

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/dodongo_cavern/pots

#Boss
execute unless block 2166 9 1896 minecraft:gold_block if entity @a[x=2168,y=28,z=1895,dx=4,dy=2,dz=3] run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/dodongo_cavern/boss/loop

#Compass
execute if data block 2146 35 1958 {Items:[]} run fill 2146 36 1962 2146 36 1962 minecraft:gold_block

#Scarecrow Spot
execute if entity @a[tag=Adult] if entity @a[x=2234,y=36,z=1951,dx=8,dz=5] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 2238.0 40.5 1950.0 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if entity @a[x=2234,y=36,z=1951,dx=8,dz=5] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] unless entity @a[x=2234,y=36,z=1951,dx=8,dz=5] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] unless entity @a[x=2234,y=36,z=1951,dx=8,dz=5] run tag @a remove GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[x=2234,y=36,z=1951,dx=8,dz=5] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand 2238.0 38.8 1950.0 {Tags:["ScarecrowSpot"],Rotation:[0f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}
