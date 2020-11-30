#Pots
fill -449 31 1903 -449 31 1903 minecraft:flower_pot
fill -440 31 1909 -440 31 1909 minecraft:flower_pot
fill -419 33 1864 -419 33 1864 minecraft:flower_pot
fill -416 33 1867 -416 33 1867 minecraft:flower_pot
fill -420 18 1982 -420 18 1982 minecraft:flower_pot
fill -403 20 1976 -403 20 1976 minecraft:flower_pot
fill -403 20 1972 -403 20 1972 minecraft:flower_pot
fill -554 31 1886 -554 31 1886 minecraft:flower_pot
fill -557 31 1889 -557 31 1889 minecraft:flower_pot
fill -567 20 1974 -567 20 1974 minecraft:flower_pot
fill -607 21 1972 -607 21 1972 minecraft:flower_pot
fill -607 21 1976 -607 21 1976 minecraft:flower_pot
fill -540 31 2038 -540 31 2038 minecraft:flower_pot
fill -537 31 2041 -537 31 2041 minecraft:flower_pot
fill -424 30 2054 -424 30 2054 minecraft:flower_pot
fill -421 30 2051 -421 30 2051 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Hearts
data remove block -428 30 1885 Items
execute positioned -428 30 1885 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block -429 30 1881 Items
execute positioned -429 30 1881 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block -429 30 1879 Items
execute positioned -429 30 1879 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
data remove block -506 30 2012 Items
execute positioned -506 30 2012 unless block ~ ~ ~ minecraft:dispenser{LootTable:"ocarina_of_time:chests/general/heart"} run fill ~ ~ ~ ~ ~ ~ minecraft:dispenser[facing=up]{LootTable:"ocarina_of_time:chests/general/heart"} destroy
