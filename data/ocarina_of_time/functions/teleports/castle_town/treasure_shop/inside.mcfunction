function ocarina_of_time:music/shooting_gallery
function ocarina_of_time:teleports/remove_other

data merge entity @e[type=villager,tag=TreasureShop,limit=1] {Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:lever,Count:1,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}},rewardExp:0b}}]}}
fill 862 50 1417 862 50 1417 minecraft:barrier
fill 862 51 1418 862 51 1418 minecraft:barrier
fill 862 50 1432 862 50 1432 minecraft:barrier
fill 862 51 1433 862 51 1433 minecraft:barrier
fill 862 50 1447 862 50 1447 minecraft:barrier
fill 862 51 1448 862 51 1448 minecraft:barrier
fill 862 50 1462 862 50 1462 minecraft:barrier
fill 862 51 1463 862 51 1463 minecraft:barrier
fill 862 50 1477 862 50 1477 minecraft:barrier
fill 862 51 1478 862 51 1478 minecraft:barrier
fill 862 50 1492 862 50 1492 minecraft:barrier
fill 862 51 1493 862 51 1493 minecraft:barrier
fill 862 51 1417 862 51 1417 minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
fill 862 51 1432 862 51 1432 minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
fill 862 51 1447 862 51 1447 minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
fill 862 51 1462 862 51 1462 minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
fill 862 51 1477 862 51 1477 minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
fill 862 51 1492 862 51 1492 minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
execute if block 862 51 1502 minecraft:chest{Items:[]} run clone 861 47 1456 861 47 1456 862 51 1502
tag @s add InTreasureShop

tag @a add Indoors
tp @s 863 50 1411
