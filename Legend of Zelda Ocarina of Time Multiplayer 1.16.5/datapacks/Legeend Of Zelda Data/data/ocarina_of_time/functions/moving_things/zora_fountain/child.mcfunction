#clone 1367 4 1237 1381 19 1251 1395 49 1284

execute unless block 1404 53 1284 minecraft:cyan_terracotta run clone 1367 4 1345 1381 21 1359 1395 49 1284

fill 1398 48 1288 1406 46 1293 minecraft:water replace minecraft:packed_ice

execute unless block 1411 57 1286 minecraft:cyan_terracotta run clone 1389 4 1273 1409 18 1285 1410 50 1285

fill 1420 54 1282 1439 54 1302 minecraft:air replace minecraft:packed_ice
fill 1420 53 1282 1439 46 1302 minecraft:water replace minecraft:packed_ice

fill 1457 54 1298 1422 54 1256 minecraft:air replace minecraft:packed_ice
fill 1457 53 1298 1422 51 1256 minecraft:water replace minecraft:packed_ice

#Enemies
kill @e[type=zombie,tag=Octorok]

#Heart Pieces
fill 1453 53 1294 1453 53 1294 minecraft:water
fill 1425 14 1288 1425 14 1288 minecraft:water

#Tree
execute if block 1438 56 1347 minecraft:air run clone 1437 4 1351 1443 14 1357 1435 55 1344

#Shrubs
execute if block 1443 55 1347 minecraft:air run clone 1440 4 1357 1440 5 1357 1443 55 1347
execute if block 1446 55 1351 minecraft:air run clone 1440 4 1357 1440 5 1357 1446 55 1351
execute if block 1449 55 1346 minecraft:air run clone 1440 4 1357 1440 5 1357 1449 55 1346
execute if block 1446 54 1343 minecraft:air run clone 1440 4 1357 1440 5 1357 1446 54 1343
execute if block 1451 54 1340 minecraft:air run clone 1440 4 1357 1440 5 1357 1451 54 1340
