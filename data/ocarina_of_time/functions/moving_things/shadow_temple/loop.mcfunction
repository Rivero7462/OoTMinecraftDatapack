#Navi
execute unless block 1678 88 947 minecraft:gold_block if entity @a[x=1678,y=92,z=946,dx=0,dz=2] run tellraw @a ["",{"text":"The Shadow will yield only to one with the "},{"text":"eye of truth ","color":"red"},{"text":"handed down in Kakariko Village."}]
execute unless block 1678 88 947 minecraft:gold_block if entity @a[x=1678,y=92,z=946,dx=0,dz=2] run fill 1678 88 947 1678 88 947 minecraft:gold_block

execute unless block 1683 88 940 minecraft:gold_block if entity @a[x=1691,y=92,z=939,dx=2,dz=2] run tellraw @a ["",{"text":"Make my beak face the "},{"text":"skull of truth","color":"red"},{"text":". The alternative is descent into the deep darkness."}]
execute unless block 1683 88 940 minecraft:gold_block if entity @a[x=1691,y=92,z=939,dx=2,dz=2] run fill 1683 88 940 1683 88 940 minecraft:gold_block

execute unless block 1761 74 912 minecraft:gold_block if entity @a[x=1761,y=78,z=911,dx=0,dz=3] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"This wall... It's saying something! It says, \"","color":"aqua"},{"text":"If you want to see a ferry to the other world, come here..."},{"text":"\"","color":"aqua"}]
execute unless block 1761 74 912 minecraft:gold_block if entity @a[x=1761,y=78,z=911,dx=0,dz=3] run fill 1761 74 912 1761 74 912 minecraft:gold_block

#Enemies
function ocarina_of_time:moving_things/shadow_temple/enemies/loop

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/shadow_temple/pots

#Bird
execute if block 1708 92 940 minecraft:iron_bars as @a at @s if entity @s[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/shadow_temple/bird/loop

#Big Push Blocks
execute as @a at @s if entity @s[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/shadow_temple/big_push_block/big_push_block
execute if entity @a[tag=PushCoolDown] run scoreboard players add @a PushCoolDown 1
execute if entity @a[scores={PushCoolDown=10..}] run tag @a remove PushCoolDown
execute if entity @a[scores={PushCoolDown=10..}] run scoreboard players reset @a PushCoolDown

execute if block 1679 58 1025 minecraft:pink_concrete_powder if block 1677 58 1027 minecraft:pink_concrete_powder run tp @a 1678 58 1031
execute if block 1679 58 1025 minecraft:pink_concrete_powder if block 1677 58 1027 minecraft:pink_concrete_powder run fill 1677 58 1028 1679 60 1030 minecraft:pink_concrete_powder
execute if block 1679 58 1025 minecraft:pink_concrete_powder if block 1677 58 1027 minecraft:pink_concrete_powder run fill 1679 58 1027 1677 60 1024 minecraft:air

execute if block 1661 58 1030 minecraft:pink_concrete_powder if block 1663 60 1028 minecraft:pink_concrete_powder run clone 1651 58 1026 1653 60 1028 1661 58 1028

execute unless block 1763 58 909 minecraft:pink_concrete_powder unless block 1765 58 909 minecraft:pink_concrete_powder run fill 1765 60 909 1763 58 909 minecraft:ladder
execute if block 1778 58 904 minecraft:pink_concrete_powder if block 1776 60 906 minecraft:pink_concrete_powder run clone 1780 58 904 1782 60 906 1776 58 904

#Pits
execute if entity @a[x=1667,y=74,z=946,dx=7,dz=2] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1667,y=74,z=946,dx=7,dz=2] run tp @a 1694 73 940 -90 ~
execute if entity @a[x=1685,y=86,z=935,dx=10,dz=10] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1685,y=86,z=935,dx=10,dz=10] run tp @a 1694 73 940 -90 ~
execute if entity @a[x=1700,y=73,z=931,dx=8,dz=18] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1700,y=73,z=931,dx=8,dz=18] run tp @a 1694 73 940 -90 ~

execute at @a if entity @a[y=28,dy=0] if block ~ ~-1 ~ minecraft:black_wool run effect give @a minecraft:wither 1 1 true
execute at @a if entity @a[y=28,dy=0] if block ~ ~-1 ~ minecraft:black_wool run tp @a 1762 77 940 -90 ~

execute if entity @a[x=1744,y=56,z=934,dx=4,dz=2] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1744,y=56,z=934,dx=4,dz=2] run tp @a 1726 62 957 180 ~
execute if entity @a[x=1757,y=47,z=929,dx=24,dz=4] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1757,y=47,z=929,dx=24,dz=4] run tp @a 1726 62 957 180 ~
execute if entity @a[x=1757,y=47,z=937,dx=24,dz=4] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=1757,y=47,z=937,dx=24,dz=4] run tp @a 1726 62 957 180 ~

execute if block 1700 65 963 minecraft:polished_andesite if entity @a[x=1700,y=66,z=962,dx=4,dz=4] run tp @a 1694 66 964

execute at @a if entity @a[y=31,dy=0] if block ~ ~-1 ~ minecraft:black_wool run tp @a 1694 66 919
execute as @a if entity @a[x=1694,y=66,z=919,dx=0,dz=0] run function ocarina_of_time:moving_things/shadow_temple/boat_ride/reset

execute at @a if entity @a[y=32,dy=0] if block ~ ~-1 ~ minecraft:black_wool run effect give @a minecraft:wither 1 1 true
execute at @a if entity @a[y=32,dy=0] if block ~ ~-1 ~ minecraft:black_wool run tp @a 1591 58 944 0 0

#Silver Rupees
#1
execute positioned 1750 77 917 if entity @e[type=armor_stand,tag=ScytheBladeTrap,distance=..1] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run fill 1760 77 921 1760 79 923 minecraft:air
#2
execute if entity @e[type=armor_stand,tag=BladeTrap4] if block 1702 59 1015 minecraft:iron_bars if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run fill 1702 58 1015 1702 59 1015 minecraft:air
#3
execute if entity @e[tag=RedeadReturn21] if entity @e[type=area_effect_cloud,tag=RedeadReturn20] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={RedRupee=0}] run fill 1716 58 964 1716 58 964 minecraft:stone_pressure_plate replace minecraft:air

#Spikes
execute at @a if block ~ ~-.7 ~ minecraft:granite_wall unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] unless entity @a[x=1664,y=59,z=1027,dx=9,dy=8,dz=4] run effect give @a minecraft:wither 2 0 true

#Compass
execute if data block 1750 77 958 {Items:[]} run fill 1750 78 961 1750 78 961 minecraft:gold_block

#Locked Doors
#1
execute positioned 1760 78 940 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run function ocarina_of_time:items/locked_door/east_iron
execute positioned 1760 78 940 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1760 78 940 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Shadow Temple)"} destroy
#2
execute positioned 1726 59 973 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned 1726 59 973 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1726 59 973 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Shadow Temple)"} destroy
#3
execute positioned 1726 63 959 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned 1726 63 959 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1726 63 959 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Shadow Temple)"} destroy
#4
execute positioned 1775 59 910 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned 1775 59 910 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1775 59 910 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Shadow Temple)"} destroy
#5
execute positioned 1591 59 942 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south_iron
execute positioned 1591 59 942 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 1591 59 942 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Shadow Temple)"} destroy

#Boat
execute as @e[type=armor_stand,tag=Boat] at @e[type=armor_stand,tag=Boat1] run function ocarina_of_time:moving_things/shadow_temple/boat_ride/connect
execute as @e[type=armor_stand,tag=Boat1] at @s run function ocarina_of_time:moving_things/shadow_temple/boat_ride/move

execute if entity @a[x=1780,y=64,z=893,dx=4,dz=4] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run summon minecraft:armor_stand 1775.51 62.1 895.51 {Tags:["Boat1","Boat"],Invisible:1b,Rotation:[90f],NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:33}}],DisabledSlots:4144959}

#Scarecrow Spots
execute positioned 1571 59 922 if entity @a[distance=..15] unless entity @e[type=armor_stand,tag=GreenNavi1] run summon minecraft:armor_stand 1572 72 922 {Tags:["GreenNavi","GreenNavi1"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 1571 59 922 if entity @a[distance=..15] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 1571 59 922 if entity @a[distance=..15] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot1] run summon minecraft:armor_stand 1572 69.8 922 {Tags:["ScarecrowSpot","ScarecrowSpot1"],Rotation:[-90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}
execute positioned 1772 60 904 if entity @a[distance=..10] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1766 68 904 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 1772 60 904 if entity @a[distance=..10] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 1772 60 904 if entity @a[distance=..10] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot2] run summon minecraft:armor_stand 1766 65.8 904 {Tags:["ScarecrowSpot","ScarecrowSpot2"],Rotation:[-90f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Time blocks
execute if entity @a[x=1780,y=64,z=893,dx=4,dz=4] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1782 65 895 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1780,y=64,z=893,dx=4,dz=4] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=1791,y=63,z=970,dx=5,dz=5] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1795 66 971 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1791,y=63,z=970,dx=5,dz=5] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=1581,y=58,z=926,dx=8,dz=8] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1582 61 930 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=1581,y=58,z=926,dx=8,dz=8] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=1791,y=63,z=970,dx=5,dz=5] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=1794,y=63,z=970,dx=2,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1
execute if entity @a[x=1581,y=58,z=926,dx=8,dz=8] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=1581,y=58,z=929,dx=2,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] lifetime 1

#Big Fairies
execute positioned 1750 77 940 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1750 77 940 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 1750 77 940 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 1750 77 940 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon
execute positioned 1752 63 1014 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1752 63 1014 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 1752 63 1014 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 1752 63 1014 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon
execute positioned 1788 58 935 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 1788 58 935 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 1788 58 935 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 1788 58 935 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 1788 58 935 unless entity @a[distance=..5] positioned 1752 63 1014 unless entity @a[distance=..5] positioned 1750 77 940 unless entity @a[distance=..5] positioned 1571 59 922 unless entity @a[distance=..15] positioned 1772 60 904 unless entity @a[distance=..10] unless entity @a[x=1791,y=63,z=970,dx=5,dz=5] unless entity @a[x=1581,y=58,z=926,dx=8,dz=8] unless entity @a[x=1780,y=64,z=893,dx=4,dz=4] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 1788 58 935 unless entity @a[distance=..5] positioned 1752 63 1014 unless entity @a[distance=..5] positioned 1750 77 940 unless entity @a[distance=..5] positioned 1571 59 922 unless entity @a[distance=..15] run kill @e[type=armor_stand,tag=GreenNavi1]
execute if entity @a[tag=GreenNaviSpot] positioned 1788 58 935 unless entity @a[distance=..5] positioned 1752 63 1014 unless entity @a[distance=..5] positioned 1750 77 940 unless entity @a[distance=..5] positioned 1571 59 922 unless entity @a[distance=..15] positioned 1772 60 904 unless entity @a[distance=..10] unless entity @a[x=1791,y=63,z=970,dx=5,dz=5] unless entity @a[x=1581,y=58,z=926,dx=8,dz=8] unless entity @a[x=1780,y=64,z=893,dx=4,dz=4] run tag @a remove GreenNaviSpot

#Invisible Chest
#1
execute positioned 1803 63 986 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone 1808 63 986 1808 63 986 1803 63 986
execute positioned 1803 63 986 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill 1808 63 985 1808 63 985 minecraft:gold_block
execute positioned 1803 63 986 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0
#2
execute positioned 1792 58 937 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone 1795 59 936 1795 59 936 1792 58 937
execute positioned 1792 58 937 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill 1795 59 935 1795 59 935 minecraft:gold_block
execute positioned 1792 58 937 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0
#3
execute positioned 1779 58 922 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone 1785 59 918 1785 59 918 1779 58 922
execute positioned 1779 58 922 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill 1785 59 917 1785 59 917 minecraft:gold_block
execute positioned 1779 58 922 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0

#Switch
execute if block 1671 62 1034 minecraft:light_weighted_pressure_plate[power=1] run fill 1671 61 1034 1671 61 1034 minecraft:gold_block
execute if block 1671 62 1034 minecraft:light_weighted_pressure_plate[power=1] run clone 1684 62 1019 1684 62 1019 1682 62 1024 replace move
execute if block 1671 62 1034 minecraft:light_weighted_pressure_plate[power=1] run fill 1671 62 1034 1671 62 1034 minecraft:air

#Moving Platforms/Fans
execute as @e[type=area_effect_cloud,tag=MovingPlatforms] run function ocarina_of_time:moving_things/shadow_temple/moving_platforms

#Bombs
execute as @e[type=area_effect_cloud,tag=Bomb5] at @s run function ocarina_of_time:moving_things/shadow_temple/bomb

#Containers
#1
execute if block 1700 65 963 minecraft:polished_andesite if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},scores={timer=99..},x=1701,y=64,z=963,dx=2,dz=2] run summon minecraft:item 1702 59 964 {Item:{Count:1b,id:"minecraft:lever",tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}}
execute if block 1700 65 963 minecraft:polished_andesite if entity @e[type=item,nbt={Item:{tag:{display:{Name:"\"Bomb\""}}}},scores={timer=99..},x=1701,y=64,z=963,dx=2,dz=2] run fill 1700 65 962 1704 59 966 minecraft:air
execute if block 1700 65 963 minecraft:polished_andesite if entity @e[type=armor_stand,tag=Bomb,scores={timer=109..},x=1701,y=64,z=963,dx=2,dz=2] run summon minecraft:item 1702 59 964 {Item:{Count:1b,id:"minecraft:lever",tag:{display:{Name:"\"Small Key (Shadow Temple)\""}}}}
execute if block 1700 65 963 minecraft:polished_andesite if entity @e[type=armor_stand,tag=Bomb,scores={timer=109..},x=1701,y=64,z=963,dx=2,dz=2] run fill 1700 65 962 1704 59 966 minecraft:air

#Dirt Mound
#1
execute unless blocks 1777 58 921 1779 59 923 1783 58 920 all run fill 1777 58 921 1779 59 923 minecraft:air replace minecraft:coarse_dirt
execute unless blocks 1777 58 921 1779 59 923 1783 58 920 all run fill 1777 58 921 1779 59 923 minecraft:air replace minecraft:mossy_cobblestone

#Statue Bridge
execute if block 1605 58 923 minecraft:air unless block 1603 58 923 minecraft:red_nether_bricks positioned 1604 58 925 if entity @e[type=arrow,distance=..5] run function ocarina_of_time:moving_things/shadow_temple/break_statue
execute if block 1606 58 925 minecraft:air unless block 1603 58 923 minecraft:red_nether_bricks positioned 1604 58 925 if entity @e[type=arrow,distance=..5] run function ocarina_of_time:moving_things/shadow_temple/break_statue
execute if block 1604 58 925 minecraft:air unless block 1603 58 923 minecraft:red_nether_bricks positioned 1604 58 925 if entity @e[type=arrow,distance=..5] run function ocarina_of_time:moving_things/shadow_temple/break_statue
execute if block 1605 58 927 minecraft:air unless block 1603 58 923 minecraft:red_nether_bricks positioned 1604 58 925 if entity @e[type=arrow,distance=..5] run function ocarina_of_time:moving_things/shadow_temple/break_statue
execute if block 1604 58 928 minecraft:air unless block 1603 58 923 minecraft:red_nether_bricks positioned 1604 58 925 if entity @e[type=arrow,distance=..5] run function ocarina_of_time:moving_things/shadow_temple/break_statue
execute if block 1603 58 927 minecraft:air unless block 1603 58 923 minecraft:red_nether_bricks positioned 1604 58 925 if entity @e[type=arrow,distance=..5] run function ocarina_of_time:moving_things/shadow_temple/break_statue

execute as @a at @s if block ~ ~-5 ~ minecraft:magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~.1
execute as @a at @s if block ~ ~-5 ~ minecraft:magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~-.1
execute as @a at @s if block ~ ~-5 ~ minecraft:magenta_glazed_terracotta[facing=east] run tp @s ~-.1 ~ ~
execute as @a at @s if block ~ ~-5 ~ minecraft:magenta_glazed_terracotta[facing=west] run tp @s ~.1 ~ ~

#Boss Door
execute if entity @a[x=1590,y=58,z=968,dx=2,dz=2] if entity @a[nbt={Inventory:[{tag:{ShadowBossKey:1b}}]}] run fill 1591 56 972 1591 56 972 minecraft:gold_block
execute if entity @a[x=1590,y=58,z=968,dx=2,dz=2] if entity @a[nbt={Inventory:[{tag:{ShadowBossKey:1b}}]}] run fill 1591 59 971 1591 59 971 minecraft:magenta_glazed_terracotta[facing=north]
execute if entity @a[x=1590,y=58,z=968,dx=2,dz=2] if entity @a[nbt={Inventory:[{tag:{ShadowBossKey:1b}}]}] run clear @a minecraft:shears{ShadowBossKey:1b}
execute if entity @a[x=1590,y=58,z=969,dx=2,dz=1] if block 1591 56 972 minecraft:gold_block run tp @a 1651 69 956

#Boss
execute unless block 1651 15 962 minecraft:gold_block if entity @a[x=1650,y=53,z=962,dx=2,dy=1,dz=2] run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/shadow_temple/boss/loop
