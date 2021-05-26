#Zora
#1
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Zora9] at @s run tp @s ~ 65 ~
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Zora9] at @s unless entity @a[x=769,y=59,z=2703,dx=6,dy=7,dz=6] run tp @s ~ 45 ~
#2
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Zora10] at @s run tp @s ~ 65 ~
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Zora10] at @s unless entity @a[x=748,y=63,z=2696,dx=7,dy=4,dz=7] run tp @s ~ 45 ~

#Music
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] unless entity @a[tag=Indoors] run tag @a add HyruleMusic
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] unless entity @a[tag=WaterMedallion2] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[tag=HyruleMusic,scores={time=23600..23605}] unless entity @a[tag=Indoors] run tag @a remove HyruleMusic
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/morning_hyrule_field
execute if entity @a[scores={time=23001..23009}] unless entity @a[tag=Indoors] run time add 10
execute if entity @a[scores={time=13001..13010}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/night
execute if entity @a[scores={time=13001..13020}] unless entity @a[tag=Indoors] run scoreboard players add @a time 20
execute if entity @a[tag=!StaffRole,scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field_morning
execute if entity @a[tag=!StaffRole,scores={time=13001..23000}] run stopsound @a music minecraft:hyrule_field

#Enemies
function ocarina_of_time:moving_things/lake_hylia_child/enemies/enemies

#Owl
execute as @e[type=armor_stand,tag=OwlStand10] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=armor_stand,tag=OwlFly] at @s run function ocarina_of_time:moving_things/lake_hylia_child/owl
execute if entity @a[tag=Fly] unless entity @e[type=area_effect_cloud,tag=Fly] run summon minecraft:area_effect_cloud 730.523 73.00000 2760.502 {Tags:["Fly"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=Fly] at @s run function ocarina_of_time:moving_things/lake_hylia_child/fly

#Grave
execute as @a at @s unless entity @e[type=armor_stand,tag=OwlStand10,x=730,y=73,z=2761,dx=0,dz=0] if block ~.5 ~ ~ minecraft:stone_stairs if entity @s[x=729,y=71,z=2761,dx=0,dz=0] unless block 729 71 2761 minecraft:stone_stairs run function ocarina_of_time:moving_things/lake_hylia_child/grave

#Bottle
execute if entity @e[type=armor_stand,tag=BottleLetter] run particle minecraft:bubble_column_up 775 59 2712.3 .1 .1 .1 0 1 normal
execute as @e[type=armor_stand,tag=BottleLetter] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run give @a minecraft:shears{display:{Name:"{\"text\":\"Letter\"}"},Unbreakable:1b,Damage:14,HideFlags:63,BottleLetter:1b}
execute as @e[type=armor_stand,tag=BottleLetter] at @s positioned ~ ~1.8 ~ if entity @a[distance=..1] run kill @s
execute if entity @a[nbt={Inventory:[{tag:{BottleLetter:1b}}]}] unless block 763 66 2674 minecraft:gold_block run tellraw @a ["",{"text":"It looks like there is something already inside this bottle. It's a "},{"text":"letter","color":"red"},{"text":": \""},{"text":"Help me. I'm waiting for you inside","color":"light_purple"},{"text":" Lord Jabu-Jabu's","color":"yellow"},{"text":" belly. -","color":"light_purple"},{"text":"Ruto","color":"yellow"},{"text":"  PS: Don't tell my father!","color":"light_purple"},{"text":"\""}]
execute if entity @a[nbt={Inventory:[{tag:{BottleLetter:1b}}]}] unless block 763 66 2674 minecraft:gold_block run fill 763 66 2674 763 66 2674 minecraft:gold_block

#Rocks
fill 829 67 2706 829 67 2706 minecraft:grass_block replace minecraft:dirt

#Bug Grass
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/lake_hylia_child/grass

#Adult/Child
execute if entity @a[tag=Adult] run function ocarina_of_time:moving_things/lake_hylia_child/adult
execute unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/lake_hylia_child/child

#Secret
execute if entity @a[x=776,y=41.99,z=2763,dx=0,dz=0] run tp @a 776.0 58 2693

#Scarecrow
execute if entity @e[type=area_effect_cloud,tag=Songs,tag=Scarecrow] run scoreboard players set @e[type=armor_stand,tag=Bonooru2] text 3

#Scarecrow Spot
execute if entity @a[tag=Adult] if entity @a[x=819,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 827 68 2691 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if entity @a[x=819,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[x=735,y=72,z=2686,dx=12,dz=7] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 739 80 2695 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if entity @a[x=735,y=72,z=2686,dx=12,dz=7] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] positioned 813 66 2778 if entity @a[distance=..8] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 813 68 2778 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] positioned 813 66 2778 if entity @a[distance=..8] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[x=819,y=63,z=2682,dx=10,dy=4,dz=11] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot1] run summon minecraft:armor_stand 827 65.8 2691 {Tags:["ScarecrowSpot","ScarecrowSpot1"],Rotation:[135f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if entity @a[x=735,y=72,z=2686,dx=12,dz=7] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot2] run summon minecraft:armor_stand 739 77.8 2695.1 {Tags:["ScarecrowSpot","ScarecrowSpot2"],Rotation:[180f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] positioned 813 66 2778 if entity @a[distance=..8] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot3] run summon minecraft:armor_stand 813 65.8 2778 {Tags:["ScarecrowSpot","ScarecrowSpot3"],Rotation:[90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Big Fairies
execute positioned 817 66 2782 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @e[type=armor_stand,tag=GreenNavi1] run summon minecraft:armor_stand 817 66 2782 {Tags:["GreenNavi","GreenNavi1"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 817 66 2782 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 817 66 2782 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 817 66 2782 unless entity @a[distance=..5] positioned 813 66 2778 unless entity @a[distance=..8] unless entity @a[x=819,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[x=735,y=72,z=2686,dx=12,dz=7] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 817 66 2782 unless entity @a[distance=..5] run kill @e[type=armor_stand,tag=GreenNavi1]
execute if entity @a[tag=GreenNaviSpot] positioned 817 66 2782 unless entity @a[distance=..5] positioned 813 66 2778 unless entity @a[distance=..8] unless entity @a[x=819,y=63,z=2682,dx=10,dy=4,dz=11] unless entity @a[x=735,y=72,z=2686,dx=12,dz=7] run tag @a remove GreenNaviSpot

#Heart Piece Chest
execute if entity @a[tag=ChildLakeHeartPiece] run data merge block 740 93 2701 {Items:[]}
execute if entity @a[tag=ChildLakeHeartPiece] if block 740 93 2701 minecraft:chest{Items:[]} run tag @a remove ChildLakeHeartPiece

#Scientist Text
execute if entity @a[tag=NoLakePrize] run tag @e[type=armor_stand,tag=Scientist1] add Prize
execute if entity @a[tag=NoLakePrize] if entity @e[type=armor_stand,tag=Scientist1,tag=Prize] run tag @a remove NoLakePrize
execute if entity @a[x=738,y=55,z=2664,dx=5,dz=8] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tag @a add StartDive
execute if entity @a[tag=StartDive] if entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] run tag @a remove StartDive

execute as @e[type=armor_stand,tag=Scientist1] unless entity @s[scores={text=2..}] at @a[tag=StartDive] if entity @a[y=53,dy=0.6] run scoreboard players set @s text 2
execute as @e[type=armor_stand,tag=Scientist1] unless entity @s[scores={text=3..}] at @a[tag=StartDive] if entity @a[y=51,dy=0.6] run scoreboard players set @s text 3
execute as @e[type=armor_stand,tag=Scientist1] unless entity @s[scores={text=4..}] at @a[tag=StartDive] if entity @a[y=50,dy=0.6] run scoreboard players set @s text 4
execute as @e[type=armor_stand,tag=Scientist1] unless entity @s[scores={text=5..}] at @a[tag=StartDive] if entity @a[y=49,dy=0.6] run scoreboard players set @s text 5
execute as @e[type=armor_stand,tag=Scientist1] unless entity @s[scores={text=6..}] at @a[tag=StartDive] if entity @a[y=47,dy=0.7] run scoreboard players set @s text 6
execute as @e[type=armor_stand,tag=Scientist1] unless entity @s[scores={text=7..}] at @a[tag=StartDive] if entity @a[y=45,dy=0.6] run scoreboard players set @s text 7
execute as @e[type=armor_stand,tag=Scientist1] unless entity @s[scores={text=8..}] at @a[tag=StartDive] if entity @a[y=44,dy=0.6] run scoreboard players set @s text 8

#Gold Skulltula
execute unless block 739 69 2696 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=738,y=71,z=2691,dx=2,dz=2] run summon minecraft:zombie 739 71 2694 {Tags:["GoldSkull15","GoldSkull","Floor","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:10}}],Health:7,Invulnerable:1b,PersistenceRequired:1b,IsBaby:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/gold_skulltula",ArmorDropChances:[0f,0f,0f,0f]}
execute unless block 739 69 2696 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=738,y=71,z=2691,dx=2,dz=2] run fill 739 69 2696 739 69 2696 minecraft:gold_block
execute unless block 739 69 2696 minecraft:gold_block as @e[type=turtle,tag=FakeBug,x=738,y=71,z=2691,dx=2,dz=2] run kill @s

#Remove
execute if entity @a[tag=RemoveLakeGoldSkull] run tp @e[type=zombie,tag=GoldSkull71] 740 27 2664
execute if entity @a[tag=RemoveLakeGoldSkull] run tag @a remove RemoveLakeGoldSkull

#Water Temple
execute unless block 776 41 2761 minecraft:water if entity @e[type=area_effect_cloud,tag=Progress,tag=GotWaterMedallion] run fill 778 39 2762 774 36 2762 minecraft:water
execute unless block 776 41 2761 minecraft:water if entity @e[type=area_effect_cloud,tag=Progress,tag=GotWaterMedallion] run fill 776 41 2761 776 41 2761 minecraft:water

#Waterfall
execute if entity @a[x=710,y=67,z=2670,dx=0,dy=1,dz=6] at @a run tp @a ~1 ~ ~
