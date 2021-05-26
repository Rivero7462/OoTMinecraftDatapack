#Cutscene Bridge
execute if entity @a[tag=ZeldaCastle] run fill 969 66 1910 978 66 1920 minecraft:air
execute if entity @a[tag=ZeldaCastle] run fill 968 67 1920 978 77 1910 minecraft:air
execute if entity @a[tag=ZeldaCastle] run fill 981 71 1910 981 71 1910 minecraft:fire
execute if entity @a[tag=ZeldaCastle] run fill 966 71 1910 966 71 1910 minecraft:fire
execute if entity @a[tag=ZeldaCastle] run fill 965 61 1910 964 61 1910 minecraft:air
execute if entity @a[tag=ZeldaCastle] run fill 965 61 1910 965 61 1910 minecraft:redstone_block

#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] unless entity @a[tag=StopStalchildSpawn] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run time add 10
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] unless entity @a[tag=ZeldaCastle2] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] unless entity @a[tag=ZeldaCastle2] run scoreboard players add @a time 20
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field_morning
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field

#Ocarina
execute if entity @a[tag=NewOcarina] run data merge entity @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}},limit=1] {Age:0}

#Running Man
execute if entity @a[tag=RunningMan] run fill 909 74 2046 909 74 2046 minecraft:gold_block
execute if entity @a[tag=RunningMan] if block 909 74 2046 minecraft:gold_block run tag @a remove RunningMan

execute unless entity @e[type=armor_stand,tag=RunningMan] if block 909 74 2046 minecraft:gold_block unless entity @a[tag=Adult] unless block 909 74 2044 minecraft:gold_block run summon minecraft:armor_stand 844 58 1941 {Tags:["Npc","RunningMan"],NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[-16.7f],CustomName:"\"Man\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1},{id:"leather_leggings",Count:1,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16383998}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Running Man\"}",Id:[I;1644208519,-181777806,-1507988755,-1918951128],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmNlYmVhYzk0YzExZDRiODU1YzAyYjQ5NmM5OTMxNDAxZGMzYTZhZjM5YTlkNjM1ZDc5YzM0MDhlZGJiZDI2NCJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:2}},{id:stone,Count:1b,tag:{CustomModelData:2}}],DisabledSlots:4144959}
execute unless entity @e[type=armor_stand,tag=RunningMan] if block 909 74 2046 minecraft:gold_block unless entity @a[tag=Adult] if block 909 74 2044 minecraft:gold_block run summon minecraft:armor_stand 844 58 1941 {Tags:["Npc","RunningMan"],NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[-16.7f],CustomName:"\"Man\"",CustomNameVisible:0,ArmorItems:[{id:"leather_boots",Count:1},{id:"leather_leggings",Count:1,tag:{display:{color:16383998}}},{id:"leather_chestplate",Count:1,tag:{display:{color:16383998}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Bunny Hood\"}",Id:[I;-1768369996,-409842623,-1823819615,1459092386],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWY3ZTI4OGNjYjBjZDdiNWMzZmM2Y2MzNjVkMTBmYTliMjk3NzRhYjEzNTU1NzZlMTM5YTE1ZjliM2M3Mzk2NiJ9fX0="}]}}}}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:2}},{id:stone,Count:1b,tag:{CustomModelData:2}}],DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=RunningMan] at @s if block 909 74 2046 minecraft:gold_block unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/hyrule_field/running_man
execute as @e[type=armor_stand,tag=RunningMan] at @s if block 909 74 2044 minecraft:gold_block run function ocarina_of_time:moving_things/hyrule_field/running_man
execute as @e[type=armor_stand,tag=RunningMan] at @s if block 909 74 2044 minecraft:gold_block run function ocarina_of_time:moving_things/hyrule_field/running_man

#Enemies
function ocarina_of_time:moving_things/hyrule_field/enemies/enemies

#Owl Lake Teleport
execute if entity @a[tag=InLakeChild] run tag @a remove InLakeChild

#Rocks
fill -587 64 -629 -583 64 -633 minecraft:grass_block replace minecraft:dirt

#Mountain Ring
execute unless entity @a[tag=Adult] run fill 1137 158 1952 1195 158 1894 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult,tag=MountainRing] run fill 1137 158 1952 1195 158 1894 minecraft:smooth_quartz replace minecraft:red_concrete
execute if entity @a[tag=Adult] unless entity @a[tag=MountainRing] run fill 1137 158 1952 1195 158 1894 minecraft:red_concrete replace minecraft:smooth_quartz

#Adult/Child
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_things/hyrule_field/adult
execute unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/hyrule_field/child

#Big Fairies
execute positioned 1083 67 2030 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1083 67 2030 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 1083 67 2030 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 1083 67 2030 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon
execute positioned 831 32 2217 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 831 32 2217 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 831 32 2217 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 831 32 2217 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 831 32 2217 unless entity @a[distance=..5] positioned 1083 67 2030 unless entity @a[distance=..5] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 831 32 2217 unless entity @a[distance=..5] positioned 1083 67 2030 unless entity @a[distance=..5] run tag @a remove GreenNaviSpot

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/hyrule_field/pots

#Grottos
#Web
execute if block 751 34 2039 minecraft:cobweb if entity @e[type=arrow,tag=Fire,x=751,y=34,z=2036,dx=3,dy=6,dz=3] run function ocarina_of_time:moving_things/hyrule_field/grottos/web_1
execute if block 760 34 2036 minecraft:cobweb if entity @e[type=arrow,tag=Fire,x=760,y=34,z=2036,dx=3,dy=6,dz=3] run function ocarina_of_time:moving_things/hyrule_field/grottos/web_2
execute if block 759 34 2048 minecraft:cobweb if entity @e[type=arrow,tag=Fire,x=755,y=34,z=2047,dx=4,dy=6,dz=2] run function ocarina_of_time:moving_things/hyrule_field/grottos/web_3
execute if entity @a[tag=ShardAgony,x=765,y=69,z=2033,dx=4,dz=4] run tag @a add ShardAgonyStart
execute if entity @a[tag=ShardAgony,x=824,y=56,z=2205,dx=4,dz=4] run tag @a add ShardAgonyStart
execute if entity @a[tag=ShardAgony,x=1027,y=67,z=1891,dx=4,dz=4] run tag @a add ShardAgonyStart
execute if entity @a[tag=ShardAgony,x=846,y=58,z=1942,dx=4,dz=4] run tag @a add ShardAgonyStart
execute if entity @a[tag=ShardAgony] unless entity @a[x=846,y=58,z=1942,dx=4,dz=4] unless entity @a[x=1027,y=67,z=1891,dx=4,dz=4] unless entity @a[x=824,y=56,z=2205,dx=4,dz=4] unless entity @a[x=765,y=69,z=2033,dx=4,dz=4] run tag @a remove ShardAgonyStart

#Business Scrub Heart Piece
execute positioned 830 31 2212 if entity @a[distance=..10,nbt={Inventory:[{tag:{HeartPiece:1b}}]}] run fill 830 30 2212 830 30 2212 minecraft:gold_block
