#Eye Switch
#1
execute as @e[type=arrow,x=500,y=45,z=922,dx=0,dz=0] unless block 500 45 922 minecraft:orange_shulker_box at @a facing 505 39 913 run tp @a ~ ~ ~ ~ ~
execute as @e[type=arrow,x=500,y=45,z=922,dx=0,dz=0] unless block 500 45 922 minecraft:orange_shulker_box run clone 505 37 913 505 37 913 505 40 913 replace move
execute as @e[type=arrow,x=500,y=45,z=922,dx=0,dz=0] unless block 500 45 922 minecraft:orange_shulker_box run clone 495 37 913 495 37 913 495 40 913 replace move
execute as @e[type=arrow,x=500,y=45,z=922,dx=0,dz=0] run fill 500 45 922 500 45 922 minecraft:orange_shulker_box
execute as @e[type=arrow,x=500,y=45,z=922,dx=0,dz=0] run kill @s
#2
execute as @e[type=arrow,x=541,y=41,z=843,dx=0,dz=0] unless block 541 41 843 minecraft:orange_shulker_box at @a run playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 1
execute as @e[type=arrow,x=541,y=41,z=843,dx=0,dz=0] unless block 541 41 843 minecraft:orange_shulker_box run fill 523 38 852 523 38 852 minecraft:stone_pressure_plate
execute as @e[type=arrow,x=541,y=41,z=843,dx=0,dz=0] run fill 541 41 843 541 41 843 minecraft:orange_shulker_box
execute as @e[type=arrow,x=541,y=41,z=843,dx=0,dz=0] run kill @s

#3
execute as @e[type=arrow,x=538,y=42,z=907,dx=0,dz=0] unless block 538 36 908 minecraft:gold_block run summon minecraft:item 538 42 908 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy\"}"},Unbreakable:1b,Damage:10,HideFlags:63,Fairy:1b,PickupItem:1b}},PickupDelay:0}
execute as @e[type=arrow,x=538,y=42,z=907,dx=0,dz=0] run fill 538 36 908 538 36 908 minecraft:gold_block
execute as @e[type=arrow,x=538,y=42,z=907,dx=0,dz=0] run kill @s
#4
execute as @e[type=arrow,x=538,y=42,z=861,dx=0,dz=0] unless block 538 36 860 minecraft:gold_block run summon minecraft:item 538 42 860 {Item:{Count:1b,id:"minecraft:red_dye",tag:{display:{Name:"{\"text\":\"Red Rupee\"}"},Item:1b}}}
execute as @e[type=arrow,x=538,y=42,z=861,dx=0,dz=0] run fill 538 36 860 538 36 860 minecraft:gold_block
execute as @e[type=arrow,x=538,y=42,z=861,dx=0,dz=0] run kill @s

#Text
#1
execute at @a if block ~ ~-1 ~ minecraft:dirt unless block 500 37 918 minecraft:gold_block run tellraw @a ["",{"text":"If you can overcome the ","color":"white"},{"text":"trials ","color":"red"},{"text":"in the chambers ahead, then and only then will you be qualified to hold our secret treasure!"}]
execute at @a if block ~ ~-1 ~ minecraft:dirt unless block 500 37 918 minecraft:gold_block run fill 500 37 918 500 37 918 minecraft:gold_block
#2
execute if entity @a[x=538,y=38,z=906,dx=0,dz=0] unless block 537 22 882 minecraft:gold_block run tellraw @a {"text":"Cross the sea of fire!","color":"white"}
execute if entity @a[x=538,y=38,z=906,dx=0,dz=0] unless block 537 22 882 minecraft:gold_block run fill 537 22 882 537 22 882 minecraft:gold_block
execute if entity @a[x=538,y=38,z=862,dx=0,dz=0] unless block 537 22 882 minecraft:gold_block run tellraw @a {"text":"Cross the sea of fire!","color":"white"}
execute if entity @a[x=538,y=38,z=862,dx=0,dz=0] unless block 537 22 882 minecraft:gold_block run fill 537 22 882 537 22 882 minecraft:gold_block
execute if entity @a[x=524,y=39,z=881,dx=0,dz=4] unless block 537 22 882 minecraft:gold_block run tellraw @a {"text":"Cross the sea of fire!","color":"white"}
execute if entity @a[x=524,y=39,z=881,dx=0,dz=4] unless block 537 22 882 minecraft:gold_block run fill 537 22 882 537 22 882 minecraft:gold_block
#3
execute if entity @a[x=550,y=33,z=883,dx=0,dz=0] unless block 561 42 882 minecraft:gold_block run tellraw @a ["",{"text":"Collect the ","color":"white"},{"text":"underwater gems","color":"red"},{"text":"!"}]
execute if entity @a[x=550,y=33,z=883,dx=0,dz=0] unless block 561 42 882 minecraft:gold_block run fill 561 42 882 561 42 882 minecraft:gold_block
#4
execute at @a if block ~ ~-1 ~ minecraft:andesite unless block 500 31 851 minecraft:gold_block run tellraw @a ["",{"text":"Blind the "},{"text":"eyes of the statue","color":"red"},{"text":"!"}]
execute at @a if block ~ ~-1 ~ minecraft:andesite unless block 500 31 851 minecraft:gold_block run fill 500 31 851 500 31 851 minecraft:gold_block
#5
execute if entity @a[x=500,y=38,z=893,dx=0,dz=0] unless block 500 35 881 minecraft:gold_block run tellraw @a ["",{"text":"If you desire to acquire our hidden treasure, you must strive to obtain the ","color":"white"},{"text":"keys ","color":"red"},{"text":"hidden in each chamber!"}]
execute if entity @a[x=516,y=38,z=881,dx=0,dz=4] unless block 500 35 881 minecraft:gold_block run tellraw @a ["",{"text":"If you desire to acquire our hidden treasure, you must strive to obtain the ","color":"white"},{"text":"keys ","color":"red"},{"text":"hidden in each chamber!"}]
execute if entity @a[x=500,y=38,z=893,dx=0,dz=0] unless block 500 35 881 minecraft:gold_block run fill 500 35 881 500 35 881 minecraft:gold_block
execute if entity @a[x=516,y=38,z=881,dx=0,dz=4] unless block 500 35 881 minecraft:gold_block run fill 500 35 881 500 35 881 minecraft:gold_block
#6
execute if entity @a[x=460,y=44,z=846,dx=2,dz=2] unless block 461 40 848 minecraft:gold_block run tellraw @a ["",{"text":"One with "},{"text":"silver hands ","color":"red"},{"text":"shall move a giant block!"}]
execute if entity @a[x=460,y=44,z=846,dx=2,dz=2] unless block 461 40 848 minecraft:gold_block run fill 461 40 848 461 40 848 minecraft:gold_block

#Enemies
function ocarina_of_time:moving_things/training_ground/enemies/loop

#Pits
#1
execute as @a at @s if entity @s[y=25,dy=0] if block ~ ~-1 ~ minecraft:netherrack run effect give @s minecraft:wither 1 1 true
execute as @a at @s if entity @s[y=25,dy=0] if block ~ ~-1 ~ minecraft:netherrack run tp @s 538 38 904 180 ~
#2
execute as @a at @s if entity @s[y=34,dy=0] if block ~ ~-1 ~ minecraft:netherrack run effect give @s minecraft:wither 1 1 true
execute as @a at @s if entity @s[y=34,dy=0] if block ~ ~-1 ~ minecraft:netherrack run tp @s 520 38 852 90 ~

#Silver Rupees
#1
execute if block 467 45 846 minecraft:end_stone_bricks if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] if entity @e[type=armor_stand,tag=Rock] run fill 547 33 883 547 33 883 minecraft:stone_pressure_plate replace minecraft:air
#2
execute if block 461 34 893 minecraft:gold_block unless block 462 34 893 minecraft:gold_block if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] if entity @e[type=armor_stand,tag=Rock] run function ocarina_of_time:moving_things/training_ground/enemies/trial_3/finish
#3
execute if block 467 45 846 minecraft:end_stone_bricks if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={RedRupee=0}] if entity @e[type=armor_stand,tag=Rock] if block 557 33 879 minecraft:air run clone 557 42 878 557 42 878 557 33 879 replace move

#Rock
execute as @e[type=armor_stand,tag=Rock] at @s run function ocarina_of_time:moving_things/training_ground/rocks/loop

#Switch
#1
execute unless block 526 33 887 minecraft:air run fill 530 33 875 529 33 874 minecraft:fire
execute if block 526 33 887 minecraft:light_weighted_pressure_plate[power=1] run fill 530 34 874 529 46 875 minecraft:air
execute if block 526 33 887 minecraft:light_weighted_pressure_plate[power=1] run fill 530 33 875 529 33 874 minecraft:air
execute if block 526 33 887 minecraft:light_weighted_pressure_plate[power=1] run fill 526 32 887 526 32 887 minecraft:gold_block
execute if block 526 33 887 minecraft:light_weighted_pressure_plate[power=1] run fill 526 33 887 526 33 887 minecraft:air
#2
execute unless block 546 37 849 minecraft:air run fill 539 38 851 537 38 853 minecraft:fire replace minecraft:air
execute if block 546 37 849 minecraft:light_weighted_pressure_plate[power=1] run fill 537 39 851 539 49 853 minecraft:air
execute if block 546 37 849 minecraft:light_weighted_pressure_plate[power=1] run fill 539 38 851 537 38 853 minecraft:air replace minecraft:fire
execute if block 546 37 849 minecraft:light_weighted_pressure_plate[power=1] run fill 546 36 849 546 36 849 minecraft:gold_block
execute if block 546 37 849 minecraft:light_weighted_pressure_plate[power=1] run fill 546 37 849 546 37 849 minecraft:air
#3
execute if block 478 46 852 minecraft:light_weighted_pressure_plate[power=1] at @a run playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 1
execute if block 478 46 852 minecraft:light_weighted_pressure_plate[power=1] run fill 461 44 834 461 44 834 minecraft:stone_pressure_plate
execute if block 478 46 852 minecraft:light_weighted_pressure_plate[power=1] run fill 478 45 852 478 45 852 minecraft:gold_block
execute if block 478 46 852 minecraft:light_weighted_pressure_plate[power=1] run fill 478 46 852 478 46 852 minecraft:air

#Scarecrow Spot
execute if entity @a[x=502,y=38,z=853,dx=12,dz=12] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 502 48 865 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=502,y=38,z=853,dx=12,dz=12] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=502,y=38,z=853,dx=12,dz=12] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand 502 45.8 865 {Tags:["ScarecrowSpot"],Rotation:[-135f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Time Blocks
execute if entity @a[x=525,y=34,z=878,dx=11,dy=4,dz=11] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 530 37 883 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=525,y=34,z=878,dx=11,dy=4,dz=11] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=556,y=34,z=878,dx=10,dz=10] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 561 34 883 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=556,y=34,z=878,dx=10,dz=10] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=525,y=34,z=878,dx=11,dy=4,dz=11] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=529,y=35,z=883,dx=5,dy=3,dz=2] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1
execute if entity @a[x=556,y=34,z=878,dx=10,dz=10] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] unless entity @a[x=556,y=32,z=878,dx=10,dz=10] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] lifetime 1

#Big Fairies
execute positioned 500 40 915 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 500 40 915 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 500 40 915 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 500 40 915 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=502,y=38,z=853,dx=12,dz=12] positioned 500 40 915 unless entity @a[distance=..5] unless entity @a[x=525,y=34,z=878,dx=11,dy=4,dz=11] unless entity @a[x=556,y=34,z=878,dx=10,dz=10] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] unless entity @a[x=502,y=38,z=853,dx=12,dz=12] positioned 500 40 915 unless entity @a[distance=..5] unless entity @a[x=525,y=34,z=878,dx=11,dy=4,dz=11] unless entity @a[x=556,y=34,z=878,dx=10,dz=10] run tag @a remove GreenNaviSpot

#Whirl Pool
execute if entity @a[x=564,y=11,z=881,dx=4,dy=13,dz=9] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @a run tp @a ~ ~ ~-.2
execute if entity @a[x=559,y=11,z=876,dx=9,dy=13,dz=4] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @a run tp @a ~-.2 ~ ~
execute if entity @a[x=554,y=11,z=876,dx=4,dy=13,dz=9] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @a run tp @a ~ ~ ~.2
execute if entity @a[x=554,y=11,z=886,dx=9,dy=13,dz=4] unless entity @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @a run tp @a ~.2 ~ ~

#Eye Statue
#1
execute positioned 502.00 39.78 852.00 as @e[type=arrow,distance=...4] unless block 495 31 851 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=EyeStatue1,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:76}}]}
execute positioned 502.00 39.78 852.00 as @e[type=arrow,distance=...4] unless block 495 31 851 minecraft:gold_block run fill 495 31 851 495 31 851 minecraft:gold_block
execute positioned 502.00 39.78 852.00 as @e[type=arrow,distance=...4] run kill @s
#2
execute positioned 500.00 39.78 851.00 as @e[type=arrow,distance=...4] unless block 496 31 851 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=EyeStatue2,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:76}}]}
execute positioned 500.00 39.78 851.00 as @e[type=arrow,distance=...4] unless block 496 31 851 minecraft:gold_block run fill 496 31 851 496 31 851 minecraft:gold_block
execute positioned 500.00 39.78 851.00 as @e[type=arrow,distance=...4] run kill @s
#3
execute positioned 499.00 39.78 853.00 as @e[type=arrow,distance=...4] unless block 497 31 851 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=EyeStatue3,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:76}}]}
execute positioned 499.00 39.78 853.00 as @e[type=arrow,distance=...4] unless block 497 31 851 minecraft:gold_block run fill 497 31 851 497 31 851 minecraft:gold_block
execute positioned 499.00 39.78 853.00 as @e[type=arrow,distance=...4] run kill @s
#4
execute positioned 501.00 39.78 854.00 as @e[type=arrow,distance=...4] unless block 498 31 851 minecraft:gold_block run data merge entity @e[type=armor_stand,tag=EyeStatue4,limit=1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:76}}]}
execute positioned 501.00 39.78 854.00 as @e[type=arrow,distance=...4] unless block 498 31 851 minecraft:gold_block run fill 498 31 851 498 31 851 minecraft:gold_block
execute positioned 501.00 39.78 854.00 as @e[type=arrow,distance=...4] run kill @s

execute if block 495 31 851 minecraft:gold_block if block 496 31 851 minecraft:gold_block if block 497 31 851 minecraft:gold_block if block 498 31 851 minecraft:gold_block unless block 503 37 851 minecraft:chest at @a run playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ 1 1
execute if block 495 31 851 minecraft:gold_block if block 496 31 851 minecraft:gold_block if block 497 31 851 minecraft:gold_block if block 498 31 851 minecraft:gold_block unless block 503 37 851 minecraft:chest run fill 500 46 869 500 46 869 minecraft:stone_pressure_plate
execute if block 495 31 851 minecraft:gold_block if block 496 31 851 minecraft:gold_block if block 497 31 851 minecraft:gold_block if block 498 31 851 minecraft:gold_block unless block 503 37 851 minecraft:chest run clone 502 31 851 502 31 851 503 37 851 replace move

#Secret Magic
execute if entity @a[x=500,y=42,z=852,dx=0,dz=0] unless block 500 31 849 minecraft:gold_block run summon minecraft:item 500 42 852 {Item:{Count:1b,id:"minecraft:shears",tag:{display:{Name:"{\"text\":\"Magic Jar\"}"},Unbreakable:1b,Damage:5,HideFlags:63,BigJar:1b,PickupItem:1b,Item:1b}}}
execute if entity @a[x=500,y=42,z=852,dx=0,dz=0] unless block 500 31 849 minecraft:gold_block run fill 500 31 849 500 31 849 minecraft:gold_block

#Moving Platform
execute as @a at @s if block 503 37 851 minecraft:air if block ~ ~-6 ~ minecraft:yellow_glazed_terracotta[facing=north] run tp @s ~ ~ ~.1
execute as @a at @s if block 503 37 851 minecraft:air if block ~ ~-6 ~ minecraft:yellow_glazed_terracotta[facing=south] run tp @s ~ ~ ~-.1
execute as @a at @s if block 503 37 851 minecraft:air if block ~ ~-6 ~ minecraft:yellow_glazed_terracotta[facing=east] run tp @s ~-.1 ~ ~
execute as @a at @s if block 503 37 851 minecraft:air if block ~ ~-6 ~ minecraft:yellow_glazed_terracotta[facing=west] run tp @s ~.1 ~ ~

execute at @a if block 503 37 851 minecraft:air if block ~ ~-1 ~ minecraft:andesite run tag @a add NoOcarina
execute at @a unless block 503 37 851 minecraft:air run tag @a remove NoOcarina
execute at @a unless block ~ ~-1 ~ minecraft:andesite run tag @a remove NoOcarina

#summon minecraft:item 526 38 883 {Item:{Count:1b,id:"minecraft:lever",tag:{display:{Name:"\"Small Key (Training Ground)\""}}}}

#Iron Bars
execute at @a if block ~ ~ ~ minecraft:iron_bars run effect give @a minecraft:levitation 1 1 true
execute at @a unless entity @a[x=3013,y=45,z=1955,dx=2,dy=10,dz=2] unless block ~ ~ ~ minecraft:iron_bars run effect clear @a minecraft:levitation

#Locked Doors
#Fix
execute as @e[type=item,x=504,y=39,z=887,dx=0,dz=0] at @a run tp @s ~ ~ ~
execute as @e[type=item,x=514,y=39,z=889,dx=0,dz=0] at @a run tp @s ~ ~ ~
#1
execute positioned 504 39 887 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/east_acacia
execute positioned 504 39 887 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 504 39 887 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#2
execute positioned 514 39 889 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/north_acacia
execute positioned 514 39 889 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 514 39 889 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#3
execute positioned 496 39 887 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/west_acacia
execute positioned 496 39 887 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 496 39 887 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#4
execute positioned 488 39 892 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/west_acacia
execute positioned 488 39 892 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 488 39 892 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#5
execute positioned 494 39 881 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/north_acacia
execute positioned 494 39 881 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 494 39 881 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#6
execute positioned 486 39 873 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/north_acacia
execute positioned 486 39 873 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 486 39 873 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#7
execute positioned 500 39 875 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/east_acacia
execute positioned 500 39 875 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 500 39 875 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#8
execute positioned 506 39 873 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/south_acacia
execute positioned 506 39 873 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 506 39 873 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy
#9
execute positioned 504 39 879 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run function ocarina_of_time:items/locked_door/west_acacia
execute positioned 504 39 879 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 504 39 879 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Training Ground)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Training Ground)"} destroy

#Giant Push Block
execute at @a[tag=Adult,tag=SilverGauntlets] if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/training_ground/giant_push_block/loop

#Invisible Chest
#1
execute positioned 466 43 815 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone 465 44 810 465 44 810 466 43 815
execute positioned 466 43 815 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill 466 44 810 466 44 810 minecraft:gold_block
execute positioned 466 43 815 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0
