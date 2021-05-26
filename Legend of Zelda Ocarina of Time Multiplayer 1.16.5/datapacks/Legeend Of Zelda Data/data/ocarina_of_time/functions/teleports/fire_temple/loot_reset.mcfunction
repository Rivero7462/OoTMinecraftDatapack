#Pots
fill 3047 52 1938 3047 52 1938 minecraft:flower_pot
fill 3048 52 1938 3048 52 1938 minecraft:flower_pot
fill 3047 52 1939 3047 52 1939 minecraft:flower_pot
fill 3048 52 1939 3048 52 1939 minecraft:flower_pot
fill 3127 53 1939 3127 53 1939 minecraft:flower_pot
fill 3127 53 1941 3127 53 1941 minecraft:flower_pot
fill 3127 53 1940 3127 53 1940 minecraft:flower_pot
fill 3015 109 1978 3015 109 1978 minecraft:flower_pot
fill 3014 109 1977 3014 109 1977 minecraft:flower_pot
fill 3014 109 1971 3014 109 1971 minecraft:flower_pot
fill 3015 109 1970 3015 109 1970 minecraft:flower_pot
fill 3019 110 1953 3019 110 1953 minecraft:flower_pot
fill 3018 110 1953 3018 110 1953 minecraft:flower_pot
fill 3009 110 1944 3009 110 1944 minecraft:flower_pot
fill 3009 110 1943 3009 110 1943 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Hearts
data remove block 3157 60 1948 Items
execute positioned 3157 60 1948 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3157 60 1950 Items
execute positioned 3157 60 1950 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3159 60 1949 Items
execute positioned 3159 60 1949 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3121 109 1954 Items
execute positioned 3121 109 1954 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3121 109 1955 Items
execute positioned 3121 109 1955 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3121 109 1956 Items
execute positioned 3121 109 1956 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3110 109 1931 Items
execute positioned 3110 109 1931 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3093 112 1951 Items
execute positioned 3093 112 1951 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 3098 112 1951 Items
execute positioned 3098 112 1951 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block 3059 109 1918 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block 3059 109 1918 minecraft:gold_block run tag @a add Compass
