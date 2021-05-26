#Rocks
fill 1450 67 2706 1450 67 2706 minecraft:grass_block replace minecraft:dirt

#Hookshot
execute unless block 1397 33 2766 minecraft:gold_block if entity @e[type=area_effect_cloud,tag=Hookshot,x=1397,y=39,z=2759,dx=0,dy=1,dz=0] run fill 1399 36 2762 1395 38 2762 minecraft:water
execute unless block 1397 33 2766 minecraft:gold_block if entity @e[type=area_effect_cloud,tag=Hookshot,x=1397,y=39,z=2759,dx=0,dy=1,dz=0] run fill 1397 41 2761 1397 41 2761 minecraft:water
execute unless block 1397 33 2766 minecraft:gold_block if entity @e[type=area_effect_cloud,tag=Hookshot,x=1397,y=39,z=2759,dx=0,dy=1,dz=0] run fill 1397 33 2766 1397 33 2766 minecraft:gold_block

#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run time add 10
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music

#Secret
execute if entity @a[x=1397,y=41.99,z=2763,dx=0,dz=0] run tp @a 1397.0 58 2693

#Scarecrow
execute if entity @a[tag=LearnScarecrowSong2] run scoreboard players set @e[type=armor_stand,tag=Bonooru2] text 2

#Scarecrow Spot
execute if entity @a[x=1440,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1448 68 2691 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1440,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=1356,y=72,z=2686,dx=12,dz=7] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1360 80 2695 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1356,y=72,z=2686,dx=12,dz=7] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=1440,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[x=1356,y=72,z=2686,dx=12,dz=7] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=1440,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[x=1356,y=72,z=2686,dx=12,dz=7] run tag @a remove GreenNaviSpot
execute if entity @a[x=1440,y=63,z=2682,dx=10,dy=4,dz=11] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot1] run summon minecraft:armor_stand 1448 65.8 2691 {Tags:["ScarecrowSpot","ScarecrowSpot1"],Rotation:[135f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}
execute if entity @a[x=1356,y=72,z=2686,dx=12,dz=7] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot2] run summon minecraft:armor_stand 1360 77.8 2695.1 {Tags:["ScarecrowSpot","ScarecrowSpot2"],Rotation:[180f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Heart Piece Chest
execute if block 1361 93 2701 minecraft:chest{Items:[]} run tag @a add ChildLakeHeartPiece

#Bean Spot
execute as @e[type=area_effect_cloud,tag=BeanSpot] at @a run function ocarina_of_time:moving_things/lake_hylia_adult/bean_spot

#Grave
execute as @a at @s if block ~.5 ~ ~ minecraft:stone_stairs if entity @s[x=1350,y=71,z=2761,dx=0,dz=0] unless block 1350 71 2761 minecraft:stone_stairs run function ocarina_of_time:moving_things/lake_hylia_adult/grave

#Scientist Text
execute if entity @a[x=1359,y=55,z=2664,dx=5,dz=8] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tag @a add StartDive
execute if entity @a[tag=StartDive] if entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tag @a remove StartDive

execute as @e[type=armor_stand,tag=Scientist2] unless entity @s[scores={text=2..}] at @a[tag=StartDive] if entity @a[y=53,dy=0.6] run scoreboard players set @s text 2
execute as @e[type=armor_stand,tag=Scientist2] unless entity @s[scores={text=3..}] at @a[tag=StartDive] if entity @a[y=51,dy=0.6] run scoreboard players set @s text 3
execute as @e[type=armor_stand,tag=Scientist2] unless entity @s[scores={text=4..}] at @a[tag=StartDive] if entity @a[y=50,dy=0.6] run scoreboard players set @s text 4
execute as @e[type=armor_stand,tag=Scientist2] unless entity @s[scores={text=5..}] at @a[tag=StartDive] if entity @a[y=49,dy=0.6] run scoreboard players set @s text 5
execute as @e[type=armor_stand,tag=Scientist2] unless entity @s[scores={text=6..}] at @a[tag=StartDive] if entity @a[y=47,dy=0.7] run scoreboard players set @s text 6
execute as @e[type=armor_stand,tag=Scientist2] unless entity @s[scores={text=7..}] at @a[tag=StartDive] if entity @a[y=45,dy=0.6] run scoreboard players set @s text 7
execute as @e[type=armor_stand,tag=Scientist2] unless entity @s[scores={text=8..}] at @a[tag=StartDive] if entity @a[y=44,dy=0.6] run scoreboard players set @s text 8

#Gold Skulltula
execute unless entity @e[type=zombie,tag=GoldSkull71] if entity @e[type=armor_stand,tag=Scientist2] if block 1357 46 2662 minecraft:air unless block 1357 46 2662 minecraft:gold_block run tag @a add RemoveLakeGoldSkull
execute unless entity @e[type=zombie,tag=GoldSkull71] run fill 1357 46 2662 1357 46 2662 minecraft:gold_block
