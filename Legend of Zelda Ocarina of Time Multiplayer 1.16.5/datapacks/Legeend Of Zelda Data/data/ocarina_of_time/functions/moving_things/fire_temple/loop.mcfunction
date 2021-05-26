fill 3126 112 1943 3126 112 1941 minecraft:iron_bars[north=true,south=true,west=true] replace minecraft:air

#Rock
execute as @e[type=armor_stand,tag=Rock] at @s run function ocarina_of_time:moving_things/fire_temple/rocks/loop

#Fire Walls
function ocarina_of_time:moving_things/fire_temple/fire_wall

#Enemies
function ocarina_of_time:moving_things/fire_temple/enemies/enemies

#Locked Doors
#1
execute positioned 3085 49 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east
execute positioned 3085 49 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3085 49 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy
#2
execute positioned 3137 50 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east
execute positioned 3137 50 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3137 50 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy
#3
execute positioned 3149 89 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/west
execute positioned 3149 89 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3149 89 1956 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy
#4
execute positioned 3113 110 1948 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 3113 110 1948 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3113 110 1948 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy
#5
execute positioned 3115 110 1964 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 3115 110 1964 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3115 110 1964 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy
#6
execute positioned 3085 114 1960 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/west
execute positioned 3085 114 1960 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3085 114 1960 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy
#7
execute positioned 3030 110 1964 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north
execute positioned 3030 110 1964 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3030 110 1964 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy
#8
execute positioned 3081 43 1959 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north
execute positioned 3081 43 1959 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3081 43 1959 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Fire Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Fire Temple)"} destroy

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/fire_temple/pots

#Pressure Plates
execute as @e[type=area_effect_cloud,tag=TimerFireWall] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/fire_wall

execute if block 3040 48 1974 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/1
execute if block 3112 48 2001 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/2
execute if block 3117 46 1914 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/3
execute if block 3131 89 1955 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/4
execute if block 3132 109 1977 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/5
execute if block 3115 109 1914 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/6
execute if block 3136 113 1948 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/fire_temple/pressure_plates/7

#Fires
fill 3071 49 1952 3071 49 1952 minecraft:fire
fill 3074 50 1952 3074 50 1952 minecraft:fire
fill 3077 49 1952 3077 49 1952 minecraft:fire
fill 3110 49 2001 3110 49 2001 minecraft:fire
fill 3114 49 2001 3114 49 2001 minecraft:fire
fill 3117 47 1912 3117 47 1912 minecraft:fire
fill 3117 47 1916 3117 47 1916 minecraft:fire
fill 3078 114 1962 3078 114 1962 minecraft:fire
fill 3066 114 1962 3066 114 1962 minecraft:fire
fill 3066 114 1958 3066 114 1958 minecraft:fire
fill 3078 114 1958 3078 114 1958 minecraft:fire
fill 3134 96 1970 3134 96 1970 minecraft:fire
fill 3115 110 1916 3115 110 1916 minecraft:fire
fill 3115 110 1912 3115 110 1912 minecraft:fire
fill 3053 110 1927 3053 110 1927 minecraft:fire
fill 3050 110 1924 3050 110 1924 minecraft:fire
fill 3069 43 1949 3069 43 1949 minecraft:fire
fill 3065 43 1949 3065 43 1949 minecraft:fire
fill 3069 43 1937 3069 43 1937 minecraft:fire
fill 3065 43 1937 3065 43 1937 minecraft:fire

#Moving Platforms
execute as @a at @s if block ~ ~ ~ minecraft:chiseled_red_sandstone run tp @s ~ ~1 ~
execute as @e[type=area_effect_cloud,tag=FirePlatforms] run function ocarina_of_time:moving_things/fire_temple/fire_platforms

#Scarecrow Spots
execute if entity @a[x=3112,y=114,z=1940,dx=10,dz=4] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 3114 122 1945 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=3112,y=114,z=1940,dx=10,dz=4] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=3112,y=114,z=1940,dx=10,dz=4] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand 3114 119.8 1945 {Tags:["ScarecrowSpot"],Rotation:[180f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Time blocks
execute if entity @a[x=3109,y=47,z=1924,dx=6,dy=5,dz=8] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 3112 50 1928 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=3109,y=47,z=1924,dx=6,dy=5,dz=8] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=3026,y=110,z=1953,dx=6,dy=5,dz=10] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 3031 112.5 1961 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=3026,y=110,z=1953,dx=6,dy=5,dz=10] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=3109,y=47,z=1924,dx=6,dy=5,dz=8] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=3111,y=47,z=1928,dx=2,dz=2] unless entity @a[x=875,y=56,z=-1176,dx=0,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1
execute if entity @a[x=3026,y=110,z=1953,dx=6,dy=5,dz=10] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=3030,y=109,z=1959,dx=2,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] lifetime 1

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=3112,y=114,z=1940,dx=10,dz=4] unless entity @a[x=3109,y=47,z=1924,dx=6,dy=5,dz=8] unless entity @a[x=3026,y=110,z=1953,dx=6,dy=5,dz=10] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=3112,y=114,z=1940,dx=10,dz=4] unless entity @a[x=3109,y=47,z=1924,dx=6,dy=5,dz=8] unless entity @a[x=3026,y=110,z=1953,dx=6,dy=5,dz=10] run tag @a remove GreenNaviSpot

#Cool Areas
execute if entity @a[x=3112,y=52,z=1922,dx=0,dz=0] run tag @a remove HotArea
execute if entity @a[x=3112,y=52,z=1924,dx=0,dz=0] run tag @a add HotArea

#Iron Bars
execute at @a if block ~ ~ ~ minecraft:iron_bars run effect give @a minecraft:levitation 1 1 true
execute at @a unless entity @a[x=3013,y=45,z=1955,dx=2,dy=10,dz=2] unless block ~ ~ ~ minecraft:iron_bars run effect clear @a minecraft:levitation

#Big Push Blocks
execute unless entity @a[x=3152,y=47,z=1954,dx=4,dy=15,dz=4] as @a at @s store result score @s nearbyPushBlock1 run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered minecraft:pink_concrete force
execute unless entity @a[x=3152,y=47,z=1954,dx=4,dy=15,dz=4] as @a at @s if entity @s[scores={nearbyPushBlock1=1..,PushBlock=1..}] run function ocarina_of_time:moving_things/fire_temple/big_push_block/big_push_block
execute if entity @a[tag=PushCoolDown] run scoreboard players add @a PushCoolDown 1
execute if entity @a[scores={PushCoolDown=10..}] run tag @a remove PushCoolDown
execute if entity @a[scores={PushCoolDown=10..}] run scoreboard players reset @a PushCoolDown

execute if block 3136 96 1964 minecraft:pink_concrete run fill 3134 88 1962 3136 90 1964 minecraft:pink_concrete
execute if block 3136 96 1964 minecraft:pink_concrete run fill 3136 96 1964 3134 94 1962 minecraft:air
execute if block 3139 88 1962 minecraft:pink_concrete run fill 3136 88 1963 3136 91 1963 minecraft:ladder[facing=west]
execute if block 3139 88 1962 minecraft:pink_concrete run fill 3138 89 1965 3138 91 1965 minecraft:ladder[facing=south]
execute if block 3139 88 1962 minecraft:pink_concrete run fill 3140 91 1963 3140 89 1963 minecraft:ladder[facing=east]
execute if block 3139 88 1962 minecraft:pink_concrete run fill 3138 91 1961 3138 89 1961 minecraft:ladder[facing=north]
execute if block 3139 88 1962 minecraft:pink_concrete run fill 3139 88 1962 3137 91 1964 minecraft:pink_concrete

#Platform Lifts
execute unless block 3154 44 1956 minecraft:gold_block if block 3155 55 1955 minecraft:pink_concrete run function ocarina_of_time:moving_things/fire_temple/quick_push_block
execute as @e[type=area_effect_cloud,tag=Pipes] at @a run function ocarina_of_time:moving_things/fire_temple/pipes

#Switch
#1
execute as @e[type=zombie,tag=Switch1] run function ocarina_of_time:moving_things/fire_temple/switch_1
#2
execute as @e[type=zombie,tag=Switch2] run function ocarina_of_time:moving_things/fire_temple/switch_2

#Navi
execute if entity @a[x=3051,y=109,z=1955,dx=3,dz=2] unless block 3056 109 1956 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"You can see down from here... Isn't that the room where we saw ","color":"aqua"},{"text":"Darunia"},{"text":"?","color":"aqua"}]
execute if entity @a[x=3051,y=109,z=1955,dx=3,dz=2] run fill 3056 109 1956 3056 109 1956 minecraft:gold_block

execute if entity @a[x=3040,y=114,z=1955,dx=0,dz=0] unless block 3041 111 1956 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This ","color":"aqua"},{"text":"switch "},{"text":"looks rusted.","color":"aqua"}]
execute if entity @a[x=3024,y=114,z=1956,dx=0,dz=0] unless block 3041 111 1956 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This ","color":"aqua"},{"text":"switch "},{"text":"looks rusted.","color":"aqua"}]
execute if entity @a[x=3040,y=114,z=1955,dx=0,dz=0] run fill 3041 111 1956 3041 111 1956 minecraft:gold_block
execute if entity @a[x=3024,y=114,z=1956,dx=0,dz=0] run fill 3041 111 1956 3041 111 1956 minecraft:gold_block

#Mimic
execute as @e[type=area_effect_cloud,tag=TimerFireWall] unless entity @e[type=zombie,tag=DoorMimic3] run fill 3010 110 1952 3012 112 1950 minecraft:air replace minecraft:chiseled_red_sandstone
execute as @e[type=area_effect_cloud,tag=TimerFireWall] unless entity @e[type=zombie,tag=DoorMimic3] run fill 3011 110 1951 3011 110 1951 minecraft:stone_pressure_plate replace minecraft:air

#Crates
execute as @a at @s store result score @s nearbyBomb run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered minecraft:oak_planks force
execute as @a at @s unless entity @s[tag=Holding] unless entity @e[type=armor_stand,tag=Crate,tag=Throw] if entity @s[scores={nearbyBomb=1..}] run function ocarina_of_time:items/crate/pickup
execute as @e[type=armor_stand,tag=Crate] at @s run function ocarina_of_time:items/crate/holding

#Crate Reset
execute if entity @a[x=3017,y=144,z=1937,dx=0,dz=0] run function ocarina_of_time:moving_things/fire_temple/crate_reset
execute if entity @a[x=3044,y=129,z=1951,dx=0,dz=0] run function ocarina_of_time:moving_things/fire_temple/crate_reset

#Crate Switch
execute if block 3039 130 1949 minecraft:oak_planks run fill 3039 129 1949 3039 129 1949 minecraft:oak_planks
execute if block 3039 130 1949 minecraft:oak_planks run fill 3039 130 1949 3039 130 1949 minecraft:air

execute if block 3040 129 1949 minecraft:oak_planks run fill 3039 129 1949 3039 129 1949 minecraft:oak_planks
execute if block 3040 129 1949 minecraft:oak_planks run fill 3040 129 1949 3040 129 1949 minecraft:air

execute if block 3039 129 1950 minecraft:oak_planks run fill 3039 129 1949 3039 129 1949 minecraft:oak_planks
execute if block 3039 129 1950 minecraft:oak_planks run fill 3039 129 1950 3039 129 1950 minecraft:air

execute if block 3038 129 1949 minecraft:oak_planks run fill 3039 129 1949 3039 129 1949 minecraft:oak_planks
execute if block 3038 129 1949 minecraft:oak_planks run fill 3038 129 1949 3038 129 1949 minecraft:air

execute if block 3039 129 1948 minecraft:oak_planks run fill 3039 129 1949 3039 129 1949 minecraft:oak_planks
execute if block 3039 129 1948 minecraft:oak_planks run fill 3039 129 1948 3039 129 1948 minecraft:air

execute unless block 3039 129 1949 minecraft:oak_planks run fill 3039 129 1949 3039 129 1949 minecraft:stone_pressure_plate replace minecraft:air

execute if block 3039 129 1949 minecraft:oak_planks if block 3043 129 1951 minecraft:iron_door[facing=west] at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 3039 129 1949 minecraft:oak_planks if block 3043 129 1951 minecraft:iron_door[facing=west] run clone 3046 129 1943 3047 130 1944 3043 129 1950
execute if entity @a[x=3039,y=129,z=1949,dx=0,dz=0] if block 3043 129 1951 minecraft:iron_door[facing=west] at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @a[x=3039,y=129,z=1949,dx=0,dz=0] if block 3043 129 1951 minecraft:iron_door[facing=west] run clone 3046 129 1943 3047 130 1944 3043 129 1950
execute unless block 3039 129 1949 minecraft:oak_planks unless entity @a[x=3039,y=129,z=1949,dx=0,dz=0] unless block 3043 129 1951 minecraft:iron_door[facing=west] at @a run playsound minecraft:block.iron_door.close block @a ~ ~ ~ 1
execute unless block 3039 129 1949 minecraft:oak_planks unless entity @a[x=3039,y=129,z=1949,dx=0,dz=0] unless block 3043 129 1951 minecraft:iron_door[facing=west] run clone 3044 129 1941 3045 130 1942 3043 129 1950

#Hammer Spots
execute unless block 3018 150 1948 minecraft:polished_granite run fill 3019 150 1949 3017 150 1947 minecraft:air
execute unless block 3028 144 1935 minecraft:polished_granite if block 3031 142 1936 minecraft:orange_concrete run fill 3026 143 1933 3042 143 1949 minecraft:air replace minecraft:oak_planks
execute unless block 3028 144 1935 minecraft:polished_granite run fill 3027 142 1934 3042 142 1949 minecraft:air replace minecraft:orange_concrete

execute unless block 3043 129 1956 minecraft:polished_granite run fill 3044 129 1957 3042 129 1955 minecraft:air
execute unless block 3043 129 1956 minecraft:polished_granite run clone 3037 102 1955 3038 104 1957 3043 109 1955

execute unless block 3048 114 1956 minecraft:polished_granite run fill 3049 114 1955 3047 59 1957 minecraft:air
execute unless block 3048 114 1956 minecraft:polished_granite run fill 3047 47 1957 3049 47 1955 minecraft:orange_terracotta
execute unless block 3048 114 1956 minecraft:polished_granite run fill 3047 46 1957 3049 42 1955 minecraft:chiseled_red_sandstone

#Hammer Switches
execute unless block 3040 114 1955 minecraft:heavy_weighted_pressure_plate unless block 3039 114 1956 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute unless block 3040 114 1955 minecraft:heavy_weighted_pressure_plate run fill 3040 113 1955 3040 113 1955 minecraft:iron_block
execute unless block 3040 114 1955 minecraft:heavy_weighted_pressure_plate run fill 3039 114 1956 3039 114 1956 minecraft:stone_pressure_plate replace minecraft:air

execute unless block 3024 114 1956 minecraft:heavy_weighted_pressure_plate if block 3033 109 1958 minecraft:iron_bars run function ocarina_of_time:moving_things/fire_temple/pressure_plates/8
execute unless block 3067 42 1937 minecraft:heavy_weighted_pressure_plate if block 3068 42 1940 minecraft:iron_bars run function ocarina_of_time:moving_things/fire_temple/pressure_plates/9

#Eye Switch
execute if entity @e[type=arrow,x=3109,y=117,z=1960,dx=1,dz=1] unless block 3107 109 1957 minecraft:stone_pressure_plate run fill 3109 117 1961 3109 117 1961 minecraft:white_shulker_box
execute if entity @e[type=arrow,x=3109,y=117,z=1960,dx=1,dz=1] unless block 3107 109 1957 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @e[type=arrow,x=3109,y=117,z=1960,dx=1,dz=1] run fill 3107 109 1957 3107 109 1957 minecraft:stone_pressure_plate replace minecraft:air

#Boss Door
execute if entity @a[x=3038,y=49,z=1955,dx=1,dz=2] if entity @a[nbt={Inventory:[{tag:{FireBossKey:1b}}]}] run fill 3037 45 1956 3037 45 1956 minecraft:gold_block
execute if entity @a[x=3038,y=49,z=1955,dx=1,dz=2] if entity @a[nbt={Inventory:[{tag:{FireBossKey:1b}}]}] run fill 3037 49 1956 3037 49 1956 minecraft:magenta_glazed_terracotta[facing=east]
execute if entity @a[x=3038,y=49,z=1955,dx=1,dz=2] if entity @a[nbt={Inventory:[{tag:{FireBossKey:1b}}]}] run clear @a minecraft:shears{FireBossKey:1b}
execute if entity @a[x=3038,y=49,z=1955,dx=0,dz=2] if block 3037 45 1956 minecraft:gold_block run fill 3037 49 1956 3037 49 1956 minecraft:magenta_glazed_terracotta[facing=west]
execute if entity @a[x=3038,y=49,z=1955,dx=0,dz=2] if block 3037 45 1956 minecraft:gold_block run tp @a 3035 48 1956

#Boss
execute unless block 3008 40 1954 minecraft:gold_block if entity @a[x=3019,y=45,z=1954,dx=3,dz=4] run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/fire_temple/boss/loop

#Compass
execute if data block 3057 109 1920 {Items:[]} run fill 3059 109 1918 3059 109 1918 minecraft:gold_block

#Slow Fire Wall
execute as @e[type=armor_stand,tag=SlowFireWall] at @s run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/loop

execute if entity @a[x=3115,y=109,z=1965,dx=0,dz=0] run tag @a add LeftFireWall
execute if entity @a[x=3110,y=113,z=1942,dx=0,dz=0] run tag @a add RightFireWall

execute if entity @a[tag=RightFireWall,x=3098,y=109,z=1937,dx=5,dy=5,dz=4] unless entity @e[type=armor_stand,tag=SlowFireWall] run summon minecraft:armor_stand 3106.1 110 1937.4 {Tags:["SlowFireWall","Main","Right","SummonSlowFire"],Rotation:[-143f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}
execute if entity @a[tag=RightFireWall,x=3103,y=109,z=1941,dx=3,dy=5,dz=7] unless entity @e[type=armor_stand,tag=SlowFireWall] run summon minecraft:armor_stand 3106.1 110 1937.4 {Tags:["SlowFireWall","Main","Right","SummonSlowFire"],Rotation:[-143f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}
execute if entity @a[tag=LeftFireWall,x=3101,y=109,z=1964,dx=6,dy=5,dz=6] unless entity @e[type=armor_stand,tag=SlowFireWall] run summon minecraft:armor_stand 3105 110 1974 {Tags:["SlowFireWall","Main","Left","SummonSlowFire"],Rotation:[135f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}
execute if entity @a[tag=LeftFireWall,x=3096,y=109,z=1970,dx=5,dy=5,dz=6] unless entity @e[type=armor_stand,tag=SlowFireWall] run summon minecraft:armor_stand 3105 110 1974 {Tags:["SlowFireWall","Main","Left","SummonSlowFire"],Rotation:[135f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}],DisabledSlots:4144959}

execute if entity @a[x=3105,y=109,z=1957,dx=0,dz=0] run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/reset
execute if entity @a[x=3084,y=113,z=1960,dx=0,dz=0] run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/reset
execute if entity @a[x=3115,y=109,z=1963,dx=0,dz=0] run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/reset
execute if entity @a[x=3112,y=113,z=1942,dx=0,dz=0] run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/reset
