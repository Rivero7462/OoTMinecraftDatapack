#Sit/Stand
execute if entity @a[scores={time=13001..23000}] unless entity @s[tag=Wait] run tp @s ~ ~-.7 ~
execute unless entity @a[scores={time=13001..23000}] if entity @s[tag=Wait] run tag @s add GetUp
execute if entity @s[tag=GetUp] unless block ~ ~ ~ minecraft:air run tp @s ~ ~.7 ~
execute if entity @s[tag=GetUp] if block ~ ~ ~ minecraft:air run tag @s remove GetUp

execute if entity @a[scores={time=13001..23000}] unless entity @s[tag=Wait] run data merge entity @s {Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f],RightArm:[20f,0f,0f],LeftArm:[20f,0f,0f],Body:[-10f,0f,0f]}}
execute unless entity @a[scores={time=13001..23000}] if entity @s[tag=Wait] run data merge entity @s {Pose:{RightLeg:[],LeftLeg:[],RightArm:[],LeftArm:[],Body:[]}}

#Lifetime
execute unless entity @a[scores={time=13001..23000}] unless entity @s[tag=GetUp] run scoreboard players add @s lifetime 1
execute if entity @a[scores={time=13001..23000}] run tag @s add Wait
execute unless entity @a[scores={time=13001..23000}] run tag @s remove Wait

execute unless entity @a[tag=BunnyHood] unless block 909 74 2044 minecraft:gold_block run scoreboard players set @s text 1
execute if block 909 74 2044 minecraft:gold_block run scoreboard players set @s text 2

#Summon
execute if entity @s[scores={lifetime=3491..}] unless entity @a[tag=Adult] unless block 909 74 2044 minecraft:gold_block run summon minecraft:armor_stand 844 58 1941 {Tags:["Npc","RunningMan"],NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[-16.7f],CustomName:"\"Man\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1},{id:"leather_leggings",Count:1,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16383998}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Running Man\"}",Id:[I;1644208519,-181777806,-1507988755,-1918951128],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmNlYmVhYzk0YzExZDRiODU1YzAyYjQ5NmM5OTMxNDAxZGMzYTZhZjM5YTlkNjM1ZDc5YzM0MDhlZGJiZDI2NCJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:2}},{id:stone,Count:1b,tag:{CustomModelData:2}}],DisabledSlots:4144959}
execute if entity @s[scores={lifetime=3491..}] unless entity @a[tag=Adult] if block 909 74 2044 minecraft:gold_block run summon minecraft:armor_stand 844 58 1941 {Tags:["Npc","CompleteMask","RunningMan"],NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[-16.7f],CustomName:"\"Man\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1},{id:"leather_leggings",Count:1,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16383998}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Bunny Hood\"}",Id:[I;-1768369996,-409842623,-1823819615,1459092386],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWY3ZTI4OGNjYjBjZDdiNWMzZmM2Y2MzNjVkMTBmYTliMjk3NzRhYjEzNTU1NzZlMTM5YTE1ZjliM2M3Mzk2NiJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:2}},{id:stone,Count:1b,tag:{CustomModelData:2}}],DisabledSlots:4144959}
execute if entity @s[scores={lifetime=3491..}] run kill @e[type=armor_stand,tag=RunningMan]
execute if entity @a[tag=Adult] run kill @e[type=armor_stand,tag=RunningMan]

#Moving
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1..309}] run tp @s ~.06 ~ ~.2 -16.7 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=33}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=75}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=183}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=205}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=221}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=238}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=259}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=275}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=282}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=298}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=310}] run tp @s 862 66 2001
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=311..463}] run tp @s ~-.2 ~ ~.036 79.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=314}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=319}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=323}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=330}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=336}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=342}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=353}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=360}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=366}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=372}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=383}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=389}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=395}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=400}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=402}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=409}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=422}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=428}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=464}] run tp @s 835 75 2006
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=465..590}] run tp @s ~-.12 ~ ~.12 45 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=505}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=513}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=522}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=532}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=542}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=549}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=560}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=576}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=587}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=591}] run tp @s 821 68 2020
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=592..693}] run tp @s ~.12 ~ ~.079 -56.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=694}] run tp @s 833 68 2028
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=695..896}] run tp @s ~.095 ~ ~.16 -31 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=880}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=897}] run tp @s 852 69 2060
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=898..1102}] run tp @s ~-.014 ~ ~.2 4.3 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=978}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1103}] run tp @s 849 70 2101
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1104..1363}] run tp @s ~.15 ~ ~.17 -41.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1161}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1192}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1246}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1276}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1311}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1343}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1364}] run tp @s 887 64 2144
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1365..1666}] run tp @s ~.155 ~ ~.047 -73 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1402}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1511}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1573}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1667}] run tp @s 933 61 2158
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1668..1866}] run tp @s ~.105 ~ ~-.145 -144 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1867}] run tp @s 954 61 2129
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1868..2118}] run tp @s ~.12 ~ ~-.14 -139.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1879}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1928}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1948}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1972}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=1993}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2020}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2040}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2084}] run tp @s ~ ~1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2119}] run tp @s 983 69 2095
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2120..2460}] run tp @s ~-.054 ~ ~-.15 160.2 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2175}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2183}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2244}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2254}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2314}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2321}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2389}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2395}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2461}] run tp @s 965 73 2045
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2462..2692}] run tp @s ~-.04 ~ ~-.16 166 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2485}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2490}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2657}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2664}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2679}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2685}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2693}] run tp @s 956 72 2009
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2694..2894}] run tp @s ~-.16 ~ ~-.098 121.8 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2712}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2739}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2757}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2779}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2797}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2804}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2837}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2863}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2886}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2895}] run tp @s 925 63 1990
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2896..3099}] run tp @s ~-.17 ~ ~.03 80.2 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2917}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2923}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2942}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=2948}] run tp @s ~ ~.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3081}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3089}] run tp @s ~ ~-.5 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3100}] run tp @s 891 64 1996
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3101..3472}] run tp @s ~-.12 ~ ~-.15 141.6 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3134}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3150}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3170}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3194}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3205}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3230}] run tp @s ~ ~-1 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3473}] run tp @s 847 58 1941
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3474..3489}] run tp @s ~-.2 ~ ~ 90 ~
execute unless entity @s[tag=GetUp] unless entity @s[tag=Wait] if entity @s[scores={lifetime=3490}] run tp @s 844 58 1941 -16.7 ~
