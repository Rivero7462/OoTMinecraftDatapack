#Pots
fill 1032 36 3028 1032 36 3028 minecraft:flower_pot
fill 1032 36 3022 1032 36 3022 minecraft:flower_pot
fill 1030 56 3041 1030 56 3041 minecraft:flower_pot
fill 1031 56 3041 1031 56 3041 minecraft:flower_pot
fill 1032 56 3041 1032 56 3041 minecraft:flower_pot
fill 1049 48 3033 1049 48 3033 minecraft:flower_pot
fill 1049 48 3035 1049 48 3035 minecraft:flower_pot
fill 1124 46 3005 1124 46 3005 minecraft:flower_pot
fill 1124 46 3006 1124 46 3006 minecraft:flower_pot
fill 1124 46 3008 1124 46 3008 minecraft:flower_pot
fill 1124 46 3009 1124 46 3009 minecraft:flower_pot
fill 1136 65 3067 1136 65 3067 minecraft:flower_pot
fill 1132 65 3067 1132 65 3067 minecraft:flower_pot
fill 1113 44 3088 1113 44 3088 minecraft:flower_pot
fill 1114 44 3089 1114 44 3089 minecraft:flower_pot
fill 1060 31 3115 1060 31 3115 minecraft:flower_pot
fill 1058 31 3115 1058 31 3115 minecraft:flower_pot
fill 1041 48 3005 1041 48 3005 minecraft:flower_pot
fill 1043 48 3005 1043 48 3005 minecraft:flower_pot
fill 1065 59 3057 1065 59 3057 minecraft:flower_pot
fill 1061 59 3057 1061 59 3057 minecraft:flower_pot
fill 1092 39 3101 1092 39 3101 minecraft:flower_pot
fill 1086 39 3101 1086 39 3101 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Hearts
data remove block 1128 41 3090 Items
execute positioned 1128 41 3090 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1122 40 3094 Items
execute positioned 1122 40 3094 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1119 40 3107 Items
execute positioned 1119 40 3107 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 1110 40 3099 Items
execute positioned 1110 40 3099 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block 1018 57 3047 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block 1018 57 3047 minecraft:gold_block run tag @a add Compass
