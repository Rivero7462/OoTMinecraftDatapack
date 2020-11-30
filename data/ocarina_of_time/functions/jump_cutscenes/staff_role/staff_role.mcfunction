scoreboard players add @s lifetime 1
tag @a add Adult
tp @a @s
execute as @e[type=armor_stand,tag=StaffRoleNpc] run function ocarina_of_time:jump_cutscenes/staff_role/animations
execute as @e[type=giant,tag=StaffRoleNpc] run function ocarina_of_time:jump_cutscenes/staff_role/animations
execute as @e[type=chicken,tag=StaffRoleNpc] run function ocarina_of_time:jump_cutscenes/staff_role/animations

execute if entity @s[scores={lifetime=1}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1}] run time set 22000
execute if entity @s[scores={lifetime=1}] run tag @a add InGerudoValley
execute if entity @s[scores={lifetime=1}] run tag @a add StopTime
execute if entity @s[scores={lifetime=2}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Ocarina of Time\"}"},Unbreakable:1b,Damage:10,HideFlags:63,OcarinaZelda:1b}

execute if entity @s[scores={lifetime=1}] run tp @a 394 72 2036
execute if entity @s[scores={lifetime=1}] run tp @s 394 72 2036
execute if entity @s[scores={lifetime=40..145}] run data merge entity @e[type=armor_stand,tag=Mutoh2,limit=1] {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=40..145}] run data merge entity @e[type=armor_stand,tag=Gerudo1,limit=1] {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=15}] run function ocarina_of_time:music/staff_role

execute if entity @s[scores={lifetime=52}] run tp @a 394 87 2037 73 1
execute if entity @s[scores={lifetime=52}] run tp @s 394 87 2037 73 1

execute if entity @s[scores={lifetime=53}] run summon minecraft:armor_stand 362 134 2064 {Tags:["StaffOwl"],Rotation:[90f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @s[scores={lifetime=53..144}] run tp @s 394 ~-.06451 2037 73 1
execute if entity @s[scores={lifetime=53..145}] as @e[type=armor_stand,tag=StaffOwl] at @s run tp @s ~-.4 ~ ~
execute if entity @s[scores={lifetime=145}] run tp @s 394 81 2037 73 1
execute if entity @s[scores={lifetime=146}] run kill @e[type=armor_stand,tag=StaffOwl]
execute if entity @s[scores={lifetime=146}] run data merge entity @e[type=armor_stand,tag=Mutoh2,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8606770}}},{id:"leather_leggings",Count:1b,tag:{display:{color:14861905}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Mutoh\""},SkullOwner:{Id:[I;-1663357672,-2086056546,-1378269074,578021224],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGIzZDQ5OTliM2ZiNmI4ZGRjZWU4MTc3YzVlOWRmMTcxZGFmM2Y0Mzk3ZTMyNWE4ZDM3ZTljOTQ4MjAxNWNjIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}}]}
execute if entity @s[scores={lifetime=146}] run data merge entity @e[type=armor_stand,tag=Gerudo1,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}]}

execute if entity @s[scores={lifetime=146}] run tag @a remove InGerudoValley
execute if entity @s[scores={lifetime=146}] run tp @a -104 95 1995 -95 16
execute if entity @s[scores={lifetime=146}] run tp @s -104 95 1995 -95 16

execute if entity @s[scores={lifetime=147..401}] run kill @e[tag=GerudoGuard]
execute if entity @s[scores={lifetime=147..401}] as @e[type=armor_stand,tag=PermanentGerudo1] at @s if block ~ ~-1 ~ minecraft:smooth_sandstone run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=148..401}] run tp @s ~.04545 95 ~-.00988 ~-.099 16
execute if entity @s[scores={lifetime=402}] run tp @s -92.5 95 1992.5 -120 16
execute if entity @s[scores={lifetime=402}] run data merge entity @e[type=armor_stand,tag=PermanentGerudo1,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Platform Guy\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}]}

execute if entity @s[scores={lifetime=403}] run tag @a add InKakarikoVillage
execute if entity @s[scores={lifetime=403}] run tp @a 1532 82 1932 170 -35
execute if entity @s[scores={lifetime=403}] run tp @s 1532 82 1932 170 -35

execute if entity @s[scores={lifetime=404..686}] as @e[type=armor_stand,tag=PlatformGuy2] at @s if block ~ ~-1 ~ minecraft:spruce_stairs run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=404..686}] as @e[type=armor_stand,tag=Beggar2] at @s if block ~ ~ ~ minecraft:grass_block run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=404..686}] as @e[type=armor_stand,tag=BeardGuy2] at @s if block ~ ~-1 ~ minecraft:grass_block run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=404..686}] run fill 1520 78 1890 1522 80 1890 minecraft:stone_bricks
execute if entity @s[scores={lifetime=404..686}] as @e[type=armor_stand,tag=Guard30] at @s if block ~ ~-1 ~ minecraft:smooth_red_sandstone run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=404..686}] as @e[type=armor_stand,tag=Guard30] at @s if block ~ ~-1 ~ minecraft:air run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=404..525}] run tp @s ~.02439 ~-.01626 ~.02439 ~.341 ~.618
execute if entity @s[scores={lifetime=526}] run tp @s 1535 80 1935 212 41
execute if entity @s[scores={lifetime=527..647}] run tp @s ~.01639 ~.04918 ~.01639 ~.393 ~-.459
execute if entity @s[scores={lifetime=648}] run tp @s 1537 86 1937 260 -15
execute if entity @s[scores={lifetime=688}] run fill 1520 78 1890 1522 80 1890 minecraft:air
execute if entity @s[scores={lifetime=688}] run data merge entity @e[type=armor_stand,tag=PlatformGuy2,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8606770}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13356746}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12141685}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Platform Guy\""},SkullOwner:{Id:[I;-441144454,1648315381,-1622538904,1324031743],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWUyOTlhZjVjMjM5YWI4OWViZTUzOGE5YWQ2YTc2NGQ1Y2FlYmJjOTQ4M2FhZjk1M2Q5MjcxNzk1ZjVmZCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}]}
execute if entity @s[scores={lifetime=688}] run data merge entity @e[type=armor_stand,tag=Beggar2,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:6192150}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6192150}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6192150}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Beggar\""},SkullOwner:{Id:[I;-131220155,-1102690842,-1455626189,-351427063],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDg2NGM3Yjc0ZDRmZjZjNzJlNjM1YjM5MmU0NjdjZmEzODBjM2Y4MzJiZTlmZDM0MzUyMjQ1YzJiZGE1ZjVhIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}}]}
execute if entity @s[scores={lifetime=688}] run data merge entity @e[type=armor_stand,tag=BeardGuy2,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:14343899}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8439583}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Beard Man\""},SkullOwner:{Id:[I;269374480,-678739321,-1688931964,-485143670],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjc1MDE0ZDJjZTFkZmIzZmQ1OGE4YTg2Zjc0OWZhMjllYjZmNjE4YWEzNjRjZjRlMmI3OTc3YTVkY2ZkMDljIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}]}
execute if entity @s[scores={lifetime=688}] run data merge entity @e[type=armor_stand,tag=Guard30,scores={text=1..2},limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8224125}}},{id:"leather_leggings",Count:1b,tag:{display:{color:15319922}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Soldier\""},SkullOwner:{Id:[I;661865529,-2011935280,-2014285298,87482361],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2RkNmIwMzdjZThkN2UxYWMyMmI1ODMzYmMyNmU0MzNjNDFjODJlNmFmNTEwMzZjYjZiMTRkMzRkY2YwNmMifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}]}
execute if entity @s[scores={lifetime=688}] run data merge entity @e[type=armor_stand,tag=Guard30,scores={text=3..},limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8224125}}},{id:"leather_leggings",Count:1b,tag:{display:{color:15319922}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Keaton Mask\""},SkullOwner:{Id:[I;123400141,-1898690085,-1127666178,897543716],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTlhYmFkYTRmNjY5Zjc4NTEzNjkyZGE0N2U5OWNkZjNkNzllMmE0ODgzZGE2YzUyMmFjZTlhZTIxOGUxIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}]}

execute if entity @s[scores={lifetime=688}] run tag @a remove InKakarikoVillage
execute if entity @s[scores={lifetime=688}] run tp @a 2040 114 1450 24 -20
execute if entity @s[scores={lifetime=688}] run tp @s 2040 114 1450 24 -20

execute if entity @s[scores={lifetime=695..1016}] run kill @e[type=armor_stand,tag=Goron2]
execute if entity @s[scores={lifetime=695..1016}] run kill @e[type=armor_stand,tag=OwlStand9]
execute if entity @s[scores={lifetime=695..1016}] as @e[type=armor_stand,tag=Goron7] at @s if block ~ ~ ~ minecraft:smooth_red_sandstone run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=695..1016}] as @e[type=armor_stand,tag=Goron7] at @s if block ~ ~ ~ minecraft:air run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=689..949}] run tp @s ~-.00381 114 ~-.02290 ~.481 ~.149
execute if entity @s[scores={lifetime=950}] run tp @a 2039 114 1444 150 19
execute if entity @s[scores={lifetime=1018}] run tag @a add InGoronCity
execute if entity @s[scores={lifetime=1018}] run tp @a 2182.0 64 1791 180 0
execute if entity @s[scores={lifetime=1018}] run tp @s 2182.0 64 1791 180 0

execute if entity @s[scores={lifetime=1018..}] as @e[type=armor_stand,tag=Darunia] at @s if block ~ ~-1 ~ minecraft:smooth_red_sandstone run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}

execute if entity @s[scores={lifetime=1019..1335}] run tp @s 2182.0 ~-.01257 ~.03773 180 0
execute if entity @s[scores={lifetime=1336}] run tp @s 2182.0 60 1803 180 0
execute if entity @s[scores={lifetime=1337}] run data merge entity @e[type=armor_stand,tag=Darunia,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Darunia\""},SkullOwner:{Id:[I;1088939652,90785587,-1485951281,-1895189175],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNiYTk3NDcwNTg4NmMwYzFhY2FhNzk0MTY5NmE0ZTRiMjI0MDk1NGIzZWI3Nzk2OGVmNmJmZDdiOWFiZWI0NCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}]}

execute if entity @s[scores={lifetime=1337}] run tag @a remove InGoronCity
execute if entity @s[scores={lifetime=1337}] run tag @a add InLakeChild
execute if entity @s[scores={lifetime=1337}] run tp @a 762 65 2821 180 90
execute if entity @s[scores={lifetime=1337}] run tp @s 762 65 2821 180 90

execute if entity @s[scores={lifetime=1338..1599}] run tp @s 762 65 2821 ~.057 ~-.357
execute if entity @s[scores={lifetime=1600}] run tp @s 762 65 2821 195 -4

execute if entity @s[scores={lifetime=1700}] run tag @a remove InLakeChild
execute if entity @s[scores={lifetime=1700}] run tp @a 1773 61 2274 150 0
execute if entity @s[scores={lifetime=1700}] run tp @s 1773 61 2274 150 0

execute if entity @s[scores={lifetime=1700..2034}] run function ocarina_of_time:moving_things/zora_domain/child
execute if entity @s[scores={lifetime=1840..2034}] as @e[type=armor_stand,tag=KingZora] at @s if block ~ ~-1 ~ minecraft:red_wool run data merge entity @s {HandItems:[{},{}]}
execute if entity @s[scores={lifetime=1701..1840}] run tp @s ~.02158 61 ~.07913 150 0
execute if entity @s[scores={lifetime=1841}] run tp @s 1776 61 2285 150 0
execute if entity @s[scores={lifetime=1842..1979}] run tp @s ~.02158 ~-.03597 ~.09352 ~.115 ~-.108
execute if entity @s[scores={lifetime=1980}] run tp @s 1779 56 2298 166 -15
execute if entity @s[scores={lifetime=2035}] run data merge entity @e[type=armor_stand,tag=KingZora,limit=1] {HandItems:[{id:"minecraft:cyan_glazed_terracotta",Count:1b},{}]}

execute if entity @s[scores={lifetime=2035}] run tag @a add InKokiriForest
execute if entity @s[scores={lifetime=2035}] run tp @a -494 66 -642 -125 65
execute if entity @s[scores={lifetime=2035}] run tp @s -494 66 -642 -125 65

execute if entity @s[scores={lifetime=2040..}] run tp @e[type=armor_stand,tag=Sprout] -489 60 -642
execute if entity @s[scores={lifetime=2361..}] as @e[type=armor_stand,tag=KnowItAllBrother1] at @s if block ~ ~-1 ~ minecraft:grass_block run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=2361..}] as @e[type=armor_stand,tag=KnowItAllBrother3] at @s if block ~ ~-1 ~ minecraft:grass_block run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=2361..}] as @e[type=armor_stand,tag=KnowItAllBrother3] at @s if block ~ ~ ~ minecraft:grass_block run data merge entity @s {ArmorItems:[{},{},{},{}],HandItems:[{},{}]}
execute if entity @s[scores={lifetime=2036..2359}] run tp @s ~.00307 ~-.01230 ~-.00307 ~.009 ~-.113
execute if entity @s[scores={lifetime=2360}] run tp @s -493 62 -643 -122 28
execute if entity @s[scores={lifetime=2361}] run tp @s -583 70 -626 0 5
execute if entity @s[scores={lifetime=2362..2648}] run tp @s ~.11418 70 -626 0 5
execute if entity @s[scores={lifetime=2649}] run tp @s -550 70 -626 0 5
execute if entity @s[scores={lifetime=2650}] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother1,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8375321}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6982448}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6916655}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Know It All Brother\""},SkullOwner:{Id:[I;-1258722980,1235372327,-1394934071,2125302308],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU4ZTdkNGMwZjdkMGYyY2Q3NmNhNGUwNjljM2IwNDMzYWRmNTFmYjQ2ODI0ODA3NzdiOTdkYjFhNzE1In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}]}
execute if entity @s[scores={lifetime=2650}] run data merge entity @e[type=armor_stand,tag=KnowItAllBrother3,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8375321}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6982448}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6916655}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Know It All Brother\""},SkullOwner:{Id:[I;-1258722980,1235372327,-1394934071,2125302308],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU4ZTdkNGMwZjdkMGYyY2Q3NmNhNGUwNjljM2IwNDMzYWRmNTFmYjQ2ODI0ODA3NzdiOTdkYjFhNzE1In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}]}

execute if entity @s[scores={lifetime=2650}] run tag @a remove InKokiriForest
execute if entity @s[scores={lifetime=2650}] run tp @a 997 77 1999 -30 -20
execute if entity @s[scores={lifetime=2650}] run tp @s 997 77 1999 -30 -20

execute if entity @s[scores={lifetime=2650..2670}] unless entity @e[type=horse,tag=StaffEpona] if block 1021 76 1998 minecraft:grass_block run summon minecraft:horse 1021 77 1998 {Tags:["StaffEpona"],Rotation:[63f],NoAI:1b,Tame:1,DeathLootTable:"loz:entities/nothing",PersistenceRequired:1b,Silent:1,Invulnerable:1,Variant:258,SaddleItem:{id:saddle,Count:1b}}
execute if entity @s[scores={lifetime=2670..3142}] as @e[type=horse,tag=StaffEpona] at @s unless block ^ ^-1 ^-.1 minecraft:air unless block ^ ^ ^.1 minecraft:grass_block run tp @s ^ ^ ^.1
execute if entity @s[scores={lifetime=2670..3142}] as @e[type=horse,tag=StaffEpona] at @s if block ^ ^-1 ^-.1 minecraft:air run tp @s ^ ^-1 ^.1
execute if entity @s[scores={lifetime=2670..3142}] as @e[type=horse,tag=StaffEpona] at @s if block ^ ^ ^.1 minecraft:grass_block run tp @s ^ ^1 ^.1
execute if entity @s[scores={lifetime=3142}] run kill @e[type=horse,tag=StaffEpona]

execute if entity @s[scores={lifetime=3142}] run tp @a 558 20 1357 facing 558 0 1357
execute if entity @s[scores={lifetime=3142}] run tp @s 558 20 1357 facing 558 0 1357

execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:flame 558 1.3 1357 0.1 0.1 0.1 0 1
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 560 1 1357 1 1 0 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 558 1 1359 1 0 0 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 558 1 1355 1 0 1 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 556 1 1357 0 0 1 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 557.0 1 1356 1 0 0 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 557 1 1356.0 0 1 0.1 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 557 1 1359.0 1 0 1 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 560.0 1 1358 0 1 0.1 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 557.0 1 1358 1 1 0 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 560.0 1 1356 0 0 1 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 559 1 1359.0 0 0 1 1 0 normal
execute if entity @s[scores={lifetime=3300..3545}] run particle minecraft:entity_effect 559 1 1356.0 1 0 0 1 0 normal
execute if entity @s[scores={lifetime=3300..3470}] run tp @s ~.01754 ~-.1 ~ facing 558 0 1357
execute if entity @s[scores={lifetime=3471..3499}] run tp @s ~-.06896 ~-.1 ~ facing 558 0 1357
execute if entity @s[scores={lifetime=3500}] run tp @s 559 0 1357 facing 558 0 1357

#Extra
execute if entity @s[scores={lifetime=3535}] run fill 451 35 1352 451 30 1362 minecraft:air
execute if entity @s[scores={lifetime=3535}] run fill 477 35 1335 477 30 1344 minecraft:air
execute if entity @s[scores={lifetime=3535}] run fill 461 32 1327 458 30 1327 minecraft:air
execute if entity @s[scores={lifetime=3535}] run tp @e[type=armor_stand,tag=AdultIngo1] 461 26 1325
execute if entity @s[scores={lifetime=3535}] run tp @e[type=armor_stand,tag=AdultTalon] 461 26 1325
execute if entity @s[scores={lifetime=3535}] run fill 451 29 1362 477 29 1335 minecraft:grass_block

#Talon
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 453.8 30 1354.9 {Rotation:[158f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8606770}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3949738}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Talon Sleeping\""},SkullOwner:{Id:[I;1051019153,-1741274412,-1532941598,-1741860382],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2Y4YjgxZjE3ODk2ZWU3MWMwYjM1YzI4NDdiODZiNmRkMTRhOTRlZGNlMmZjMDg2MmM5NmQ0ZWE5ZWVmNTAifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],Pose:{RightArm:[0f,0f,70f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc1"]}
#Ingo
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 454 30 1354 {Rotation:[149f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8606770}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:225280}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Ingo Happy\""},SkullOwner:{Id:[I;1916568761,1391937689,-2124539357,2125691533],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWVhMGM0YTE5Zjg2MjZlZjZmZDQ1ODNiZDgzMWVlNTk4YTY0YzA5ZmE2MjFjMjU2NDljZWYyMmQzY2U0ZiJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],Pose:{LeftArm:[20f,0f,-90f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc2"]}
#Fado
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 451 30 1355 {Rotation:[-180f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10365952}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2544912}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2544912}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Fado\""},SkullOwner:{Id:[I;-2106711189,-18788483,-1375956337,-1239429443],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjI5MDExYzNkZTExODU1ODdhNjU2MzIyZDUyNDU0Yzg0MTAwMzk3ODdmMzQ1M2U5NWFkYzM5ZDNhNTkzNzE1MCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc3"]}
#Twin
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 455 30 1357 {Rotation:[153f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10365952}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2544912}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2544912}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twin\""},SkullOwner:{Id:[I;1646443721,-128431598,-1103119720,-645019698],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRiZDhlYzc3NzQ1MjJjNTc1ZGNhMmM1NWU2YjI3MzUyODFlMDFlODNlYmQ3YzBiNWE0ZGZhY2E3ODIxMTQ0In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc3"]}
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 453 30 1359 {Rotation:[169f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10365952}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2544912}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2544912}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twin\""},SkullOwner:{Id:[I;1646443721,-128431598,-1103119720,-645019698],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRiZDhlYzc3NzQ1MjJjNTc1ZGNhMmM1NWU2YjI3MzUyODFlMDFlODNlYmQ3YzBiNWE0ZGZhY2E3ODIxMTQ0In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc3"]}
#KnowBrother
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 450 30 1359 {Rotation:[-174f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8375321}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6982448}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6916655}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Know-It-All Brother\""},SkullOwner:{Id:[I;-1258722980,1235372327,-1394934071,2125302308],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU4ZTdkNGMwZjdkMGYyY2Q3NmNhNGUwNjljM2IwNDMzYWRmNTFmYjQ2ODI0ODA3NzdiOTdkYjFhNzE1In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc3"]}
#Zora
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 452 30 1360 {Rotation:[174f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Zora\""},SkullOwner:{Id:[I;712103538,-1218687368,-2049550652,985730795],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjU1MGMzMTU2ZDQzOTI0ODlkYmViMDYwMTUxZTlmNTEyYWU5Nzg0NDlhY2Y3YTRiZTk4ZGFhODRlZDM3NzhkIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc4"]}
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 458 30 1356 {Rotation:[135f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Zora\""},SkullOwner:{Id:[I;712103538,-1218687368,-2049550652,985730795],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjU1MGMzMTU2ZDQzOTI0ODlkYmViMDYwMTUxZTlmNTEyYWU5Nzg0NDlhY2Y3YTRiZTk4ZGFhODRlZDM3NzhkIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc4"]}
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 456.1 30 1354.1 {Rotation:[135f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Zora\""},SkullOwner:{Id:[I;712103538,-1218687368,-2049550652,985730795],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjU1MGMzMTU2ZDQzOTI0ODlkYmViMDYwMTUxZTlmNTEyYWU5Nzg0NDlhY2Y3YTRiZTk4ZGFhODRlZDM3NzhkIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc4"]}
#Goron
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 456 30 1350 {Rotation:[95f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 458 30 1353 {Rotation:[119f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 455 30 1361 {Rotation:[161f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 453 30 1362 {Rotation:[171f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
#GoronSit
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 452 29.4 1353 {Rotation:[166f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
execute if entity @s[scores={lifetime=3535}] run summon minecraft:armor_stand 450 29.4 1353 {Rotation:[-166f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}

execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 451 30.1 1351 1 1 0 1 0 normal
execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 453 30 1348 1 1 0 1 0 normal
execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 450 30.1 1351 1 0 0 1 0 normal
execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 453 30.1 1349 1 0 1 1 0 normal
execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 452 30.1 1351.0 0 0 1 1 0 normal
execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 453.0 30.1 1350 0 0 1 1 0 normal
execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 452 30.1 1347 0 1 0.1 1 0 normal
execute if entity @s[scores={lifetime=3535..3825}] run particle minecraft:entity_effect 449 30.1 1350 0 1 0.1 1 0 normal

execute if entity @s[scores={lifetime=3545}] run tp @s 461 30.8 1353 108 8
execute if entity @s[scores={lifetime=3600}] run tp @s 452 31.9 1351 -29 28
execute if entity @s[scores={lifetime=3650}] run tp @s 462 31.9 1354 92 17

execute if entity @s[scores={lifetime=3824}] run tp @s 558 20 1357

execute if entity @s[scores={lifetime=3826..4260}] run particle minecraft:entity_effect 450 30.1 1355 1 1 0 1 0 normal
execute if entity @s[scores={lifetime=3826..4260}] run particle minecraft:entity_effect 451 30.1 1353 1 0 0 1 0 normal
execute if entity @s[scores={lifetime=3826..4260}] run particle minecraft:entity_effect 450 30.1 1351 1 0 1 1 0 normal
execute if entity @s[scores={lifetime=3826..4260}] run particle minecraft:entity_effect 451 30.1 1352 0 0 1 1 0 normal
execute if entity @s[scores={lifetime=3826..4260}] run particle minecraft:entity_effect 451 30.1 1354 0 1 0.1 1 0 normal

execute if entity @s[scores={lifetime=3826}] run kill @e[type=armor_stand,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=3826}] run fill 459 26 1349 457 26 1349 minecraft:redstone_block
execute if entity @s[scores={lifetime=3827}] run fill 459 26 1349 457 26 1349 minecraft:air
#Sakon
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 457 30 1357 {NoGravity:0b,Small:0b,ShowArms:1b,Invisible:1b,Rotation:[180f],ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:7023360}}},{id:"leather_leggings",Count:1,tag:{display:{color:1844676}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16777215}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"Sakon",Id:[I;-1068147826,144917093,-1222872467,-1645905694],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTBhYTM5Mzc4N2NjN2VhNWNjN2JhMzEzNDI0N2ZiN2VhZTZkMTdhZDljODFlYWM5NTI4YmRjZWY5ZjU1OGMifX19"}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:3}},{id:stone,Count:1b,tag:{CustomModelData:3}}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Tags:["StaffRoleNpc","StaffRoleNpc6"]}
#White Twin
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 459 30 1348 {Rotation:[40f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10043692}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twins\""},SkullOwner:{Id:[I;-68634165,-1334686910,-1096596821,-65749083],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjE2Y2JjZWEzM2FkNWIyNTliYzJhNTg1NzhmMzYwZDY1ZjMwNTI3ZTVkYzQzYjNmMGZiYWQyYWFhMzFmMyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],Pose:{Head:[0f,-40f,0f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Blue Twin
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 459 30 1350 {Rotation:[47f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10043692}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twins\""},SkullOwner:{Id:[I;-68634165,-1334686910,-1096596821,-65749083],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjE2Y2JjZWEzM2FkNWIyNTliYzJhNTg1NzhmMzYwZDY1ZjMwNTI3ZTVkYzQzYjNmMGZiYWQyYWFhMzFmMyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Beggar
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 458 29.5 1353 {Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:6192150}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6192150}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6192150}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Beggar\""},SkullOwner:{Id:[I;-131220155,-1102690842,-1455626189,-351427063],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDg2NGM3Yjc0ZDRmZjZjNzJlNjM1YjM5MmU0NjdjZmEzODBjM2Y4MzJiZTlmZDM0MzUyMjQ1YzJiZGE1ZjVhIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:4}}],Pose:{LeftLeg:[50f,0f,0f],RightLeg:[50f,0f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Red Twin
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 458 30 1358 {Rotation:[-110f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10043692}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:11546150}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twins\""},SkullOwner:{Id:[I;-68634165,-1334686910,-1096596821,-65749083],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjE2Y2JjZWEzM2FkNWIyNTliYzJhNTg1NzhmMzYwZDY1ZjMwNTI3ZTVkYzQzYjNmMGZiYWQyYWFhMzFmMyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Dampe
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 431 31 1325 {Rotation:[-40f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:5649152}}},{id:"leather_leggings",Count:1b,tag:{display:{color:5649152}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:5649152}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Dampe's Ghost\""},SkullOwner:{Id:[I;-2136804049,-4438328,-1245491329,-1514309252],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDUwZjI1OGIyMjA5MTQzZWMyOTA4YzBiYmFiMzVlYzRiM2JkMDBhNTRjYjRjODg3YTRlNDMzYjc0ZWUzNjM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:13}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}

#Twin
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 464 30 1356.6 {Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10365952}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2544912}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2544912}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twin\""},SkullOwner:{Id:[I;1646443721,-128431598,-1103119720,-645019698],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRiZDhlYzc3NzQ1MjJjNTc1ZGNhMmM1NWU2YjI3MzUyODFlMDFlODNlYmQ3YzBiNWE0ZGZhY2E3ODIxMTQ0In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],Pose:{LeftArm:[-130f,0f,0f],RightArm:[-130f,0f,0f],Head:[-30f,0f,0f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 462 30 1356.6 {Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10365952}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2544912}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2544912}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twin\""},SkullOwner:{Id:[I;1646443721,-128431598,-1103119720,-645019698],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRiZDhlYzc3NzQ1MjJjNTc1ZGNhMmM1NWU2YjI3MzUyODFlMDFlODNlYmQ3YzBiNWE0ZGZhY2E3ODIxMTQ0In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],Pose:{LeftArm:[-130f,0f,0f],RightArm:[-130f,0f,0f],Head:[-30f,0f,0f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#KnowBrother
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 463 30 1357 {Rotation:[180f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8375321}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6982448}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6916655}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Know-It-All Brother\""},SkullOwner:{Id:[I;-1258722980,1235372327,-1394934071,2125302308],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU4ZTdkNGMwZjdkMGYyY2Q3NmNhNGUwNjljM2IwNDMzYWRmNTFmYjQ2ODI0ODA3NzdiOTdkYjFhNzE1In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],Pose:{LeftArm:[-130f,0f,0f],RightArm:[-130f,0f,0f],Head:[-30f,0f,0f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Guru-Guru
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 463 32 1356 {Rotation:[90f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:127}}],DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc7"]}
#Running Man
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 462 30 1361 {NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1},{id:"leather_leggings",Count:1,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16383998}}},{id:"player_head",Count:1,tag:{display:{Name:"\"Running Man\""},SkullOwner:{Id:[I;-1768369996,-409842623,-1823819615,1459092386],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWY3ZTI4OGNjYjBjZDdiNWMzZmM2Y2MzNjVkMTBmYTliMjk3NzRhYjEzNTU1NzZlMTM5YTE1ZjliM2M3Mzk2NiJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc8"]}

#Carpet Master
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 470 29.513 1351 {Rotation:[45f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16770742}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3949738}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:15439641}}},{id:player_head,Count:1b,tag:{display:{Name:"\"CarpetMaster\""},SkullOwner:{Id:[I;-1994816702,260722669,-1592205432,255614934],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQwMjljN2RjZTNhMjg4YzllNjAxOGRjN2E5YzI1YjYwZjBiMWRlNTcwNzk2YmJhZDc5Y2JmOTc1ZTFiN2VkNSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],Pose:{Head:[-5f,0f,0f],LeftArm:[-45f,10f,0f],RightArm:[-40f,-10f,0f],LeftLeg:[-80f,40f,0f],RightLeg:[-90f,-30f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Bean Guy
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 470 29.4 1353 {Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:7652}}},{id:"leather_leggings",Count:1b,tag:{display:{color:7652}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16377232}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Bean Man\""},SkullOwner:{Id:[I;-109109453,-1193063545,-1229565814,-1086908713],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2U0YzkwODAxMDBjYzY0ZWU3YTQ3MjFkYmYyMjMyMGViNTA4YzIxZjNlNjJhOTcwZTUxMTRkMzRkYzMyYjJmNyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],Pose:{LeftLeg:[-90f,-10f,0f],RightLeg:[-90f,10f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Mr Mizumi
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 468 30 1351 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8606770}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3893690}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3893690}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Scientist\""},SkullOwner:{Id:[I;-1315238633,960514508,-1793621422,758284908],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTk3MWMwZTlkZGUwNWM5ZmMyM2E4MGNhZDMyMWE1OWVkOWJkNjA1YTVkNWVkZWMyZDZhNGVmYmRiYzY2MjIzOCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Granny
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 475 30.5 1349 {Rotation:[90f],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:8991416}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Granny\""},SkullOwner:{Id:[I;-577419384,-1083489224,-1648950714,1930809722],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2VjMWIzNzMwNDM4YWEwNzUwZTEwZDI0ZjBlODM3MTA5YTlmMzRmNDgxYWNiOTFlZmQwY2E5N2U4Y2JhMjY2ZCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Bombchu Lady
execute if entity @s[scores={lifetime=3826}] run summon minecraft:armor_stand 475.3 30.5 1350 {Rotation:[90f],ArmorItems:[{},{id:"leather_leggings",Count:1b,tag:{display:{color:15912849}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:14052080}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Bowling Owner\""},SkullOwner:{Id:[I;1918438611,-386775203,-1896478540,-104447183],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2MwZDUzZGE0M2VhODY4NGExZDNkMjExODI1OWNkM2QwMTkyMmE0MmViNmNlOWI2NjlhYmNmNDU4NzdlMjE5OCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}

execute if entity @s[scores={lifetime=3858}] run tp @s 461.9 30.2 1351.1 95 4
execute if entity @s[scores={lifetime=3859..3949}] run tp @s 461.9 30.2 1351.1 ~-.282 4
execute if entity @s[scores={lifetime=3950}] run tp @s 461.9 30.2 1351.1 69 4
execute if entity @s[scores={lifetime=3990}] run tp @s 461.2 30.2 1351.9 -1 4
execute if entity @s[scores={lifetime=4085}] run tp @s 465.3 30.5 1356.2 -132 13
execute if entity @s[scores={lifetime=4260}] run tp @s 558 20 1357

execute if entity @s[scores={lifetime=4261}] run fill 463 33 1356 474 30 1346 minecraft:air
execute if entity @s[scores={lifetime=4261}] run fill 463 29 1356 474 29 1346 minecraft:grass_block
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=Generic1]
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=Generic2]
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=Generic3]
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=Generic4]
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=Generic5]
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=Generic6]
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=Generic7]
execute if entity @s[scores={lifetime=4261}] run kill @e[type=armor_stand,tag=StaffRoleNpc]
#Malon
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 454 30 1356 {Rotation:[-149f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13986246}}},{id:"leather_leggings",Count:1b,tag:{display:{color:13986246}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Malon Adult\""},SkullOwner:{Id:[I;539343427,1691437598,-1585046457,-1622737214],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2QyZjkxODQ4ZGJlZjE0MDZmMTA2NGFkODA4NmIyYTU2OWM4MmU1MThiNTBhMTE1YjYzYTk1NGQ1ZDJlNTA1MyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Carpenters
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 448.5 30 1352.0 {Rotation:[-98f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Ichiro\""},SkullOwner:{Id:[I;-1354770470,-814789595,-2085704066,1436227682],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNhYWJkODRjZjE0ODQxMTAwM2MwNjZiZmU0MDFhMTU5MWJiZjExODIyZWViZTJkNGJiMjAwODFhZDhiMTI1NCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 448.5 30 1351.1 {Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Ichiro\""},SkullOwner:{Id:[I;-1354770470,-814789595,-2085704066,1436227682],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWNhYWJkODRjZjE0ODQxMTAwM2MwNjZiZmU0MDFhMTU5MWJiZjExODIyZWViZTJkNGJiMjAwODFhZDhiMTI1NCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 448.6 30 1350.3 {Rotation:[-78f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Sabooru\""},SkullOwner:{Id:[I;41952847,-1751692143,-1813366757,-715350283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRiN2YyZDg3MDdmNTcyOWI1M2M5ZTVhZWM0ZGQzZGFjMWIwZmUwNjQ3OGYzYTY0NWE0YjZhODQ2OTM0NTJlNiJ9fX0"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 449.0 30 1349.4 {Rotation:[-68f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Shiro\""},SkullOwner:{Id:[I;1265009262,-1873787448,-1137642244,-1371030166],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmI2NWJhOTdhOGEwMjk5NWU5YjRiYmZiMDIwMmVjNTdhYTlkN2Y1MzZhYTI1N2ZhZWRlODE0MjgyMTFlNjJjNSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 449 30 1348 {Rotation:[-58f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8606770}}},{id:"leather_leggings",Count:1b,tag:{display:{color:14861905}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Mutoh\""},SkullOwner:{Id:[I;-1663357672,-2086056546,-1378269074,578021224],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMGIzZDQ5OTliM2ZiNmI4ZGRjZWU4MTc3YzVlOWRmMTcxZGFmM2Y0Mzk3ZTMyNWE4ZDM3ZTljOTQ4MjAxNWNjIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 450.0 30 1347.7 {Rotation:[-50f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Sabooru\""},SkullOwner:{Id:[I;41952847,-1751692143,-1813366757,-715350283],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRiN2YyZDg3MDdmNTcyOWI1M2M5ZTVhZWM0ZGQzZGFjMWIwZmUwNjQ3OGYzYTY0NWE0YjZhODQ2OTM0NTJlNiJ9fX0"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 450.7 30 1346.9 {Rotation:[-48f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Jiro\""},SkullOwner:{Id:[I;1092620455,1308378650,-1987961750,52700868],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjI2NjU3Zjg1ZDA4MzE1ZGRiNzIwYjRmNzFhODRiYjI3NjQ1NDNlZmM4OGMxNjY2OWUxMTMzM2VkZjkwN2FkMCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 451.2 30 1346.2 {Rotation:[-37f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Shiro\""},SkullOwner:{Id:[I;1265009262,-1873787448,-1137642244,-1371030166],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmI2NWJhOTdhOGEwMjk5NWU5YjRiYmZiMDIwMmVjNTdhYTlkN2Y1MzZhYTI1N2ZhZWRlODE0MjgyMTFlNjJjNSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:armor_stand 452.1 30 1345.8 {Rotation:[-29f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12007512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Jiro\""},SkullOwner:{Id:[I;1092620455,1308378650,-1987961750,52700868],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjI2NjU3Zjg1ZDA4MzE1ZGRiNzIwYjRmNzFhODRiYjI3NjQ1NDNlZmM4OGMxNjY2OWUxMTMzM2VkZjkwN2FkMCJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc9"]}
#Horse
execute if entity @s[scores={lifetime=4261}] run summon minecraft:horse 448 30 1353 {Rotation:[-120f],NoAI:1b,SaddleItem:{id:saddle,Count:1b},Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Silent:1,Invulnerable:1,Tags:["StaffRoleNpc"]}
#Epona
execute if entity @s[scores={lifetime=4261}] run summon minecraft:horse 452 30 1355 {Rotation:[-85f],NoAI:1b,Tame:1,DeathLootTable:"loz:entities/nothing",PersistenceRequired:1b,Silent:1,Invulnerable:1,Variant:258,SaddleItem:{id:saddle,Count:1b},Tags:["StaffRoleNpc"]}
#Cow
execute if entity @s[scores={lifetime=4261}] run summon minecraft:cow 454 30 1360 {Rotation:[-150f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1b,Tags:["StaffRoleNpc"]}
execute if entity @s[scores={lifetime=4261}] run summon minecraft:cow 450 30 1364 {Rotation:[25f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1b,Tags:["StaffRoleNpc"]}

execute if entity @s[scores={lifetime=4300}] run tp @s 456.4 30.3 1353.6 48.9 6
execute if entity @s[scores={lifetime=4301..4404}] run tp @s ~-.01538 30.3 ~-.03365 ~.510 6
execute if entity @s[scores={lifetime=4405}] run tp @s 456.0 30.3 1355.0 34 6
execute if entity @s[scores={lifetime=4520}] run tp @s 558 20 1357

execute if entity @s[scores={lifetime=4521}] run kill @e[type=armor_stand,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=4521}] run kill @e[type=horse,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=4521}] run kill @e[type=cow,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=4521}] run time set midnight
#Potion
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 446 30 1359 {Rotation:[-135f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:8439583}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Medicine Shop Owner\""},SkullOwner:{Id:[I;2108761712,1054296251,-1261080383,259709374],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWFkOWU1ZDI2ZmE4MTM4MjkyMzY3OGRmOTcxNTZlM2Y0YWZjYmUyODY3ZjQwZjJkZTY3YmMyMmQ0OWQifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:6}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:6}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc10"]}
#Mask
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 447 30 1360 {Rotation:[-135f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12976383}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12976383}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12976383}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Happy Mask Salesman\""},SkullOwner:{Id:[I;-595515995,1638485985,-2062988843,-825640027],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTg0Y2U3ODFlMDliMThkZDFjODg0ODhmNjhiYzQ5ZjFlMzI3ZTJhYTQxOTg0ODRjNDU1MWNhNWM5NzUwMjMifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc10"]}
#Fisherman
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 448 30 1361 {Rotation:[-135f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:493036}}},{id:"leather_leggings",Count:1b,tag:{display:{color:493036}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:493036}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Fisherman Hat\""},SkullOwner:{Id:[I;-307533085,1359626889,-1640353966,689722561],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzY5OTAyOWVlY2ZiYWE2ZjUwMmJkNWFiZjQ3NjFjOWQzMmE5MTk0M2U0NjA2ZjI2NDVmMWQwYjE2NjQ1MzZmZSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc10"]}
#Bombchu
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 449 30 1362 {Rotation:[-135f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3751489}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3751489}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3751489}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Bomb Shop Owner\""},SkullOwner:{Id:[I;93717860,925715717,-1203755585,2098930841],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFmZGY1ZjRlMTE3YzVkOTc3YThhODY3ZGMzODRlZmNmOWMxYTk3ODMyNWFmMjdlYzMzY2M3ZDhiMGM2OGIifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:7}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc10"]}

#Anju
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 483 30 1343 {Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:9458010}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2715811}}},{id:"leather_chestplate",Count:1b},{id:player_head,Count:1b,tag:{display:{Name:"\"Anju\""},SkullOwner:{Id:[I;70150826,-1845736217,-1738766033,-2111703002],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWI1MTMwZWEyZDQ2MTFkN2JmZDJiMjVlZDJiMDc3ZmYyY2I1YTY3NDVkMTY1ZjVkN2NmMDE0ODI4OWVmMTMifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:8}}],Pose:{RightArm:[-80f,0f,0f],LeftArm:[-80f,0f,0f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Cuccos
execute if entity @s[scores={lifetime=4521}] run summon minecraft:chicken 482.9 30 1342 {Rotation:[90f],NoAI:1b,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,Tags:["StaffRoleNpc","StaffRoleNpc11"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:chicken 482.9 30 1344 {Rotation:[90f],NoAI:1b,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,Tags:["StaffRoleNpc","StaffRoleNpc12"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:chicken 482.9 31.4 1343 {Rotation:[90f],NoAI:1b,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Silent:1,Tags:["StaffRoleNpc","StaffRoleNpc13"]}
#MediGoron
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 481.0 30 1337 {Rotation:[0f],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:128}}],DisabledSlots:4144959,Tags:["StaffRoleNpc"]}

#Biggoron
execute if entity @s[scores={lifetime=4521}] run summon minecraft:giant 500 30 1366 {Rotation:[146f],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/nothing",ArmorDropChances:[0f,0f,0f,0f],PersistenceRequired:1b,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 499.7 38.5 1365.7 {Rotation:[146f],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:23}}],DisabledSlots:4144959,Pose:{Head:[30f,0f,0f]},Tags:["StaffRoleNpc","StaffRoleNpc5"]}
#Gerudo
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 495 30 1363 {Rotation:[160f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 494.09 30 1364.01 {Rotation:[160f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 492.68 30 1364.53 {Rotation:[160f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 491.27 30 1365.04 {Rotation:[160f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 489.86 30 1365.55 {Rotation:[160f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 488.45 30 1366.06 {Rotation:[160f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
#Honey
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 494.75 70 1359.75 {Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11289023}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Honey\""},SkullOwner:{Id:[I;1333115560,1473268147,-2110556430,581726983],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTEyY2FkM2FkMDlmYzNhYTM2NmI5ZjRmNDk4MTFlZmFjNjc5ODZiYjgxNzYxMjVjOTZjM2ZmODNjN2EifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc15"]}
#Darling
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 495.25 70 1359.25 {Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3949738}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:3949738}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Darling\""},SkullOwner:{Id:[I;1073869657,-1791013592,-1933227594,-1030451158],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTY4NTkyNWE2ZjNlZDQxNDYxYzVjMmRmMjNiNTY3YTk5ZDk5M2YzMmMyYTNmY2Q0NDYwMTA3NTRiMmNkMmMifX19"}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc16"]}
#Goron
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 493 30 1353 {Rotation:[125f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 501 30 1362 {Rotation:[133f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 504 30 1357 {Rotation:[123f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
#GoronSit
execute if entity @s[scores={lifetime=4521}] run summon minecraft:armor_stand 492 29.4 1354 {Rotation:[118f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],Pose:{RightLeg:[-90f,0f,0f],LeftLeg:[-90f,0f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}

execute if entity @s[scores={lifetime=4540..4850}] run particle minecraft:entity_effect 489 30.1 1352 1 0 1 1 0 normal
execute if entity @s[scores={lifetime=4540..4850}] run particle minecraft:entity_effect 490 30.1 1351 1 0 0 1 0 normal
execute if entity @s[scores={lifetime=4540}] run tp @s 447.0 30.3 1358.0 45 8
execute if entity @s[scores={lifetime=4541..4629}] run tp @s ~.03146 30.3 ~.03146 45 8
execute if entity @s[scores={lifetime=4630}] run tp @s 477.4 32.5 1345.3 -120 31
execute if entity @s[scores={lifetime=4725}] run tp @s 484.8 31 1352.6 -48 18
execute if entity @s[scores={lifetime=4850}] run tp @s 558 20 1357

execute if entity @s[scores={lifetime=4851}] run kill @e[type=armor_stand,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=4851}] run kill @e[type=chicken,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=4851}] run kill @e[type=giant,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=4851}] run fill 470 26 1347 471 26 1347 minecraft:redstone_block
execute if entity @s[scores={lifetime=4852}] run fill 470 26 1347 471 26 1347 minecraft:air
execute if entity @s[scores={lifetime=4851..5400}] run particle minecraft:entity_effect 463 30.1 1352 1 1 0 1 0 normal
execute if entity @s[scores={lifetime=4851..5400}] run particle minecraft:entity_effect 464 30.1 1352 1 0 0 1 0 normal
execute if entity @s[scores={lifetime=4851..5400}] run particle minecraft:entity_effect 465 30.1 1353 1 0 1 1 0 normal
execute if entity @s[scores={lifetime=4851..5400}] run particle minecraft:entity_effect 461 30.1 1354 1 0 1 1 0 normal
execute if entity @s[scores={lifetime=4851..5400}] run particle minecraft:entity_effect 461 30.1 1353 0 0 1 1 0 normal
execute if entity @s[scores={lifetime=4851..5400}] run particle minecraft:entity_effect 462 30.1 1352 0 1 0.1 1 0 normal

#King Zora
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 460 31.5 1329 {Rotation:[0f],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:129}}],DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Mido
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 463.0 29.35 1331.0 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8375321}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6850352}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6849840}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Mido\""},SkullOwner:{Id:[I;-1296580326,723928124,-1228792323,-742224428],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmZjNGJjNTUzZDgyM2ZiMTBjZjI1MTZmYTc2YWRlZDhlYjkzNzI2YjM2ZGI5NjhiNzQyMmM5N2IwMmY0YWY0In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:4}}],NoGravity:1b,Pose:{Head:[30f,-20f,0f],LeftLeg:[-90f,-10f,0f],RightLeg:[-90f,10f,0f],LeftArm:[-30f,0f,0f],RightArm:[-30f,0f,0f]},ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc17"]}
#Twin
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 462 30 1349 {Rotation:[-8f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:10365952}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2544912}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2544912}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Twin\""},SkullOwner:{Id:[I;1646443721,-128431598,-1103119720,-645019698],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWRiZDhlYzc3NzQ1MjJjNTc1ZGNhMmM1NWU2YjI3MzUyODFlMDFlODNlYmQ3YzBiNWE0ZGZhY2E3ODIxMTQ0In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc3"]}
#KnowBrother
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 461 30 1349 {Rotation:[-10f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:8375321}}},{id:"leather_leggings",Count:1b,tag:{display:{color:6982448}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:6916655}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Know-It-All Brother\""},SkullOwner:{Id:[I;-1258722980,1235372327,-1394934071,2125302308],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGU4ZTdkNGMwZjdkMGYyY2Q3NmNhNGUwNjljM2IwNDMzYWRmNTFmYjQ2ODI0ODA3NzdiOTdkYjFhNzE1In19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:3}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc3"]}
#Gerudo
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 464 30 1348 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 463 30 1348 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 460 30 1348 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16383998}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11810403}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16383998}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Gerudo\""},SkullOwner:{Id:[I;-1066085625,1381582246,-1422536494,662140421],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzM1YzY0YmVlMjYwZGFmYTIxYWVhZmRjMWE5MDQ1ODNkZTg1NDI0ZmY3ZGFmZTIyYjZlODY0YmQ4NzljZDM0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc14"]}
#Zora
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 459 30 1349 {Rotation:[-30f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Zora\""},SkullOwner:{Id:[I;712103538,-1218687368,-2049550652,985730795],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjU1MGMzMTU2ZDQzOTI0ODlkYmViMDYwMTUxZTlmNTEyYWU5Nzg0NDlhY2Y3YTRiZTk4ZGFhODRlZDM3NzhkIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc4"]}
#Goron
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 471 30 1351 {Rotation:[75f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}
execute if entity @s[scores={lifetime=4851}] run summon minecraft:armor_stand 472 30 1356 {Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc5"]}

execute if entity @s[scores={lifetime=4871}] run tp @s 464.7 29.2 1330.7 47 3
execute if entity @s[scores={lifetime=4930}] run tp @s 464.9 32.6 1338.3 162 20
execute if entity @s[scores={lifetime=5000}] run tp @s 463.6 30.4 1332.8 160 35

execute if entity @s[scores={lifetime=5030..5240}] run particle minecraft:dust 0 1 0 .7 462 34 1332 2 2 2 0 2 normal
execute if entity @s[scores={lifetime=5050}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc17,limit=1] {Pose:{Head:[-20f,50f,0f]}}
execute if entity @s[scores={lifetime=5065}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc17,limit=1] {Pose:{Head:[-20f,-50f,0f]}}
execute if entity @s[scores={lifetime=5080}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc17,limit=1] {Pose:{Head:[-20f,0f,0f]}}
execute if entity @s[scores={lifetime=5140}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc17,limit=1] {Pose:{Head:[-40f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=5140}] run tp @e[type=armor_stand,tag=StaffRoleNpc17] 463.0 30 1331.0

execute if entity @s[scores={lifetime=5140}] run tp @s 463.4 36 1335.6 170 52
execute if entity @s[scores={lifetime=5240}] run tp @s 476.2 30 1342.8 128 -15
execute if entity @s[scores={lifetime=5241..5330}] run tp @s 476.2 30 1342.8 ~-1.055 ~-.133
execute if entity @s[scores={lifetime=5331}] run tp @s 476.2 30 1342.8 33 -27

execute if entity @s[scores={lifetime=5260}] run summon minecraft:armor_stand 458 58 1321 {Rotation:[-2f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage","StaffRoleNpc18"]}
execute if entity @s[scores={lifetime=5260}] run summon minecraft:armor_stand 466 58 1335 {Rotation:[0f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage","StaffRoleNpc19"]}
execute if entity @s[scores={lifetime=5260}] run summon minecraft:armor_stand 470 58 1344 {Rotation:[0f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage","StaffRoleNpc20"]}
execute if entity @s[scores={lifetime=5260}] run summon minecraft:armor_stand 462 58 1344 {Rotation:[0f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage","StaffRoleNpc21"]}
execute if entity @s[scores={lifetime=5260}] run summon minecraft:armor_stand 474 58 1333 {Rotation:[4f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage","StaffRoleNpc22"]}

execute if entity @s[scores={lifetime=5398}] run tp @s 558 20 1357
execute if entity @s[scores={lifetime=5399}] run time set 23000
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=Generic1]
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=Generic2]
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=Generic3]
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=Generic4]
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=Generic5]
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=Generic6]
execute if entity @s[scores={lifetime=5399}] run kill @e[type=armor_stand,tag=Generic7]

execute if entity @s[scores={lifetime=5400}] run tp @a 2038 114 1479 163 -4
execute if entity @s[scores={lifetime=5400}] run tp @s 2038 114 1479 163 -4

execute if entity @s[scores={lifetime=5401..5599}] run tp @s 2038 ~.03517 1479 163 -4
execute if entity @s[scores={lifetime=5600}] run data merge entity @e[type=armor_stand,tag=Goron7,limit=1] {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Goron\""},SkullOwner:{Id:[I;-22771749,-1645852878,-2010831545,1796200347],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjJlOWM3MTYwYmM2ODU1M2E5NzE0YmYxYTM5NmJkY2ZmZGE2YTg0MzU3OGI2ZDg3MjE0M2FkMTc0MzMyIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}]}
execute if entity @s[scores={lifetime=5600}] run tp @s 2038 121 1479

execute if entity @s[scores={lifetime=5430}] run summon minecraft:armor_stand 2057.3 153 1516.0 {Rotation:[170f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage2","StaffRoleNpc18"]}
execute if entity @s[scores={lifetime=5430}] run summon minecraft:armor_stand 2028 153 1438 {Rotation:[180f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage2","StaffRoleNpc19"]}
execute if entity @s[scores={lifetime=5430}] run summon minecraft:armor_stand 2027 153 1448 {Rotation:[180f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage2","StaffRoleNpc20"]}
execute if entity @s[scores={lifetime=5430}] run summon minecraft:armor_stand 2019.2 153 1478.3 {Rotation:[-177f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage2","StaffRoleNpc21"]}
execute if entity @s[scores={lifetime=5430}] run summon minecraft:armor_stand 2026 153 1458 {Rotation:[180f],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpcSage2","StaffRoleNpc22"]}

execute if entity @s[scores={lifetime=5630}] run kill @e[type=armor_stand,tag=StaffRoleNpcSage2]
execute if entity @s[scores={lifetime=5631}] run particle minecraft:flash 2028 154 1359 0 0 0 1 1 force
execute if entity @s[scores={lifetime=5640}] run tp @s 2031.4 154.5 1354.0 28.8 13

#Ruto
execute if entity @s[scores={lifetime=5660}] run summon minecraft:armor_stand 2025 153 1358 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11717867}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11717867}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:11717867}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Princess Ruto\""},SkullOwner:{Id:[I;-2058996143,-1247198165,-2051983518,1198816817],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTQzZjQ3NjgyMDM1ZGNiODZlMzNiYTViNGU5YWJlZWM4YjJjZmRmN2E3ZTg1ZTJiNzMzMzBkODhmYzk0ZjljIn19fQ=="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:15}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc23"]}
#Nabooru
execute if entity @s[scores={lifetime=5670}] run summon minecraft:armor_stand 2028 152.4 1358.8 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:13706753}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16116458}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16116458}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Nabooru\""},SkullOwner:{Id:[I;520982161,-1933619678,-1249163423,-1521309110],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVkYzI4ZWY2NWMwZGQ1YjFhYzEwMTZlZTQ3NTgwZDRmZWRjNTU2OGFlMjNkMWZhOGIwMTQzMDJmMWJhOWFlNSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:17}}],Pose:{RightLeg:[-45f,0f,0f],LeftLeg:[-45f,0f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc24"]}
#Impa
execute if entity @s[scores={lifetime=5680}] run summon minecraft:armor_stand 2030 154 1356.9 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:3361970}}},{id:"leather_leggings",Count:1b,tag:{display:{color:3361970}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:7500402}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Impa\""},SkullOwner:{Id:[I;16795945,-2085925979,-2064599146,-19208177],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGViZjA0ZmM2NWYwZjM1YTZlYWUzZmRlNjUzMGRhZTJlMTA5NjcxNWFmM2Q5ZjNlNmQ5Mzk5NjhmYTk4YTg4NiJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:4}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:4}}],ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc25"]}
#Darunia
execute if entity @s[scores={lifetime=5690}] run summon minecraft:armor_stand 2027 153.5 1357 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:12691512}}},{id:"leather_leggings",Count:1b,tag:{display:{color:12691512}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:12691512}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Darunia Happy\""},SkullOwner:{Id:[I;356048799,2010137423,-1372413641,-1896162445],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGZjNmQ5ODdlNDE4MDk0MGY1YjAxYjU1ODAyMzg1NzNhMTE2ZjJjNWJhZGY3NzM5NTZkZWI0YTZlZDRkOTY0YSJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:9}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc26"]}
#Saria
execute if entity @s[scores={lifetime=5700}] run summon minecraft:armor_stand 2027 154.8 1357.3 {Rotation:[0f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:7513382}}},{id:"leather_leggings",Count:1b,tag:{display:{color:8375321}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:8375321}}},{id:player_head,Count:1b,tag:{display:{Name:"\"Saria\""},SkullOwner:{Id:[I;-477273199,-1722397882,-1455817788,2100470143],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzIyOGVlZmU3YWVjZjFkYWUzM2E5Y2I2ZDcyYWYxYzRjZDI2YmQzNjM1N2QzMjkyZGJlOWNlOTIzNjhhOWM5NyJ9fX0="}]}}}}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:1}}],Pose:{RightArm:[-40f,0f,0f],LeftArm:[-40f,0f,0f],RightLeg:[40f,-20f,0f],LeftLeg:[40f,20f,0f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc27"]}

execute if entity @s[scores={lifetime=5720}] run tp @s 2027.5 154 1359.3 180 -8

execute if entity @s[scores={lifetime=5760}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc27,limit=1] {Pose:{Head:[20f,0f,0f]}}
execute if entity @s[scores={lifetime=5760}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc26,limit=1] {Pose:{Head:[-20f,0f,0f]}}
execute if entity @s[scores={lifetime=5785}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc26,limit=1] {Pose:{RightArm:[0f,0f,0f],LeftArm:[-90f,60f,0f]}}
execute if entity @s[scores={lifetime=5788}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc26,limit=1] {Pose:{RightArm:[-90f,-60f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=5790}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc26,limit=1] {Pose:{RightArm:[0f,0f,0f],LeftArm:[-90f,60f,0f]}}
execute if entity @s[scores={lifetime=5792}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc26,limit=1] {Pose:{RightArm:[-90f,-60f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=5794}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc26,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=5794}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc27,limit=1] {Pose:{Head:[0f,0f,0f]}}

execute if entity @s[scores={lifetime=5790}] run tp @s 2029.3 152.5 1361.0 150 -10
execute if entity @s[scores={lifetime=5810}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc24,limit=1] {Pose:{Head:[-20f,80f,0f]}}
execute if entity @s[scores={lifetime=5830}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc23,limit=1] {Rotation:[-30f],Pose:{Head:[20f,-40f,0f]}}
execute if entity @s[scores={lifetime=5866}] run tp @s 2031.7 153.5 1358.6 135 0
execute if entity @s[scores={lifetime=5910}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc25,limit=1] {Pose:{Head:[-40f,0f,0f]}}
execute if entity @s[scores={lifetime=5970..6109}] run tp @s 2031.7 ~.36071 1358.6 135 ~-.642
execute if entity @s[scores={lifetime=6110}] run tp @s 2031.7 204 1358.6 135 -90
execute if entity @s[scores={lifetime=6110}] run kill @e[type=armor_stand,tag=StaffRoleNpc]

execute if entity @s[scores={lifetime=6150}] run tp @a 1020 15 1394
execute if entity @s[scores={lifetime=6150}] run tp @s 1020 15 1394

execute if entity @s[scores={lifetime=6200}] run time set day
execute if entity @s[scores={lifetime=6200}] run loot spawn 993 4 1391 loot minecraft:blocks/player_head
#Navi
execute if entity @s[scores={lifetime=6270}] run summon minecraft:armor_stand 994 14 1395 {Tags:["StaffRoleNpc","StaffRoleNpc28"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[-90f],ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959}
#Sword
execute if entity @s[scores={lifetime=6270}] run summon minecraft:armor_stand 994.45 12.1 1394.3 {Rotation:[90f],HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}],Pose:{RightArm:[89f,89f,9f]},NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc"]}
#Player
execute if entity @s[scores={lifetime=6270}] run summon minecraft:armor_stand 993 12 1394 {Rotation:[-90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:6369024}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:40203}}},{}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc29"]}
execute if entity @s[scores={lifetime=6270}] as @a run loot replace entity @e[type=armor_stand,tag=StaffRoleNpc29] armor.head loot minecraft:blocks/player_head
execute if entity @s[scores={lifetime=6270}] run kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]

execute if entity @s[scores={lifetime=6270}] run tp @s 998 31 1389 45 0
execute if entity @s[scores={lifetime=6271..6559}] run tp @s ~-.00692 ~-.06228 ~.01038 ~-.017 ~.086
execute if entity @s[scores={lifetime=6560}] run tp @s 992.8 11.2 1393.2 -45 17
execute if entity @s[scores={lifetime=6561..6709}] run tp @s ~.01275 ~.00201 ~.00134 ~.557 ~-.282

execute if entity @s[scores={lifetime=6590}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc29,limit=1] {Pose:{Head:[20f,0f,0f],RightArm:[-70f,0f,0f],LeftArm:[-70f,0f,0f]}}
execute if entity @s[scores={lifetime=6690}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc29,limit=1] {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f]}}

execute if entity @s[scores={lifetime=6710}] run tp @s 993.7 13 1394.3 -35 -40
execute if entity @s[scores={lifetime=6775}] run tp @s 997.3 15.5 1387.3 facing entity @e[type=armor_stand,tag=StaffRoleNpc28,limit=1]
execute if entity @s[scores={lifetime=6850..7049}] run tp @s 997.3 15.5 1387.3 facing entity @e[type=armor_stand,tag=StaffRoleNpc28,limit=1]

execute if entity @s[scores={lifetime=6775}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc29,limit=1] {Pose:{Head:[-20f,0f,0f]}}
execute if entity @s[scores={lifetime=6849}] run tag @e[type=armor_stand,tag=StaffRoleNpc28] add Stop
execute if entity @s[scores={lifetime=6850..7049}] as @e[type=armor_stand,tag=StaffRoleNpc28] at @s run tp @s ~.11 ~.14 ~-.005

execute if entity @s[scores={lifetime=7050}] as @e[type=armor_stand,tag=StaffRoleNpc28] at @s run tp @s 1018 48 1394
execute if entity @s[scores={lifetime=7050}] run data merge entity @e[type=armor_stand,tag=StaffRoleNpc29,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={lifetime=7050}] run tp @s 991 10.7 1394 -90 -40

execute if entity @s[scores={lifetime=7103..7138}] as @e[type=armor_stand,tag=StaffRoleNpc29] at @s run tp @s ~ ~ ~ ~-5 ~
execute if entity @s[scores={lifetime=7139}] as @e[type=armor_stand,tag=StaffRoleNpc29] at @s run tp @s ~ ~ ~ 90 ~

execute if entity @s[scores={lifetime=7150}] run tp @s 991 13.3 1394 -90 40
execute if entity @s[scores={lifetime=7151..7256}] as @e[type=armor_stand,tag=StaffRoleNpc29] at @s run tp @s ^ ^ ^.1

execute if entity @s[scores={lifetime=7165..7389}] run tp @s ~.00977 ~-.01155 1394 -90 ~-.311
execute if entity @s[scores={lifetime=7390}] run tp @s 993.2 10.7 1394 -90 -30

execute if entity @s[scores={lifetime=7600}] run kill @e[type=armor_stand,tag=StaffRoleNpc]
execute if entity @s[scores={lifetime=7600}] run tp @a 828 84 410
execute if entity @s[scores={lifetime=7600}] run tp @s 828 84 410

execute if entity @s[scores={lifetime=7716}] run tp @e[type=armor_stand,tag=Zelda] 823.4 89.5 410.5 90 0

execute if entity @s[scores={lifetime=7716}] run tp @s 837.3 86.5 416.8 130 -20
execute if entity @s[scores={lifetime=7826}] run tp @s 831 92 412 103 15
execute if entity @s[scores={lifetime=7827..7989}] run tp @s ~-.00920 ~-.03374 ~-.00552 103 ~-.171
execute if entity @s[scores={lifetime=7990}] run tp @s 829.5 86.5 411.1 103 -13
execute if entity @s[scores={lifetime=7980}] run loot spawn 841 88 417 loot minecraft:blocks/player_head

#Player
execute if entity @s[scores={lifetime=7990}] run summon minecraft:armor_stand 830 88 410 {Rotation:[90f],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:6369024}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:40203}}},{}],HandItems:[{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}},{id:"minecraft:stone",Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,ShowArms:1b,Invisible:1b,DisabledSlots:4144959,Tags:["StaffRoleNpc","StaffRoleNpc29"]}
execute if entity @s[scores={lifetime=7995}] as @a run loot replace entity @e[type=armor_stand,tag=StaffRoleNpc29] armor.head loot minecraft:blocks/player_head
execute if entity @s[scores={lifetime=7995}] run kill @e[type=item,nbt={Item:{id:"minecraft:player_head"}}]

execute if entity @s[scores={lifetime=8000..8015}] as @e[type=armor_stand,tag=StaffRoleNpc29] at @s run tp @s ^ ^ ^.1

execute if entity @s[scores={lifetime=8034}] run tp @s 823 89.5 412.0 177 0
execute if entity @s[scores={lifetime=8040..8099}] run tp @s ~.005 ~.025 ~.01666 ~.733 ~.516
execute if entity @s[scores={lifetime=8100}] run tp @s 823.3 91 413.0 -139 31

#Zelda
execute if entity @s[scores={lifetime=8040..8049}] as @e[type=armor_stand,tag=Zelda] at @s run tp @s ~ ~ ~ ~-10 ~
execute if entity @s[scores={lifetime=8050}] as @e[type=armor_stand,tag=Zelda] at @s run tp @s ~ ~ ~ -90 ~

execute if entity @s[scores={lifetime=8110}] run tp @s 826.8 88 411 -110 -1
execute if entity @s[scores={lifetime=8180}] run tp @s 825 89.1 411.3 111 -11
execute if entity @s[scores={lifetime=8261}] run tp @s 826 89 416 180 5

execute if entity @s[scores={lifetime=8700..}] run kill @e[type=armor_stand,tag=StaffRoleNpc29]
execute if entity @s[scores={lifetime=8700..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=8700..}] run tp @a 913 10 -519
execute if entity @s[scores={lifetime=8700..}] run tag @a remove StaffRole
execute if entity @s[scores={lifetime=8700..}] run tag @a add InThankYou
execute if entity @s[scores={lifetime=8700..}] run tag @a add NoTeleport
execute if entity @s[scores={lifetime=8700..}] run kill @s

#Titles
execute if entity @s[scores={lifetime=1}] run title @a times 5 30 5
execute if entity @s[scores={lifetime=1}] run title @a subtitle "Wall of Donators:"

execute if entity @s[scores={lifetime=1}] run title @a title "Created By Rivero"
execute if entity @s[scores={lifetime=81}] run title @a title "Drearion"
execute if entity @s[scores={lifetime=160}] run title @a title "Snow_"
execute if entity @s[scores={lifetime=239}] run title @a title "TyranicalFilms"
execute if entity @s[scores={lifetime=318}] run title @a title "Jack Sura"
execute if entity @s[scores={lifetime=397}] run title @a title "Gibby64"
execute if entity @s[scores={lifetime=476}] run title @a title "RS_Mind"
execute if entity @s[scores={lifetime=555}] run title @a title "BlumeL"
execute if entity @s[scores={lifetime=634}] run title @a title "P403N1XRIS3N"
execute if entity @s[scores={lifetime=713}] run title @a title "hxpnxtic"
execute if entity @s[scores={lifetime=792}] run title @a title "AlaskanGopher"
execute if entity @s[scores={lifetime=871}] run title @a title "rabidgoodra27"
execute if entity @s[scores={lifetime=950}] run title @a title "TopTrash"
execute if entity @s[scores={lifetime=1029}] run title @a title "Link9847"
execute if entity @s[scores={lifetime=1108}] run title @a title "TUMM11"
execute if entity @s[scores={lifetime=1187}] run title @a title "Squirtlebub"
execute if entity @s[scores={lifetime=1266}] run title @a title "FireglassFZ"
execute if entity @s[scores={lifetime=1345}] run title @a title "Dekudekudeku"
execute if entity @s[scores={lifetime=1424}] run title @a title "neexchickenlegs"
execute if entity @s[scores={lifetime=1503}] run title @a title "ImNotaEGirl"
execute if entity @s[scores={lifetime=1582}] run title @a title "I3ladeDragon"
execute if entity @s[scores={lifetime=1661}] run title @a title "JasonCastle"
execute if entity @s[scores={lifetime=1740}] run title @a title "Daveak99"
execute if entity @s[scores={lifetime=1819}] run title @a title "DaveDub"
execute if entity @s[scores={lifetime=1898}] run title @a title "Link703"
execute if entity @s[scores={lifetime=1977}] run title @a title "SaintHyde"
execute if entity @s[scores={lifetime=2056}] run title @a title "CreepyMang"
execute if entity @s[scores={lifetime=2135}] run title @a title "Crisscross117"
execute if entity @s[scores={lifetime=2214}] run title @a title "FireDragon_9"
execute if entity @s[scores={lifetime=2293}] run title @a title "TheTraveler1230"
execute if entity @s[scores={lifetime=2372}] run title @a title "Nyuha"
execute if entity @s[scores={lifetime=2451}] run title @a title "sapphicruby"
execute if entity @s[scores={lifetime=2530}] run title @a title "AttackingTucans"
execute if entity @s[scores={lifetime=2609}] run title @a title "DNPerkins"
execute if entity @s[scores={lifetime=2688}] run title @a title "RuleLordGanon"
execute if entity @s[scores={lifetime=2767}] run title @a subtitle "Bagged Milk"
execute if entity @s[scores={lifetime=2767}] run title @a title "Aokax"
execute if entity @s[scores={lifetime=2846}] run title @a title "BadNewsBearsBnB"
execute if entity @s[scores={lifetime=2925}] run title @a title "19techguy91"
execute if entity @s[scores={lifetime=3004}] run title @a title "dooweillo"
execute if entity @s[scores={lifetime=3083}] run title @a title "ValiantFan771"
execute if entity @s[scores={lifetime=3162}] run title @a title "Shadow3452"
execute if entity @s[scores={lifetime=3241}] run title @a title "Zappyjro"
execute if entity @s[scores={lifetime=3320}] run title @a title "Jonathon22"
execute if entity @s[scores={lifetime=3399}] run title @a title "Brotacuss"
execute if entity @s[scores={lifetime=3478}] run title @a title "Sernai"
execute if entity @s[scores={lifetime=3557}] run title @a title "Rapid_Glitch"
execute if entity @s[scores={lifetime=3636}] run title @a title "endmeeh"
execute if entity @s[scores={lifetime=3715}] run title @a title "Roster1936"
execute if entity @s[scores={lifetime=3794}] run title @a title "Dinodan32"
execute if entity @s[scores={lifetime=3873}] run title @a title "acatterz"
execute if entity @s[scores={lifetime=3952}] run title @a title "WoahItsWeej"
execute if entity @s[scores={lifetime=4031}] run title @a title "MCas86"
execute if entity @s[scores={lifetime=4110}] run title @a title "masj2"
execute if entity @s[scores={lifetime=4189}] run title @a title "FTWhite"
execute if entity @s[scores={lifetime=4268}] run title @a title "Drakon95"
execute if entity @s[scores={lifetime=4347}] run title @a title "funzo88"
execute if entity @s[scores={lifetime=4426}] run title @a title "Cas3y"
execute if entity @s[scores={lifetime=4505}] run title @a title "DarioVic"
execute if entity @s[scores={lifetime=4584}] run title @a title "Phaleur"
execute if entity @s[scores={lifetime=4663}] run title @a title "FROGGER12353"
execute if entity @s[scores={lifetime=4742}] run title @a title "DrJeckyl"
execute if entity @s[scores={lifetime=4821}] run title @a title "tyranus24"
execute if entity @s[scores={lifetime=4900}] run title @a title "AmethystRemnant"
execute if entity @s[scores={lifetime=4979}] run title @a title "gio1135"
execute if entity @s[scores={lifetime=5058}] run title @a title "Dust_Skull105"
execute if entity @s[scores={lifetime=5137}] run title @a title "Miniack"
execute if entity @s[scores={lifetime=5216}] run title @a title "XEmblem"
execute if entity @s[scores={lifetime=5295}] run title @a title "MARIOTHEEGG"
execute if entity @s[scores={lifetime=5374}] run title @a title "Smaller_Abyss"
execute if entity @s[scores={lifetime=5453}] run title @a title "A45"
execute if entity @s[scores={lifetime=5532}] run title @a title "LegendaryP0tat0"
execute if entity @s[scores={lifetime=5611}] run title @a title "R4ndyx"
execute if entity @s[scores={lifetime=5690}] run title @a title "FelLab37"
execute if entity @s[scores={lifetime=5769}] run title @a title "Mjkite30"
execute if entity @s[scores={lifetime=5848}] run title @a title "eKongDiddy"
execute if entity @s[scores={lifetime=5927}] run title @a title "Kaeso Clarus"
execute if entity @s[scores={lifetime=6006}] run title @a title "papamario12"
execute if entity @s[scores={lifetime=6085}] run title @a title "Zombie_Slayer_4"
