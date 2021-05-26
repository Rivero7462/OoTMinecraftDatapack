#Vines
fill 905 57 -1101 905 76 -1101 minecraft:air replace minecraft:vine
fill 905 57 -1106 905 67 -1106 minecraft:air replace minecraft:vine
fill 905 57 -1113 905 73 -1113 minecraft:air replace minecraft:vine
fill 905 68 -1107 905 69 -1107 minecraft:air replace minecraft:vine
fill 905 76 -1102 905 76 -1112 minecraft:vine[east=true] replace minecraft:vine
fill 866 55 -1162 866 58 -1162 minecraft:air replace minecraft:vine
fill 886 70 -1190 885 70 -1190 minecraft:air replace minecraft:vine
fill 886 68 -1190 886 69 -1190 minecraft:air replace minecraft:vine
fill 885 54 -1192 885 69 -1192 minecraft:air replace minecraft:vine
fill 886 71 -1189 886 71 -1189 minecraft:air replace minecraft:vine
fill 885 72 -1191 885 72 -1190 minecraft:air replace minecraft:vine
fill 911 64 -1192 917 64 -1192 minecraft:air replace minecraft:vine
fill 918 69 -1192 918 72 -1192 minecraft:air replace minecraft:vine
fill 918 65 -1192 918 66 -1192 minecraft:air replace minecraft:vine
fill 917 65 -1192 917 65 -1192 minecraft:air replace minecraft:vine
fill 885 54 -1187 885 67 -1187 minecraft:air replace minecraft:vine
fill 885 71 -1191 885 71 -1191 minecraft:vine[east=true] replace minecraft:vine
fill 911 72 -1192 917 72 -1192 minecraft:vine[north=true] replace minecraft:vine
fill 866 41 -1169 866 44 -1169 minecraft:air replace minecraft:vine

#Enemies
function ocarina_of_time:moving_things/forest_temple/enemies/enemies

#Locked Doors
#1
execute positioned 877 59 -1155 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run function ocarina_of_time:items/locked_door/west
execute positioned 877 59 -1155 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 877 59 -1155 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Forest Temple)"} destroy
#2
execute positioned 849 85 -1165 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north
execute positioned 849 85 -1165 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 849 85 -1165 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Forest Temple)"} destroy
#3
execute positioned 859 85 -1200 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east
execute positioned 859 85 -1200 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 859 85 -1200 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Forest Temple)"} destroy
#4
execute positioned 936 85 -1200 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east
execute positioned 936 85 -1200 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 936 85 -1200 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Forest Temple)"} destroy
#5
execute positioned 946 85 -1165 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 946 85 -1165 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 946 85 -1165 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Forest Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Forest Temple)"} destroy

#Navi
execute unless block 897 53 -1152 minecraft:gold_block unless block 893 52 -1159 minecraft:redstone_block run function ocarina_of_time:moving_things/forest_temple/navi_fire_1
execute unless block 896 53 -1152 minecraft:gold_block if block 893 52 -1159 minecraft:redstone_block run function ocarina_of_time:moving_things/forest_temple/navi_fire_2
execute if entity @a[x=836,y=67,z=-1155,dx=2,dz=0] unless block 837 63 -1155 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"There are ","color":"aqua"},{"text":"arrows "},{"text":"painted on the floor!","color":"aqua"}]
execute if entity @a[x=836,y=67,z=-1155,dx=2,dz=0] unless block 837 63 -1155 minecraft:gold_block run fill 837 63 -1155 837 63 -1155 minecraft:gold_block
execute if entity @a[x=848,y=85,z=-1192,dx=2,dz=0] unless block 849 78 -1187 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Watch for the ","color":"aqua"},{"text":"shadows "},{"text":"of monsters that hang from the ceiling.","color":"aqua"}]
execute if entity @a[x=848,y=85,z=-1192,dx=2,dz=0] unless block 849 78 -1187 minecraft:gold_block run fill 849 78 -1187 849 78 -1187 minecraft:gold_block
execute if entity @a[x=944,y=60,z=-1197,dx=9,dz=0] unless block 947 56 -1197 minecraft:gold_block run tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" "},{"selector":"@p","color":"aqua"},{"text":", watch out! The ceiling is falling down!","color":"aqua"}]
execute if entity @a[x=944,y=60,z=-1197,dx=9,dz=0] unless block 947 56 -1197 minecraft:gold_block run fill 947 56 -1197 947 56 -1197 minecraft:gold_block

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/forest_temple/pots

#Big Push Blocks
execute as @a at @s if entity @s[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/forest_temple/big_push_block/big_push_block
execute if entity @a[tag=PushCoolDown] run scoreboard players add @a PushCoolDown 1
execute if entity @a[scores={PushCoolDown=10..}] run tag @a remove PushCoolDown
execute if entity @a[scores={PushCoolDown=10..}] run scoreboard players reset @a PushCoolDown

#Push Block Place
#1
execute if block 835 66 -1142 minecraft:pink_concrete_powder if block 833 68 -1144 minecraft:pink_concrete_powder at @a run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 2
execute if block 835 66 -1142 minecraft:pink_concrete_powder if block 833 68 -1144 minecraft:pink_concrete_powder run clone 838 65 -1130 835 70 -1132 833 66 -1144
#2
execute if block 853 73 -1147 minecraft:pink_concrete_powder if block 855 75 -1145 minecraft:pink_concrete_powder at @a run playsound minecraft:block.anvil.break ambient @a ~ ~ ~ 1 2
execute if block 853 73 -1147 minecraft:pink_concrete_powder if block 855 75 -1145 minecraft:pink_concrete_powder run clone 840 65 -1132 843 70 -1130 852 73 -1147

#Water Level
#Up
execute unless block 936 52 -1164 minecraft:water unless block 919 68 -1194 minecraft:air run function ocarina_of_time:moving_things/forest_temple/water_level_up
#Down
execute if block 919 68 -1194 minecraft:stone_pressure_plate[powered=true] unless block 919 68 -1194 minecraft:air at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["WaterLevel"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if block 919 68 -1194 minecraft:stone_pressure_plate[powered=true] run fill 919 68 -1194 919 68 -1194 minecraft:air
execute if block 919 68 -1194 minecraft:air run function ocarina_of_time:moving_things/forest_temple/water_level_down

#Scarecrow Spot
execute positioned 937 63 -1186 if entity @a[distance=..4] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 937 64 -1186 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 937 63 -1186 if entity @a[distance=..4] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 937 63 -1186 if entity @a[distance=..4] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand 937 61.8 -1186 {Tags:["ScarecrowSpot"],Rotation:[90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Time blocks
execute if entity @a[x=873,y=56,z=-1179,dx=8,dy=1,dz=8] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 879 58 -1173 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=873,y=56,z=-1179,dx=8,dy=1,dz=8] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=873,y=56,z=-1179,dx=8,dy=1,dz=8] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=876,y=56,z=-1177,dx=3,dz=4] unless entity @a[x=875,y=56,z=-1176,dx=0,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 937 63 -1186 unless entity @a[distance=..4] unless entity @a[x=873,y=56,z=-1179,dx=8,dy=1,dz=8] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 937 63 -1186 unless entity @a[distance=..4] unless entity @a[x=873,y=56,z=-1179,dx=8,dy=1,dz=8] run tag @a remove GreenNaviSpot

#Twisted Room 1
execute if entity @a[x=895,y=66,z=-1204,dx=6,dy=1,dz=6] run fill 842 91 -1191 842 91 -1191 minecraft:redstone_block
execute if block 853 79 -1204 minecraft:trapped_chest{Items:[]} run fill 853 79 -1211 853 79 -1211 minecraft:gold_block
execute as @e[type=item,x=853,y=79,z=-1204,dx=0,dz=0] positioned 853 79 -1204 unless entity @a[distance=..7] run kill @s
execute if block 849 84 -1164 minecraft:redstone_torch run fill 849 84 -1164 849 84 -1164 minecraft:air
execute as @e[type=item,x=849,y=84,z=-1167,dx=0,dy=1,dz=0] run tp @s 849 84 -1162
execute as @e[type=item,x=848,y=84,z=-1190,dx=2,dy=2,dz=0] run tp @s 849 84 -1193
#1
execute if entity @e[type=arrow,x=849,y=88,z=-1164,dx=0,dz=-0] unless entity @a[gamemode=spectator] if block 849 88 -1165 minecraft:light_gray_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom1] run summon minecraft:area_effect_cloud 849 84 -1190 {Tags:["TwistedRoom","TwistedRoom1"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @e[type=arrow,x=849,y=88,z=-1164,dx=0,dz=-0] if entity @a[gamemode=spectator] run kill @e[type=arrow]
#2
execute if entity @e[type=arrow,x=849,y=88,z=-1164,dx=0,dz=-0] unless entity @a[gamemode=spectator] if block 849 88 -1165 minecraft:white_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom2] run summon minecraft:area_effect_cloud 849 84 -1190 {Tags:["TwistedRoom","TwistedRoom2"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @e[type=arrow,x=849,y=88,z=-1164,dx=0,dz=-0] if entity @a[gamemode=spectator] run kill @e[type=arrow]
#3
execute if entity @a[x=849,y=85,z=-1167,dx=0,dz=0] if block 849 88 -1165 minecraft:light_gray_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom1] unless entity @e[type=area_effect_cloud,tag=TwistedRoom2] unless entity @e[type=area_effect_cloud,tag=TwistedRoom3] run summon minecraft:area_effect_cloud 815 51 -1162 {Tags:["TwistedRoom","TwistedRoom3"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#4
execute if entity @a[x=848,y=85,z=-1190,dx=2,dz=0] if block 849 88 -1165 minecraft:light_gray_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom1] unless entity @e[type=area_effect_cloud,tag=TwistedRoom2] unless entity @e[type=area_effect_cloud,tag=TwistedRoom4] run summon minecraft:area_effect_cloud 815 51 -1162 {Tags:["TwistedRoom","TwistedRoom4"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#Twisted Room 2
execute if entity @e[type=arrow,tag=Fire,x=936,y=87,z=-1154,dx=0,dz=0] run fill 936 87 -1154 936 87 -1154 minecraft:air
execute as @e[type=arrow,x=936,y=87,z=-1154,dx=0,dz=0] if block 936 87 -1154 minecraft:ice run kill @s
fill 946 84 -1164 946 84 -1164 minecraft:air
execute as @e[type=item,x=946,y=84,z=-1167,dx=0,dy=1,dz=0] run tp @s 946 84 -1162
execute as @e[type=item,x=945,y=84,z=-1190,dx=2,dy=2,dz=0] run tp @s 946 84 -1193
#1
execute if entity @e[type=arrow,x=936,y=87,z=-1154,dx=0,dz=-0] unless entity @a[gamemode=spectator] unless block 936 87 -1154 minecraft:ice if block 935 87 -1154 minecraft:light_gray_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom5] run summon minecraft:area_effect_cloud 946 84 -1190 {Tags:["TwistedRoom","TwistedRoom5"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @e[type=arrow,x=936,y=87,z=-1154,dx=0,dz=-0] if entity @a[gamemode=spectator] run kill @e[type=arrow]
#2
execute if entity @e[type=arrow,x=936,y=87,z=-1154,dx=0,dz=-0] unless entity @a[gamemode=spectator] unless block 936 87 -1154 minecraft:ice if block 935 87 -1154 minecraft:white_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom6] run summon minecraft:area_effect_cloud 946 84 -1190 {Tags:["TwistedRoom","TwistedRoom6"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @e[type=arrow,x=936,y=87,z=-1154,dx=0,dz=-0] if entity @a[gamemode=spectator] run kill @e[type=arrow]
#3
execute if entity @a[x=946,y=85,z=-1167,dx=0,dz=0] unless block 936 87 -1154 minecraft:ice if block 935 87 -1154 minecraft:white_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom5] unless entity @e[type=area_effect_cloud,tag=TwistedRoom6] unless entity @e[type=area_effect_cloud,tag=TwistedRoom7] run summon minecraft:area_effect_cloud 973 56 -1182 {Tags:["TwistedRoom","TwistedRoom7"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#4
execute if entity @a[x=945,y=85,z=-1190,dx=2,dz=0] unless block 936 87 -1154 minecraft:ice if block 935 87 -1154 minecraft:white_shulker_box unless entity @e[type=area_effect_cloud,tag=TwistedRoom5] unless entity @e[type=area_effect_cloud,tag=TwistedRoom6] unless entity @e[type=area_effect_cloud,tag=TwistedRoom8] run summon minecraft:area_effect_cloud 973 56 -1182 {Tags:["TwistedRoom","TwistedRoom8"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#Spinning Platform
execute positioned 946 79 -1154 if entity @a[distance=..15] as @e[type=area_effect_cloud,tag=ForestSpin] run function ocarina_of_time:moving_things/forest_temple/spinning_platforms
execute at @a if block ~ ~ ~ minecraft:smooth_stone run tp @a ~ ~1 ~
execute at @a if block ~ ~1 ~ minecraft:stone_bricks run tp @a ~ ~1 ~
execute at @a if block ~ ~ ~ minecraft:stone_bricks run tp @a ~ ~1 ~

#Falling Room
execute if block 948 61 -1171 minecraft:air run fill 948 61 -1171 948 61 -1171 minecraft:barrier
execute if entity @a[x=944,y=60,z=-1197,dx=9,dy=1,dz=31] as @e[type=area_effect_cloud,tag=FallCeiling] run tag @s add Fall
execute as @e[type=area_effect_cloud,tag=FallCeiling,tag=Fall] run function ocarina_of_time:moving_things/forest_temple/falling_ceiling
execute at @a positioned ~ ~1 ~ if entity @e[type=falling_block,distance=..0.8] run tag @a add ResetCeiling
execute at @a if block ~ ~ ~ minecraft:black_terracotta run tag @a add ResetCeiling
execute at @a if block ~ ~ ~ minecraft:black_terracotta run tag @a add ResetCeiling
execute if entity @a[tag=ResetCeiling] run tp @a 949.0 59 -1203 0 0
execute if entity @a[tag=ResetCeiling] run effect give @a minecraft:wither 1 2 true
execute if entity @a[tag=ResetCeiling] run tag @a remove ResetCeiling

#Eye Switch
#1
execute if block 911 63 -1168 minecraft:yellow_shulker_box as @e[type=arrow,x=910,y=63,z=-1168,dx=0,dz=0] run function ocarina_of_time:moving_things/forest_temple/eye_switch_1
execute if block 911 63 -1168 minecraft:yellow_shulker_box as @e[type=arrow,x=911,y=63,z=-1167,dx=0,dz=0] run function ocarina_of_time:moving_things/forest_temple/eye_switch_1
#2
execute if block 853 79 -1149 minecraft:yellow_shulker_box as @e[type=arrow,x=853,y=79,z=-1150,dx=0,dz=0] run function ocarina_of_time:moving_things/forest_temple/eye_switch_2

#Elevator
#Area effect cloud

#Hookshot
execute as @a[x=919,y=73,z=-1193,dx=0,dy=1,dz=1] run tp @s 919 70 -1192

#Slide Room
#Area effect cloud

#Boss Door
execute if entity @a[x=897,y=22,z=-1189,dx=2,dz=1] if entity @a[nbt={Inventory:[{tag:{ForestBossKey:1b}}]}] run fill 898 19 -1190 898 19 -1190 minecraft:gold_block
execute if entity @a[x=897,y=22,z=-1189,dx=2,dz=1] if entity @a[nbt={Inventory:[{tag:{ForestBossKey:1b}}]}] run fill 898 23 -1190 898 23 -1190 minecraft:magenta_glazed_terracotta[facing=south]
execute if entity @a[x=897,y=22,z=-1189,dx=2,dz=1] if entity @a[nbt={Inventory:[{tag:{ForestBossKey:1b}}]}] run clear @a minecraft:shears{ForestBossKey:1b}
execute if entity @a[x=897,y=22,z=-1189,dx=2,dz=0] if block 898 19 -1190 minecraft:gold_block run fill 898 23 -1190 898 23 -1190 minecraft:magenta_glazed_terracotta[facing=north]
execute if entity @a[x=897,y=22,z=-1189,dx=2,dz=0] if block 898 19 -1190 minecraft:gold_block run tp @a 898 22 -1193

#Boss
execute unless block 904 24 -1203 minecraft:gold_block if entity @a[x=901,y=28,z=-1211,dx=0,dz=12] run fill 904 24 -1207 904 24 -1207 minecraft:gold_block
execute unless block 904 24 -1203 minecraft:gold_block if block 904 24 -1207 minecraft:gold_block if entity @a[x=903,y=28,z=-1204,dx=1,dz=2] run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/forest_temple/boss/loop
execute if block 904 24 -1205 minecraft:gold_block unless entity @e[type=zombie,tag=PhantomGanon] run fill 904 24 -1203 904 24 -1203 minecraft:gold_block

#Teleporter
execute if block 904 24 -1204 minecraft:gold_block run particle minecraft:falling_dust light_blue_wool 1426 12.1 -661 .5 0 .5 1 1

#Compass
execute if data block 908 68 -1206 {Items:[]} run fill 908 65 -1204 908 65 -1204 minecraft:gold_block
