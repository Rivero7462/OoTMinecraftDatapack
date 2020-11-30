#Pots
fill 2230 35 1951 2230 35 1951 minecraft:flower_pot
fill 2231 35 1953 2231 35 1953 minecraft:flower_pot
fill 2245 35 1952 2245 35 1952 minecraft:flower_pot
fill 2247 35 1951 2247 35 1951 minecraft:flower_pot
fill 2270 37 1942 2270 37 1942 minecraft:flower_pot
fill 2268 37 1940 2268 37 1940 minecraft:flower_pot
fill 2269 37 1901 2269 37 1901 minecraft:flower_pot
fill 2268 37 1901 2268 37 1901 minecraft:flower_pot
fill 2248 37 1911 2248 37 1911 minecraft:flower_pot
fill 2247 37 1913 2247 37 1913 minecraft:flower_pot
fill 2233 37 1918 2233 37 1918 minecraft:flower_pot
fill 2241 37 1922 2241 37 1922 minecraft:flower_pot
fill 2230 37 1920 2230 37 1920 minecraft:flower_pot
fill 2231 37 1933 2231 37 1933 minecraft:flower_pot
fill 2135 46 1918 2135 46 1918 minecraft:flower_pot
fill 2157 46 1918 2157 46 1918 minecraft:flower_pot
fill 2134 46 1918 2134 46 1918 minecraft:flower_pot
fill 2158 46 1918 2158 46 1918 minecraft:flower_pot
fill 2231 51 1949 2231 51 1949 minecraft:flower_pot
fill 2227 51 1950 2227 51 1950 minecraft:flower_pot
fill 2249 46 1951 2249 46 1951 minecraft:flower_pot
fill 2261 46 1959 2261 46 1959 minecraft:flower_pot
fill 2266 46 1945 2266 46 1945 minecraft:flower_pot
fill 2249 46 1937 2249 46 1937 minecraft:flower_pot
fill 2217 39 1876 2217 39 1876 minecraft:flower_pot
fill 2215 39 1876 2215 39 1876 minecraft:flower_pot
fill 2193 40 1873 2193 40 1873 minecraft:flower_pot
fill 2192 40 1874 2192 40 1874 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Hearts
data remove block 2236 44 1955 Items
execute positioned 2236 44 1955 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 2268 50 1915 Items
execute positioned 2268 50 1915 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block 2270 50 1913 Items
execute positioned 2270 50 1913 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy

#Destroy
execute positioned 2287 37 1928 if block ~ ~ ~ minecraft:chest{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block 2146 36 1962 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block 2146 36 1962 minecraft:gold_block run tag @a add Compass

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone14] run summon minecraft:armor_stand 2214 35 1927 {Tags:["GossipStone14","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
