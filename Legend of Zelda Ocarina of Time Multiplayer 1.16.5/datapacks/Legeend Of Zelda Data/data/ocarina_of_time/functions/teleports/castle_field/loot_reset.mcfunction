#Grass
fill 926 87 905 926 87 905 minecraft:grass
fill 925 87 906 925 87 906 minecraft:grass

#Moat
data remove block 886 83 898 Items
execute positioned 886 83 898 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 891 83 898 Items
execute positioned 891 83 898 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 897 83 898 Items
execute positioned 897 83 898 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 902 83 898 Items
execute positioned 902 83 898 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 908 83 898 Items
execute positioned 908 83 898 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 914 83 898 Items
execute positioned 914 83 898 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 918 83 894 Items
execute positioned 918 83 894 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 918 83 888 Items
execute positioned 918 83 888 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 918 83 884 Items
execute positioned 918 83 884 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/green_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/green_rupee"} destroy
data remove block 917 83 874 Items
execute positioned 917 83 874 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/blue_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/blue_rupee"} destroy

#Signs
execute unless block 939 75 938 minecraft:oak_sign run clone 939 71 938 939 71 938 939 75 938

#Rocks
scoreboard players set @a HoldingRock 1
fill 900 75 938 900 75 938 minecraft:granite_slab
fill 899 75 941 899 75 941 minecraft:granite_slab
fill 896 75 941 896 75 941 minecraft:granite_slab

#Bugs
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Items
kill @e[type=item,nbt={Item:{tag:{Item:1b}}}]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone12] run summon minecraft:armor_stand 907 82 948 {Tags:["GossipStone12","GossipStone","Npc"],Rotation:[180f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
#2
execute unless entity @e[type=armor_stand,tag=GossipStone13] run summon minecraft:armor_stand 885 88 912 {Tags:["GossipStone13","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Grotto
execute unless entity @e[type=armor_stand,tag=GossipStone31] run summon minecraft:armor_stand 925 57 902 {Tags:["GossipStone31","GossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
fill 926 57 909 926 57 909 minecraft:flower_pot
fill 924 57 908 924 57 908 minecraft:flower_pot
fill 926 57 906 926 57 906 minecraft:flower_pot
fill 924 57 905 924 57 905 minecraft:flower_pot
fill 925 57 904 925 57 904 minecraft:granite_slab
fill 924 57 903 924 57 903 minecraft:granite_slab
fill 923 57 902 923 57 902 minecraft:granite_slab
fill 924 57 901 924 57 901 minecraft:granite_slab
fill 925 57 900 925 57 900 minecraft:granite_slab
fill 926 57 901 926 57 901 minecraft:granite_slab
fill 927 57 902 927 57 902 minecraft:granite_slab
fill 926 57 903 926 57 903 minecraft:granite_slab
fill 925 86 903 925 86 903 minecraft:smooth_sandstone
