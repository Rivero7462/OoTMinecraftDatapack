execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1388 4 1291 1403 15 1301 1395 46 1285

execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1387 4 1305 1391 7 1309 1413 50 1290

execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1386 4 1316 1406 12 1336 1419 46 1282

execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1406 4 1305 1413 7 1313 1438 51 1278

execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1405 4 1305 1413 7 1313 1431 51 1270

execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1405 4 1305 1413 7 1313 1422 51 1266

execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1405 4 1305 1413 7 1313 1428 51 1259

execute unless block 1454 54 1291 minecraft:packed_ice unless block 1427 54 1257 minecraft:packed_ice run clone 1394 4 1305 1402 7 1313 1449 51 1290

execute unless block 1424 54 1259 minecraft:packed_ice run clone 1409 4 1291 1414 7 1296 1422 51 1256

fill 1416 58 1295 1425 55 1287 minecraft:air
fill 1396 63 1284 1423 54 1298 minecraft:air replace minecraft:cyan_terracotta
fill 1396 53 1284 1423 50 1298 minecraft:water replace minecraft:cyan_terracotta
fill 1396 59 1285 1422 66 1297 minecraft:air
fill 1399 58 1288 1404 58 1294 minecraft:air

#Enemies
kill @e[type=zombie,tag=Tektite]

#Pots
fill 1390 55 1286 1392 55 1286 minecraft:air
fill 1390 55 1296 1392 55 1296 minecraft:air

#Heart Pieces
execute unless block 1453 53 1294 minecraft:chest{Items:[{Slot:13b,id:"minecraft:golden_carrot",Count:1b}]} run fill 1453 53 1294 1453 54 1294 minecraft:packed_ice
execute unless block 1453 53 1294 minecraft:chest{Items:[{Slot:13b,id:"minecraft:golden_carrot",Count:1b}]} run fill 1398 7 1309 1398 7 1309 minecraft:packed_ice
fill 1453 54 1294 1453 54 1294 minecraft:air

execute unless block 1425 11 1289 minecraft:gold_block unless block 1425 14 1288 minecraft:chest run clone 1425 11 1288 1425 11 1288 1425 14 1288
execute unless block 1425 14 1288 minecraft:chest{Items:[{Slot:13b,id:"minecraft:golden_carrot",Count:1b}]} run fill 1425 11 1289 1425 11 1289 minecraft:gold_block
execute if block 1425 11 1289 minecraft:gold_block run fill 1425 14 1288 1425 14 1288 minecraft:water

#Tree
execute if block 1438 56 1347 minecraft:oak_log run clone 1437 4 1351 1443 14 1357 1435 55 1344
fill 1435 55 1344 1441 65 1350 minecraft:air

#Shrubs
fill 1451 54 1340 1443 56 1351 minecraft:air replace minecraft:large_fern
