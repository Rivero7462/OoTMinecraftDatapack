#Water Levels
#1
execute if entity @a[x=1033,y=57,z=3022,dx=3,dz=2,nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run function ocarina_of_time:moving_things/water_temple/water_level/water_level_1
#2
execute if entity @a[x=1065,y=46,z=3030,dx=2,dz=2,nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run function ocarina_of_time:moving_things/water_temple/water_level/water_level_2
#3
execute if entity @a[x=1076,y=60,z=3020,dx=3,dz=2,nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run function ocarina_of_time:moving_things/water_temple/water_level/water_level_3

#Extra
execute if block 1044 53 3005 minecraft:water run fill 1043 50 3013 1041 48 3026 minecraft:water replace minecraft:air
execute if block 1044 53 3005 minecraft:air run fill 1043 50 3013 1041 48 3026 minecraft:air replace minecraft:water

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/water_temple/pots

#Enemies
function ocarina_of_time:moving_things/water_temple/enemies/loop

#Torch Door
#1
execute if entity @a[tag=DinFire,x=1031,y=36,z=3022,dx=6,dz=7] run fill 1031 37 3022 1031 37 3022 minecraft:torch
execute if entity @a[tag=DinFire,x=1031,y=36,z=3022,dx=6,dz=7] run fill 1031 37 3028 1031 37 3028 minecraft:torch

execute if block 1031 37 3022 minecraft:torch if block 1031 37 3028 minecraft:torch unless block 1031 36 3025 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 1031 37 3022 minecraft:torch if block 1031 37 3028 minecraft:torch run fill 1031 36 3025 1031 36 3025 minecraft:stone_pressure_plate replace minecraft:air
execute unless block 1031 37 3022 minecraft:torch unless block 1031 37 3028 minecraft:torch run fill 1031 36 3025 1031 36 3025 minecraft:air replace minecraft:stone_pressure_plate
#2
execute if entity @e[type=arrow,tag=Fire,x=1062,y=49,z=3041,dx=0,dz=0] run fill 1062 49 3041 1062 49 3041 minecraft:torch
execute if entity @a[tag=DinFire,x=1057,y=48,z=3041,dx=12,dz=2] run fill 1062 49 3041 1062 49 3041 minecraft:torch

execute if block 1062 49 3041 minecraft:torch unless block 1063 48 3041 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 1062 49 3041 minecraft:torch run fill 1063 48 3041 1063 48 3041 minecraft:stone_pressure_plate replace minecraft:air
execute unless block 1062 49 3041 minecraft:torch run fill 1063 48 3041 1063 48 3041 minecraft:air replace minecraft:stone_pressure_plate

#Locked Doors
#1
execute positioned 1063 39 3028 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south_acacia
execute positioned 1063 39 3028 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1063 39 3028 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Water Temple)"} destroy
#2
execute positioned 1080 49 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east_acacia
execute positioned 1080 49 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1080 49 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Water Temple)"} destroy
#3
execute positioned 1063 37 3071 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south_acacia
execute positioned 1063 37 3071 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1063 37 3071 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Water Temple)"} destroy
#4
execute positioned 1080 58 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east_acacia
execute positioned 1080 58 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1080 58 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Water Temple)"} destroy
#5
execute positioned 1127 58 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east_acacia
execute positioned 1127 58 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1127 58 3034 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Water Temple)"} destroy
#6
execute positioned 1089 40 3092 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south_acacia
execute positioned 1089 40 3092 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1089 40 3092 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Water Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Water Temple)"} destroy

#Eyes Switches
#1
execute if entity @e[type=arrow,x=1063,y=46,z=3018,dx=0,dz=0] run tag @e[type=area_effect_cloud,tag=HookGate] add Open
execute as @e[type=area_effect_cloud,tag=HookGate,tag=Open] at @s run function ocarina_of_time:moving_things/water_temple/eye_switch/eye_switch_1
execute as @e[type=area_effect_cloud,tag=Hookshot,x=1063,y=48,z=3012,dx=0,dz=0] run tag @s add RemoveGate
execute if entity @e[type=area_effect_cloud,tag=Hookshot,tag=RemoveGate] run fill 1064 50 3014 1062 48 3014 minecraft:air
execute unless entity @e[type=area_effect_cloud,tag=Hookshot,tag=RemoveGate] unless entity @e[type=area_effect_cloud,tag=HookGate,tag=Open] unless block 1062 49 3014 minecraft:iron_bars run fill 1064 50 3014 1062 48 3014 minecraft:iron_bars[east=true,west=true]
#2
execute at @a if block ~-.3 ~ ~ minecraft:iron_bars if entity @a[x=1100,y=44,z=3092,dx=1,dy=2,dz=3] run tp @a ~1 ~ ~
execute if entity @e[type=arrow,x=1104,y=46,z=3087,dx=0,dz=0.5] run tag @e[type=area_effect_cloud,tag=HookGate] add Open

#Switches
execute as @a at @s if block ~ ~ ~ minecraft:pink_stained_glass run tp @s ~ ~1 ~
execute as @a at @s if block ~ ~ ~ minecraft:white_concrete run tp @s ~ ~1 ~
execute as @e[type=zombie,tag=Tektite] at @s if block ~ ~ ~ minecraft:pink_stained_glass run tp @s ~ ~1 ~
#1
execute as @e[type=zombie,tag=Switch3] run function ocarina_of_time:moving_things/water_temple/switches/switch_1
#2
execute as @e[type=zombie,tag=Switch4] run function ocarina_of_time:moving_things/water_temple/switches/switch_2
#3
execute as @e[type=zombie,tag=Switch5] run function ocarina_of_time:moving_things/water_temple/switches/switch_3
#4
execute as @e[type=zombie,tag=Switch6] run function ocarina_of_time:moving_things/water_temple/switches/switch_4
#5
execute as @e[type=zombie,tag=Switch7] run function ocarina_of_time:moving_things/water_temple/switches/switch_5
#6
execute as @e[type=zombie,tag=Switch8] run function ocarina_of_time:moving_things/water_temple/switches/switch_6
#7
execute as @e[type=zombie,tag=Switch9] at @s run function ocarina_of_time:moving_things/water_temple/switches/switch_7

#Compass
execute if data block 1022 56 3047 {Items:[]} run fill 1018 57 3047 1018 57 3047 minecraft:gold_block

#Spikes
execute at @a if block ~ ~-.7 ~ minecraft:granite_wall unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute at @a if block ~ ~2 ~ minecraft:granite_wall unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true

#Bomb Wall
fill 1071 35 3006 1073 35 3008 minecraft:water replace minecraft:air

#Pressure Plate
#1
execute if block 1096 40 3007 minecraft:light_weighted_pressure_plate[power=1] run function ocarina_of_time:moving_things/water_temple/pressure_plate/pressure_plate_1
#2
execute if block 1059 26 3111 minecraft:stone_pressure_plate[powered=true] run function ocarina_of_time:moving_things/water_temple/pressure_plate/pressure_plate_2
execute unless block 1059 26 3111 minecraft:pink_concrete unless block 1059 26 3111 minecraft:stone_pressure_plate[powered=true] run function ocarina_of_time:moving_things/water_temple/pressure_plate/pressure_plate_3
execute if block 1059 26 3111 minecraft:pink_concrete run function ocarina_of_time:moving_things/water_temple/pressure_plate/pressure_plate_2
#3
execute if block 1081 39 3111 minecraft:light_weighted_pressure_plate[power=1] run tag @e[type=zombie,tag=Switch3] add Pressure
execute as @e[type=zombie,tag=Switch3,tag=Pressure] run function ocarina_of_time:moving_things/water_temple/pressure_plate/pressure_plate_4

#Big Push Blocks
execute as @a at @s store result score @s nearbyPushBlock1 run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered minecraft:pink_concrete force
execute as @a at @s if entity @s[scores={nearbyPushBlock1=1..,PushBlock=1..}] run function ocarina_of_time:moving_things/water_temple/big_push_block/big_push_block
execute if entity @a[tag=PushCoolDown] run scoreboard players add @a PushCoolDown 1
execute if entity @a[scores={PushCoolDown=10..}] run tag @a remove PushCoolDown
execute if entity @a[scores={PushCoolDown=10..}] run scoreboard players reset @a PushCoolDown
#1
execute if block 1087 37 3035 minecraft:pink_concrete if block 1085 39 3033 minecraft:pink_concrete run fill 1087 28 3035 1085 26 3033 minecraft:pink_concrete
execute if block 1087 37 3035 minecraft:pink_concrete if block 1085 39 3033 minecraft:pink_concrete if block 1083 39 3033 minecraft:water run fill 1087 37 3035 1085 39 3033 minecraft:water
execute if block 1087 37 3035 minecraft:pink_concrete if block 1085 39 3033 minecraft:pink_concrete if block 1083 39 3033 minecraft:air run fill 1087 37 3035 1085 39 3033 minecraft:air
#2
execute if block 1060 33 3110 minecraft:pink_concrete if block 1058 31 3112 minecraft:pink_concrete run fill 1058 26 3110 1060 28 3112 minecraft:pink_concrete
execute if block 1060 33 3110 minecraft:pink_concrete if block 1058 31 3112 minecraft:pink_concrete run fill 1058 33 3112 1060 31 3110 minecraft:air
#3
execute if block 1040 48 3015 minecraft:pink_concrete run fill 1041 48 3013 1043 48 3013 minecraft:air replace minecraft:barrier
execute if block 1038 48 3015 minecraft:pink_concrete run fill 1040 50 3017 1038 50 3015 minecraft:air

#Moving Water
#1
execute if entity @a[x=1088,y=24,z=3070,dx=5,dy=12,dz=5] at @a if block ~ ~ ~1 #ocarina_of_time:spike unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tp @a ~ ~ ~.1
execute if entity @a[x=1088,y=24,z=3075,dx=5,dy=12,dz=5] at @a if block ~1 ~ ~ #ocarina_of_time:spike unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tp @a ~.1 ~ ~
execute if entity @a[x=1093,y=24,z=3075,dx=5,dy=12,dz=5] at @a if block ~ ~ ~-1 #ocarina_of_time:spike unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tp @a ~ ~ ~-.1
execute if entity @a[x=1093,y=24,z=3070,dx=5,dy=12,dz=5] at @a if block ~-1 ~ ~ #ocarina_of_time:spike unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tp @a ~-.1 ~ ~
#2
execute at @a if block ~ ~ ~ minecraft:black_wool run effect give @a minecraft:wither 1 1 true
execute at @a if block ~ ~ ~ minecraft:black_wool run tp @a 1134 65 3119 0 0
execute if entity @a[x=1124,y=45,z=3133,dx=0,dy=3,dz=1] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1127,y=45,z=3133,dx=0,dy=3,dz=1] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1125,y=45,z=3132,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1125,y=45,z=3135,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1125,y=43,z=3133,dx=1,dy=5,dz=1] at @a run tp @a ~ ~-.3 ~
execute if entity @a[x=1121,y=40,z=3089,dx=0,dy=3,dz=1] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1124,y=40,z=3089,dx=0,dy=3,dz=1] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1122,y=40,z=3088,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1122,y=40,z=3091,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1122,y=38,z=3089,dx=1,dy=5,dz=1] at @a run tp @a ~ ~-.3 ~
execute if entity @a[x=1113,y=40,z=3108,dx=0,dy=3,dz=1] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1116,y=39,z=3108,dx=0,dy=4,dz=1] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1114,y=39,z=3107,dx=1,dy=4,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1114,y=39,z=3110,dx=1,dy=4,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1114,y=38,z=3108,dx=1,dy=5,dz=1] at @a run tp @a ~ ~-.3 ~
execute if entity @a[x=1109,y=39,z=3095,dx=0,dy=4,dz=1] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1112,y=39,z=3095,dx=0,dy=4,dz=1] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1110,y=39,z=3094,dx=1,dy=4,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1110,y=39,z=3097,dx=1,dy=4,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1110,y=37,z=3095,dx=1,dy=6,dz=1] at @a run tp @a ~ ~-.3 ~
execute if entity @a[x=1104,y=40,z=3089,dx=0,dy=3,dz=1] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1107,y=39,z=3089,dx=0,dy=4,dz=1] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1105,y=40,z=3088,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1105,y=39,z=3091,dx=1,dy=4,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1105,y=38,z=3089,dx=1,dy=5,dz=1] at @a run tp @a ~ ~-.3 ~
execute if entity @a[x=1101,y=40,z=3096,dx=0,dy=3,dz=1] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1104,y=40,z=3096,dx=0,dy=3,dz=1] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1102,y=41,z=3095,dx=1,dy=2,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1102,y=40,z=3098,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1102,y=39,z=3096,dx=1,dy=4,dz=1] at @a run tp @a ~ ~-.3 ~
#3
execute if entity @a[x=1054,y=32,z=3090,dx=15,dy=3,dz=3] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1072,y=32,z=3091,dx=0,dy=3,dz=1] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1070,y=32,z=3090,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1070,y=32,z=3093,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1070,y=31,z=3091,dx=1,dy=4,dz=1] at @a run tp @a ~ ~-.3 ~
execute if entity @a[x=1070,y=29,z=3091,dx=1,dz=1] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1070,y=29,z=3091,dx=1,dz=1] run tp @a 1063 36 3073 0 0
execute if entity @a[x=1057,y=32,z=3079,dx=15,dy=3,dz=3] at @a run tp @a ~-.15 ~ ~
execute if entity @a[x=1054,y=32,z=3080,dx=0,dy=3,dz=1] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1055,y=32,z=3079,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~.15
execute if entity @a[x=1055,y=32,z=3082,dx=1,dy=3,dz=0] at @a run tp @a ~ ~ ~-.15
execute if entity @a[x=1055,y=31,z=3080,dx=1,dy=4,dz=1] at @a run tp @a ~ ~-.3 ~
execute if entity @a[x=1055,y=29,z=3080,dx=1,dz=1] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1055,y=29,z=3080,dx=1,dz=1] run tp @a 1063 36 3073 0 0
execute if entity @a[x=1054,y=32,z=3083,dx=17,dy=3,dz=2] at @a run tp @a ~.15 ~ ~
execute if entity @a[x=1055,y=32,z=3086,dx=17,dy=3,dz=2] at @a run tp @a ~-.15 ~ ~

#Slide
execute as @a at @s if entity @s[x=1089,y=54.1,z=3029,dx=0,dz=10] run tp @s ~1 ~ ~
execute as @a at @s if entity @s[x=1090,y=39,z=3029,dx=14,dy=15,dz=10] if block ~ ~-.5 ~ minecraft:stone_stairs run tp @s ~1 ~ ~
execute as @a at @s if entity @s[x=1090,y=39,z=3029,dx=14,dy=15,dz=10] if block ~-.3 ~ ~ minecraft:stone_stairs run tp @s ~1 ~ ~
execute as @a at @s if entity @s[x=1090,y=39,z=3029,dx=14,dy=15,dz=10] if block ~ ~-.5 ~ minecraft:stone_brick_stairs run tp @s ~1 ~ ~
execute as @a at @s if entity @s[x=1090,y=39,z=3029,dx=14,dy=15,dz=10] if block ~-.3 ~ ~ minecraft:stone_brick_stairs run tp @s ~1 ~ ~
execute as @a at @s if entity @a[x=1109,y=28,z=3029,dx=13,dy=24,dz=10] if block ~ ~ ~ minecraft:water run tp @s ~-1 ~ ~
#fill 1122 51 3029 1110 39 3039 minecraft:stone_stairs[waterlogged=true,facing=east] replace minecraft:stone_stairs
#Pit
execute if entity @a[x=1105,y=29,z=3029,dx=4,dz=10] run effect give @a minecraft:wither 2 0 true
execute if entity @a[x=1105,y=29,z=3029,dx=4,dz=10] run tp @a 1082 57 3034 -90 0

#Moving Platform
execute as @e[type=area_effect_cloud,tag=WaterSlide] at @s run function ocarina_of_time:moving_things/water_temple/moving_platforms

#Scarecrow Spot
execute if entity @a[x=1075,y=61,z=3020,dx=4,dz=2] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1076 61.5 3020 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1075,y=61,z=3020,dx=4,dz=2] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=1075,y=61,z=3020,dx=4,dz=2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand 1076 59.8 3020 {Tags:["ScarecrowSpot"],Rotation:[90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Time blocks
execute if entity @a[x=1130,y=66,z=3125,dx=8,dz=6] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1134 69 3129 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1130,y=66,z=3125,dx=8,dz=6] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=1130,y=66,z=3125,dx=8,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=1133,y=65,z=3128,dx=2,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1

#Kill Navi
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=1075,y=61,z=3020,dx=4,dz=2] unless entity @a[x=1130,y=66,z=3125,dx=8,dz=6] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=1075,y=61,z=3020,dx=4,dz=2] unless entity @a[x=1130,y=66,z=3125,dx=8,dz=6] run tag @a remove GreenNaviSpot

#Rock
execute as @e[type=armor_stand,tag=Rock] at @s run function ocarina_of_time:moving_things/water_temple/rocks/loop

#Boss Door
execute if entity @a[x=1061,y=65,z=3073,dx=4,dz=2] if entity @a[nbt={Inventory:[{tag:{WaterBossKey:1b}}]}] run fill 1063 61 3074 1063 61 3074 minecraft:gold_block
execute if entity @a[x=1061,y=65,z=3073,dx=4,dz=2] if entity @a[nbt={Inventory:[{tag:{WaterBossKey:1b}}]}] run fill 1063 65 3076 1063 65 3076 minecraft:magenta_glazed_terracotta[facing=north]
execute if entity @a[x=1061,y=65,z=3073,dx=4,dz=2] if entity @a[nbt={Inventory:[{tag:{WaterBossKey:1b}}]}] run clear @a minecraft:shears{WaterBossKey:1b}
execute if entity @a[x=1062,y=65,z=3075,dx=2,dz=0] if block 1063 61 3074 minecraft:gold_block if block 1065 52 3092 minecraft:gold_block run tag @a add Boss
execute if entity @a[x=1062,y=65,z=3075,dx=2,dz=0] if block 1063 61 3074 minecraft:gold_block unless block 1065 52 3092 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"selector":"@p"},{"text":"! Look out! That isn't normal water over there!"}]
execute if entity @a[x=1062,y=65,z=3075,dx=2,dz=0] if block 1063 61 3074 minecraft:gold_block run tp @a 1064.0 64 3078

#Boss
execute unless block 1062 52 3092 minecraft:gold_block if entity @a[x=1054,y=62,z=3082,dx=19,dz=19] run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/water_temple/boss/loop

#Weird Slide
execute if entity @a[x=1060,y=59,z=3063,dx=6,dy=4,dz=8] unless entity @a[x=1066,y=59,z=3063,dx=0,dy=1,dz=0] unless entity @a[x=1060,y=59,z=3063,dx=0,dy=1,dz=0] at @a run tp @a ~ ~ ~-.2

#Spike area
execute if entity @a[x=1060,y=36,z=3064,dx=6,dz=0] at @a unless block ~ ~ ~-1 minecraft:granite_wall run tp @a ~ ~ ~-.1

#Extra length
execute positioned 1095 29 3073 if entity @e[type=area_effect_cloud,tag=Hookshot,distance=..1] run effect give @e[type=zombie,tag=Switch7] minecraft:wither 1 1 true

#Spikes
execute as @e[type=item] at @s if block ~ ~ ~ minecraft:granite_wall if block ~ ~1 ~ minecraft:water run tp @s ~ ~1 ~

#WaterFalls
execute if entity @a[x=1054,y=36,z=3090,dx=0,dz=3] at @a run tp @a ~1 ~ ~
execute if entity @a[x=1072,y=36,z=3079,dx=0,dz=3] at @a run tp @a ~-1 ~ ~
