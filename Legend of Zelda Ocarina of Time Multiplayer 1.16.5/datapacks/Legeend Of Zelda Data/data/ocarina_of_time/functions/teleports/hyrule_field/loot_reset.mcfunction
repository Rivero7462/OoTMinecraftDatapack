#Grass
fill 1034 66 2086 1030 66 2088 minecraft:grass
fill 1031 66 2089 1033 66 2085 minecraft:grass
fill 942 65 2111 940 65 2107 minecraft:grass
fill 939 65 2108 943 65 2110 minecraft:grass
fill 944 61 2157 946 61 2161 minecraft:grass
fill 947 61 2160 943 61 2158 minecraft:grass
fill 838 70 2108 834 70 2106 minecraft:grass
fill 835 70 2105 837 70 2109 minecraft:grass
fill 831 69 2091 827 69 2093 minecraft:grass
fill 828 69 2094 830 69 2090 minecraft:grass
fill 989 69 1979 992 69 1977 minecraft:grass replace minecraft:air
fill 990 69 1976 992 69 1976 minecraft:grass
fill 993 70 1977 993 70 1979 minecraft:grass
fill 992 70 1978 992 70 1980 minecraft:grass
fill 991 70 1979 991 70 1980 minecraft:grass
fill 990 70 1980 990 70 1980 minecraft:grass

#Rocks
scoreboard players set @a HoldingRock 1
fill 767 69 2038 767 69 2038 minecraft:granite_slab
fill 765 69 2037 765 69 2037 minecraft:granite_slab
fill 764 69 2035 764 69 2035 minecraft:granite_slab
fill 765 69 2033 765 69 2033 minecraft:granite_slab
fill 767 69 2032 767 69 2032 minecraft:granite_slab
fill 769 69 2033 769 69 2033 minecraft:granite_slab
fill 770 69 2035 770 69 2035 minecraft:granite_slab
fill 769 69 2037 769 69 2037 minecraft:granite_slab

#Stalchild
scoreboard players set @e[type=area_effect_cloud,tag=StalchildSpawn] timer 0

#Silver Rock
fill 987 69 2085 988 68 2086 minecraft:dead_bubble_coral_block

#Grottos
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}
execute unless entity @e[type=armor_stand,tag=GossipStone32] run summon minecraft:armor_stand 750 34 2035 {Tags:["GossipStone32","GossipStone","Npc"],Rotation:[-90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
fill 764 34 2036 764 34 2036 minecraft:flower_pot
fill 765 34 2037 765 34 2037 minecraft:flower_pot
fill 767 68 2035 767 68 2035 minecraft:terracotta
fill 767 34 2036 767 34 2036 minecraft:grass
fill 765 34 2036 765 34 2036 minecraft:grass
fill 826 55 2207 826 55 2207 minecraft:grass_block
fill 845 31 2217 845 31 2217 minecraft:grass
fill 847 31 2210 847 31 2210 minecraft:grass
fill 845 31 2210 845 31 2210 minecraft:grass
fill 845 31 2212 845 31 2212 minecraft:grass
fill 957 38 2184 957 38 2184 minecraft:grass
fill 959 38 2177 959 38 2177 minecraft:grass
fill 957 38 2177 957 38 2177 minecraft:grass
fill 957 38 2179 957 38 2179 minecraft:grass
fill 1029 66 1893 1029 66 1893 minecraft:grass_block
fill 932 43 1920 932 43 1920 minecraft:grass
fill 934 43 1913 934 43 1913 minecraft:grass
fill 932 43 1913 932 43 1913 minecraft:grass
fill 932 43 1915 932 43 1915 minecraft:grass
fill 848 57 1944 848 57 1944 minecraft:grass_block

#Bridge Rupees
data remove block 968 75 1908 Items
execute positioned 968 75 1908 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/2_red_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/2_red_rupee"} destroy
data remove block 979 75 1908 Items
execute positioned 979 75 1908 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/red_rupee"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/red_rupee"} destroy
