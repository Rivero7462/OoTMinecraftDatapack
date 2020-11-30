#Pots
fill 884 56 -1144 884 56 -1144 minecraft:flower_pot
fill 883 56 -1145 883 56 -1145 minecraft:flower_pot
fill 912 56 -1144 912 56 -1144 minecraft:flower_pot
fill 913 56 -1145 913 56 -1145 minecraft:flower_pot
fill 899 60 -1208 899 60 -1208 minecraft:flower_pot
fill 897 60 -1208 897 60 -1208 minecraft:flower_pot
fill 900 68 -1195 900 68 -1195 minecraft:flower_pot
fill 896 68 -1195 896 68 -1195 minecraft:flower_pot
fill 896 68 -1207 896 68 -1207 minecraft:flower_pot
fill 900 68 -1207 900 68 -1207 minecraft:flower_pot
fill 885 56 -1143 885 56 -1143 minecraft:flower_pot
fill 911 56 -1143 911 56 -1143 minecraft:flower_pot
fill 912 68 -1209 912 68 -1209 minecraft:flower_pot
fill 914 68 -1209 914 68 -1209 minecraft:flower_pot
fill 916 68 -1209 916 68 -1209 minecraft:flower_pot
fill 954 80 -1144 954 80 -1144 minecraft:flower_pot
fill 953 80 -1144 953 80 -1144 minecraft:flower_pot
fill 940 60 -1157 940 60 -1157 minecraft:flower_pot
fill 940 60 -1159 940 60 -1159 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Chests
data remove block 864 61 -1189 Items
execute positioned 864 61 -1189 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 864 61 -1187 Items
execute positioned 864 61 -1187 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 899 40 -1166 Items
execute positioned 899 40 -1166 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 897 40 -1166 Items
execute positioned 897 40 -1166 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block 908 65 -1204 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block 908 65 -1204 minecraft:gold_block run tag @a add Compass

#Elevator Reset
execute if block 893 52 -1159 minecraft:redstone_block run fill 897 54 -1156 899 22 -1154 minecraft:air
execute if block 893 52 -1159 minecraft:redstone_block run clone 891 45 -1154 893 51 -1156 897 54 -1156

#Twisted Rooms Reset
kill @e[tag=TwistedLadder]
fill 842 91 -1191 842 91 -1191 minecraft:redstone_block
fill 851 94 -1200 851 94 -1200 minecraft:redstone_block
fill 849 88 -1165 849 88 -1165 minecraft:light_gray_shulker_box
fill 947 96 -1201 947 96 -1201 minecraft:redstone_block
fill 937 85 -1192 937 85 -1192 minecraft:redstone_block
fill 935 87 -1154 935 87 -1154 minecraft:light_gray_shulker_box
