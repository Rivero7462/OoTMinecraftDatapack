#Lava
execute at @a if entity @a[y=33.9,dy=0] unless entity @a[x=2649,y=32,z=1939,dx=2,dy=2,dz=2] run effect give @a minecraft:wither 1 2 true
execute at @a if entity @a[tag=CraterSpawn1,y=33.4,dy=0] unless entity @a[x=2649,y=32,z=1939,dx=2,dy=2,dz=2] run tp @a 2732 56 1961 135 ~
execute at @a if entity @a[tag=CraterSpawn2,y=33.4,dy=0] unless entity @a[x=2649,y=32,z=1939,dx=2,dy=2,dz=2] run tp @a 2690 42 1981
execute at @a if entity @a[tag=CraterSpawn3,y=33.4,dy=0] unless entity @a[x=2649,y=32,z=1939,dx=2,dy=2,dz=2] run tp @a 2655 11 1940 90 ~
execute at @a if entity @a[tag=CraterSpawn4,y=33.9,dy=0] unless entity @a[x=2649,y=32,z=1939,dx=2,dy=2,dz=2] run tp @a 2690 37.5 1940 90 ~

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/death_mountain_crater/pots

#Adult/Child
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_things/death_mountain_crater/adult
execute unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/death_mountain_crater/child

#Chest Fire
fill 2698 35 1911 2696 35 1909 minecraft:air replace minecraft:fire

#Enemies
function ocarina_of_time:moving_things/death_mountain_crater/enemies/enemies

#Great Fairy Fountain
execute if entity @a[x=2723,y=42,z=2017,dx=0,dz=0] unless block 2723 40 2017 minecraft:gold_block run tellraw @a {"text":"The crest of the Royal Family of Hyrule is inscribed here."}
execute if entity @a[x=2723,y=42,z=2017,dx=0,dz=0] unless block 2723 40 2017 minecraft:gold_block run fill 2723 40 2017 2723 40 2017 minecraft:gold_block

#Scarecrow Spot
execute if entity @a[tag=Adult] positioned 2678 35 1910 if entity @a[distance=..10] unless entity @e[type=armor_stand,tag=GreenNavi1] run summon minecraft:armor_stand 2678 37 1910 {Tags:["GreenNavi","GreenNavi1"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] positioned 2678 35 1910 if entity @a[distance=..10] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[x=2676,y=36,z=1908,dx=6,dz=6] unless entity @e[type=armor_stand,tag=GreenNavi2] run summon minecraft:armor_stand 2696 37 1908 {Tags:["GreenNavi","GreenNavi2"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if entity @a[x=2676,y=36,z=1908,dx=6,dz=6] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] positioned 2678 35 1910 unless entity @a[distance=..10] run kill @e[type=armor_stand,tag=GreenNavi1]
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] unless entity @a[x=2676,y=36,z=1908,dx=6,dz=6] run kill @e[type=armor_stand,tag=GreenNavi2]
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] unless entity @a[x=2676,y=36,z=1908,dx=6,dz=6] positioned 2678 35 1910 unless entity @a[distance=..10] run tag @a remove GreenNaviSpot
execute if entity @a[tag=Adult] positioned 2678 35 1910 if entity @a[distance=..10] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot1] run summon minecraft:armor_stand 2678 34.8 1910 {Tags:["ScarecrowSpot","ScarecrowSpot1"],Rotation:[-90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if entity @a[x=2676,y=36,z=1908,dx=6,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot2] run summon minecraft:armor_stand 2696 34.8 1908 {Tags:["ScarecrowSpot","ScarecrowSpot2"],Rotation:[90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}


#Boulders
#1
execute unless block 2717 41 1946 minecraft:gold_block unless block 2716 41 1946 minecraft:gold_block run fill 2710 45 1965 2711 46 1966 minecraft:dead_horn_coral_block
execute unless block 2717 41 1946 minecraft:gold_block unless block 2716 41 1946 minecraft:gold_block run fill 2716 41 1946 2716 41 1946 minecraft:gold_block
execute if block 2717 41 1946 minecraft:air unless blocks 2710 45 1965 2711 46 1966 2719 45 1968 all run fill 2710 45 1965 2711 46 1966 minecraft:air
execute if block 2717 41 1946 minecraft:air unless blocks 2710 45 1965 2711 46 1966 2719 45 1968 all run fill 2717 41 1946 2717 41 1946 minecraft:gold_block
#2
execute unless block 2717 41 1945 minecraft:gold_block unless block 2716 41 1945 minecraft:gold_block run fill 2712 45 1971 2713 46 1972 minecraft:dead_horn_coral_block
execute unless block 2717 41 1945 minecraft:gold_block unless block 2716 41 1945 minecraft:gold_block run fill 2716 41 1945 2716 41 1945 minecraft:gold_block
execute if block 2717 41 1945 minecraft:air unless blocks 2712 45 1971 2713 46 1972 2719 45 1968 all run fill 2712 45 1971 2713 46 1972 minecraft:air
execute if block 2717 41 1945 minecraft:air unless blocks 2712 45 1971 2713 46 1972 2719 45 1968 all run fill 2717 41 1945 2717 41 1945 minecraft:gold_block

#Boulders
#fill 2716 41 1946 2716 41 1945 minecraft:air
