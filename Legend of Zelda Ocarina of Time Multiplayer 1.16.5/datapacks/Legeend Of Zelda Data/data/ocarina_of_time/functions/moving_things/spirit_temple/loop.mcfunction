#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/spirit_temple/pots

#Hookshot
execute as @e[type=area_effect_cloud,tag=Hookshot] at @s unless entity @s[scores={Hookshot=200..}] run function ocarina_of_time:moving_things/spirit_temple/hookshot

#Enemies
function ocarina_of_time:moving_things/spirit_temple/enemies/loop

#Nabooru
execute if entity @a[tag=FixNabooru] run fill -45 82 880 -45 82 880 minecraft:gold_block
execute unless entity @a[x=-27,y=105,z=865,dx=0,dz=0] if block -45 82 880 minecraft:gold_block run tag @a remove FixNabooru
execute unless entity @a[x=-27,y=105,z=865,dx=0,dz=0] unless block -45 82 880 minecraft:gold_block unless block -45 82 879 minecraft:gold_block unless entity @a[tag=Adult] run tp @e[type=armor_stand,tag=Nabooru1] -46 84.5 880
execute unless entity @a[x=-27,y=105,z=865,dx=0,dz=0] if block -45 82 879 minecraft:gold_block unless entity @a[tag=Adult] as @e[type=armor_stand,tag=Nabooru1] at @s run tp @s ~ 85 ~
#Hide
execute unless entity @a[x=-27,y=105,z=865,dx=0,dz=0] if block -45 82 880 minecraft:gold_block run tp @e[type=armor_stand,tag=Nabooru1] -44 82 878
execute unless entity @a[x=-27,y=105,z=865,dx=0,dz=0] if entity @a[tag=Adult] run tp @e[type=armor_stand,tag=Nabooru1] -44 82 878

#Pits
#1
execute if entity @a[x=-86,y=77,z=846,dx=14,dz=11] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=-86,y=77,z=846,dx=14,dz=11] run tp @a -75 87 860 135 ~
#2
execute if entity @a[x=-73,y=77,z=822,dx=20,dz=14] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=-73,y=77,z=822,dx=20,dz=14] run tp @a -73 87 839 -135 ~
#3
execute if entity @a[x=3,y=100,z=872,dx=14,dz=16] run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=3,y=100,z=872,dx=14,dz=16] run tp @a 3 110 875 -90 ~

#Switches
execute as @e[type=zombie,tag=Switch] run function ocarina_of_time:moving_things/spirit_temple/switches/loop

#Loot Tables
#Chest
#1
execute if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block -83 87 837 minecraft:chest{Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]} run data merge block -83 87 837 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]}
execute unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block -83 87 837 minecraft:chest{Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]} run data merge block -83 87 837 {Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]}
#2
execute unless entity @a[tag=Adult] if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block -50 99 847 minecraft:chest{Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]} run data merge block -50 99 847 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]}
execute unless entity @a[tag=Adult] unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Deku Shield\""}}}]}] if block -50 99 847 minecraft:chest{Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]} run data merge block -50 99 847 {Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Wooden:1b,Unbreakable:1b,Damage:1,display:{Name:"\"Deku Shield\""}}}]}
execute if entity @a[tag=Adult] if entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""}}}]}] if block 18 59 1334 minecraft:chest{Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}}}]} run data merge block 18 59 1334 {Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]}
execute if entity @a[tag=Adult] unless entity @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{display:{Name:"\"Hylian Shield\""}}}]}] if block 18 59 1334 minecraft:chest{Items:[{Slot:13b,id:"minecraft:lapis_lazuli",Count:1b,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}}]} run data merge block 18 59 1334 {Items:[{Slot:13b,id:"minecraft:shield",Count:1b,tag:{Unbreakable:1b,Damage:2,display:{Name:"\"Hylian Shield\""}}}]}

#Iron Bars
execute at @a if block ~ ~ ~ minecraft:iron_bars run effect give @a minecraft:levitation 1 1 true
execute at @a unless block ~ ~ ~ minecraft:iron_bars unless entity @a[x=-16,y=124,z=750,dx=2,dy=10,dz=2] run effect clear @a minecraft:levitation

#Silver Rupees
#1
execute if block -44 88 835 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run fill -46 93 848 -48 87 848 minecraft:air
execute if block -44 88 835 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run clone -80 81 838 -78 81 843 -48 86 849
execute if block -44 88 835 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee=0}] run fill -44 88 835 -44 88 835 minecraft:gold_block
#2
execute if block -58 112 890 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run fill -46 93 848 -48 87 848 minecraft:air
execute if block -58 112 890 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 1
execute if block -58 112 890 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run summon minecraft:armor_stand -64 110 875 {Tags:["LitTorch"],Invisible:1b,NoGravity:1b,ShowArms:1b,Pose:{RightArm:[-45f,90f,200f]}}
execute if block -58 112 890 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run fill -64 111 875 -64 111 875 minecraft:torch
execute if block -58 112 890 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={BlueRupee2=0}] run fill -58 112 890 -58 112 890 minecraft:gold_block
#3
execute if block 21 90 865 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={RedRupee=0}] at @a run playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ .3 1
execute if block 21 90 865 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={RedRupee=0}] run fill 19 82 836 19 82 836 minecraft:stone_pressure_plate
execute if block 21 90 865 minecraft:air if block -27 115 789 minecraft:black_terracotta if entity @e[type=armor_stand,tag=Rock] if entity @e[type=area_effect_cloud,tag=SilverRupeeCounter,scores={RedRupee=0}] run fill 21 90 865 21 90 865 minecraft:gold_block

#Torch Chest
#1
execute if block -41 87 842 minecraft:air if block -45 88 855 minecraft:torch if block -49 88 855 minecraft:torch at @a facing -41 87 842 run tp @a ~ ~ ~ ~ ~
execute if block -41 87 842 minecraft:air if block -45 88 855 minecraft:torch if block -49 88 855 minecraft:torch run clone -41 83 842 -41 83 842 -41 87 842 replace move
#2
execute if block -27 97 846 minecraft:air if block -30 97 846 minecraft:torch if block -24 97 846 minecraft:torch run clone -27 93 846 -27 93 846 -27 97 846 replace move
#3
execute if block -65 112 893 minecraft:air if block -67 111 891 minecraft:torch if block -58 111 881 minecraft:torch if block -74 111 870 minecraft:torch at @a facing -65 111 893 run tp @a ~ ~ ~ ~ ~
execute if block -65 112 893 minecraft:air if block -67 111 891 minecraft:torch if block -58 111 881 minecraft:torch if block -74 111 870 minecraft:torch run clone -65 107 893 -65 107 893 -65 112 893 replace move

#Locked Doors
#1
execute positioned -63 89 847 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned -63 89 847 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -63 89 847 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Spirit Temple)"} destroy
#2
execute positioned -78 117 912 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south_iron
execute positioned -78 117 912 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -78 117 912 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Spirit Temple)"} destroy
#2
execute positioned 3 88 862 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run function ocarina_of_time:items/locked_door/north_iron
execute positioned 3 88 862 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 3 88 862 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Spirit Temple)"} destroy
#3
execute positioned -9 110 864 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run function ocarina_of_time:items/locked_door/south_iron
execute positioned -9 110 864 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned -9 110 864 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Spirit Temple)"} destroy
#4
execute positioned 2 111 885 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run function ocarina_of_time:items/locked_door/west_iron
execute positioned 2 111 885 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:2b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run tellraw @a {"text":"Place exactly one key in."}
execute positioned 2 111 885 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Spirit Temple)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=south]{CustomName:'{"text":"Door"}',Lock:"Small Key (Spirit Temple)"} destroy

#Compass
execute if data block -19 87 839 {Items:[]} run fill -20 87 836 -20 87 836 minecraft:gold_block

#Lights
#1
execute positioned -58 98 855 if entity @a[distance=..12] unless block -66 106 855 minecraft:mossy_cobblestone positioned -66 106 856.0 run function ocarina_of_time:moving_things/spirit_temple/lights/light_1
#2
execute positioned -70 110 882 if entity @a[distance=..20] positioned -82 117 875 run function ocarina_of_time:moving_things/spirit_temple/lights/light_2
#3
execute positioned 4 99 855 if entity @a[distance=..20] positioned 12 105 855 run function ocarina_of_time:moving_things/spirit_temple/lights/light_3
#4
execute positioned 28 110 874 if entity @a[distance=..20] positioned 31 117 874 run function ocarina_of_time:moving_things/spirit_temple/lights/light_4
#5
execute positioned -34 136 862 if entity @a[distance=..20] positioned -42 149 869 run function ocarina_of_time:moving_things/spirit_temple/lights/light_5
#6
execute if block -28 136 869 minecraft:pink_concrete if block -41 136 870 minecraft:pink_concrete if block -35 137 869 minecraft:air positioned -27 136 849 run function ocarina_of_time:moving_things/spirit_temple/lights/light_6

#Pressure Plates
#1
execute if block -46 96 851 minecraft:stone_pressure_plate[powered=true] unless block -45 107 864 minecraft:gold_block at @a run playsound minecraft:block.iron_door.open ambient @a ~ ~ ~ .3 1
execute if block -46 96 851 minecraft:stone_pressure_plate[powered=true] unless block -45 107 864 minecraft:gold_block run fill -45 109 863 -45 109 863 minecraft:stone_pressure_plate
execute if block -46 96 851 minecraft:stone_pressure_plate[powered=true] run fill -45 107 864 -45 107 864 minecraft:gold_block
execute if block -45 107 864 minecraft:gold_block unless block -46 96 851 minecraft:stone_pressure_plate[powered=true] at @a run playsound minecraft:block.iron_door.close ambient @a ~ ~ ~ .3 1
execute unless block -46 96 851 minecraft:stone_pressure_plate[powered=true] run fill -45 107 864 -45 107 864 minecraft:air
execute unless block -46 96 851 minecraft:stone_pressure_plate[powered=true] run fill -45 109 863 -45 109 863 minecraft:air
#2
execute unless block -9 109 838 minecraft:heavy_weighted_pressure_plate unless block -9 108 838 minecraft:iron_block at @a run tp @a ~ ~ ~ facing -27 98 861
execute unless block -9 109 838 minecraft:heavy_weighted_pressure_plate unless block -9 108 838 minecraft:iron_block run fill -27 98 861 -27 98 861 minecraft:stone_pressure_plate
execute unless block -9 109 838 minecraft:heavy_weighted_pressure_plate unless block -9 108 838 minecraft:iron_block at @a run playsound minecraft:block.iron_door.close ambient @a ~ ~ ~ 1 1
execute unless block -9 109 838 minecraft:heavy_weighted_pressure_plate unless block -9 108 838 minecraft:iron_block run fill -9 108 838 -9 108 838 minecraft:iron_block
#3
execute unless block -32 100 875 minecraft:heavy_weighted_pressure_plate unless block -32 99 875 minecraft:iron_block run tag @e[type=zombie,tag=Switch13] add Platform
execute unless block -32 100 875 minecraft:heavy_weighted_pressure_plate unless block -32 99 875 minecraft:iron_block run fill -32 99 875 -32 99 875 minecraft:iron_block
#4
execute if block 17 110 878 minecraft:light_weighted_pressure_plate[power=1] run tag @e[type=zombie,tag=Switch13] add Fire
#5
execute if block 28 110 883 minecraft:stone_pressure_plate[powered=true] run fill 25 108 894 25 108 894 minecraft:redstone_torch
execute unless block 28 110 883 minecraft:stone_pressure_plate[powered=true] run fill 25 108 894 25 108 894 minecraft:air
#6
execute if block -9 137 838 minecraft:light_weighted_pressure_plate[power=1] run fill -10 134 839 -8 134 837 minecraft:air
execute if block -9 137 838 minecraft:light_weighted_pressure_plate[power=1] run fill -10 133 839 -8 133 837 minecraft:air replace minecraft:fire
execute if block -9 137 838 minecraft:light_weighted_pressure_plate[power=1] run fill -9 137 838 -9 137 838 minecraft:air
execute if block -9 137 838 minecraft:light_weighted_pressure_plate run fill -10 133 839 -8 133 837 minecraft:fire replace minecraft:air

#Sun Push Block
execute as @a at @s if entity @s[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/push_block

#Pillars and Thrones
execute positioned -68 116 917 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -68 116 923 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -75 116 923 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -75 116 917 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -81 116 917 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -81 116 923 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -30 116 822 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -24 116 822 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -24 116 816 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -30 116 816 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -34 116 809 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -20 116 809 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned 15 116 917 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned 15 116 923 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned 22 116 923 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned 22 116 917 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned 28 116 917 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned 28 116 923 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts

execute positioned -64 116 920 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned 11 116 920 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts
execute positioned -27 116 808 if block ~ ~ ~ minecraft:air unless block ~ ~-2 ~ minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/pillar_hearts

#Giant Push Blocks
execute at @a[tag=Adult,tag=SilverGauntlets] if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/spirit_temple/giant_push_block/loop

#Lullaby
#1
execute if entity @a[x=-20,y=88,z=852,dx=3,dz=3] unless block -18 87 836 minecraft:gold_block if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run clone -19 87 836 -19 87 836 -19 87 839
execute if entity @a[x=-20,y=88,z=852,dx=3,dz=3] unless block -18 87 836 minecraft:gold_block if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run fill -18 87 836 -18 87 836 minecraft:gold_block
#2
execute if entity @a[x=-17,y=106,z=845,dx=2,dz=3] unless block -38 105 846 minecraft:chest if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] at @a run tp @a ~ ~ ~ facing -38 104 846
execute if entity @a[x=-17,y=106,z=845,dx=2,dz=3] unless block -38 105 846 minecraft:chest if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run clone -9 106 844 -9 106 844 -9 109 844 replace move
execute if entity @a[x=-17,y=106,z=845,dx=2,dz=3] unless block -38 105 846 minecraft:chest if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run clone -38 93 846 -38 93 846 -38 105 846 replace move
#3
execute if entity @a[x=-11,y=134,z=856,dx=4,dz=5] unless block -9 133 856 minecraft:stone_pressure_plate if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] at @a run playsound minecraft:block.iron_door.close ambient @a ~ ~ ~ 1 1
execute if entity @a[x=-11,y=134,z=856,dx=4,dz=5] unless block -9 133 856 minecraft:stone_pressure_plate if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run fill -9 133 856 -9 133 856 minecraft:stone_pressure_plate

#Rock
execute as @e[type=armor_stand,tag=Rock] at @s run function ocarina_of_time:moving_things/spirit_temple/rocks/loop

#Scarecrow Spot
execute if entity @a[tag=Adult] if entity @a[x=-46,y=110,z=853,dx=4,dz=5] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand -44.0 111 845 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] if entity @a[x=-46,y=110,z=853,dx=4,dz=5] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] if entity @a[x=-46,y=110,z=853,dx=4,dz=5] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand -44.0 108.8 845 {Tags:["ScarecrowSpot"],Rotation:[0f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Time blocks
execute if entity @a[x=12,y=83,z=839,dx=5,dy=3,dz=12] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 13 86 845.0 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=12,y=83,z=839,dx=5,dy=3,dz=12] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=9,y=111,z=882,dx=8,dz=6] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 12 111 887 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[x=9,y=111,z=882,dx=8,dz=6] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[x=12,y=83,z=839,dx=5,dy=3,dz=12] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] timer 1
execute if entity @a[x=9,y=111,z=882,dx=8,dz=6] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard players add @e[type=area_effect_cloud,tag=TimeBlock] lifetime 1

#Big Fairies
execute positioned 19 83 827 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand 19 83 827 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned 19 83 827 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned 19 83 827 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=GreenNaviSpot] positioned 19 83 827 unless entity @a[distance=..5] unless entity @a[x=-46,y=110,z=853,dx=4,dz=5] unless entity @a[x=12,y=83,z=839,dx=5,dy=3,dz=12] unless entity @a[x=9,y=111,z=882,dx=8,dz=6] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=GreenNaviSpot] positioned 19 83 827 unless entity @a[distance=..5] unless entity @a[x=-46,y=110,z=853,dx=4,dz=5] unless entity @a[x=12,y=83,z=839,dx=5,dy=3,dz=12] unless entity @a[x=9,y=111,z=882,dx=8,dz=6] run tag @a remove GreenNaviSpot

#Mirror
execute at @a if entity @a[scores={PushBlock=1..}] run function ocarina_of_time:moving_things/spirit_temple/mirror/loop
execute if block -41 136 870 minecraft:pink_concrete if block -35 137 869 minecraft:air run tag @e[type=armor_stand,tag=Mirror3] add Light
execute unless block -41 136 870 minecraft:pink_concrete run tag @e[type=armor_stand,tag=Mirror3] remove Light

#Invisible Chest
#1 + 2
execute positioned 22 113 903 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone 18 114 903 18 114 903 22 113 903
execute positioned 22 113 903 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill 18 114 904 18 114 904 minecraft:gold_block
execute positioned 28 113 903 if entity @a[distance=..10,scores={InvisibleChest=1..}] run clone 32 114 903 32 114 903 28 113 903
execute positioned 28 113 903 if entity @a[distance=..10,scores={InvisibleChest=1..}] run fill 32 114 904 32 114 904 minecraft:gold_block
execute positioned 22 113 903 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0
execute positioned 28 113 903 if entity @a[distance=..10,scores={InvisibleChest=1..}] run scoreboard players set @a InvisibleChest 0

#Spikes
execute if entity @a[x=-14,y=110,z=879,dx=0,dy=20,dz=0] at @a run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=-14,y=110,z=879,dx=0,dy=20,dz=0] at @a run tp @a ~ ~ ~1
execute if entity @a[x=-4,y=110,z=879,dx=0,dy=20,dz=0] at @a run effect give @a minecraft:wither 1 1 true
execute if entity @a[x=-4,y=110,z=879,dx=0,dy=20,dz=0] at @a run tp @a ~ ~ ~1

#Eye Switch
execute if entity @e[type=arrow,x=-13,y=134,z=835,dx=1,dz=1] if block -13 134 835 minecraft:yellow_shulker_box run fill -8 136 843 -10 136 841 minecraft:light_blue_stained_glass
execute if entity @e[type=arrow,x=-13,y=134,z=835,dx=1,dz=1] if block -13 134 835 minecraft:yellow_shulker_box run fill -13 134 835 -13 134 835 minecraft:orange_shulker_box

#Navi
execute unless block -33 116 835 minecraft:gold_block at @a if entity @a[x=-29,y=115,z=847,dx=4,dz=4] if block ~ ~-1 ~ minecraft:polished_diorite run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"The Desert Colossus's face... It sure looks evil!","color":"aqua"}]
execute unless block -33 116 835 minecraft:gold_block at @a if entity @a[x=-29,y=115,z=847,dx=4,dz=4] if block ~ ~-1 ~ minecraft:polished_diorite run fill -33 116 835 -33 116 835 minecraft:gold_block

#Boss Door
execute if entity @a[x=-28,y=117,z=832,dx=2,dz=2] if entity @a[nbt={Inventory:[{tag:{SpiritBossKey:1b}}]}] run tag @a add NabooruAttack
execute if entity @a[x=-28,y=117,z=832,dx=2,dz=2] if entity @a[nbt={Inventory:[{tag:{SpiritBossKey:1b}}]}] run fill -27 113 831 -27 113 831 minecraft:gold_block
execute if entity @a[x=-28,y=117,z=832,dx=2,dz=2] if entity @a[nbt={Inventory:[{tag:{SpiritBossKey:1b}}]}] run fill -27 117 831 -27 117 831 minecraft:magenta_glazed_terracotta[facing=south]
execute if entity @a[x=-28,y=117,z=832,dx=2,dz=2] if entity @a[nbt={Inventory:[{tag:{SpiritBossKey:1b}}]}] run clear @a minecraft:shears{SpiritBossKey:1b}
execute if entity @a[x=-28,y=117,z=832,dx=2,dz=1] if block -27 113 831 minecraft:gold_block if block -26 112 799 minecraft:gold_block unless block -24 112 799 minecraft:gold_block run function ocarina_of_time:moving_things/spirit_temple/enemies/nabooru_knuckle/summon
execute if entity @a[x=-28,y=117,z=832,dx=2,dz=1] if block -27 113 831 minecraft:gold_block run tp @a -27 116 826

#Boss
execute if block -28 117 763 minecraft:gold_block unless block -25 117 763 minecraft:gold_block if entity @a[x=-27,y=116,z=790,dx=0,dz=0] run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/spirit_temple/boss/loop
