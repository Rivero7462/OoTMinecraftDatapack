fill -12 56 1308 -12 56 1308 minecraft:flower_pot
fill -9 57 1310 -15 56 1310 minecraft:ladder[waterlogged=false]
fill -15 58 1308 -9 56 1309 minecraft:air replace minecraft:water
fill 11 58 1313 -45 58 1360 minecraft:stone_brick_slab replace minecraft:stone_brick_slab[waterlogged=true]
fill -15 58 1315 -9 58 1311 minecraft:stone_slab replace minecraft:stone_slab[waterlogged=true]
fill -15 58 1315 -9 58 1311 minecraft:smooth_sandstone_slab replace minecraft:smooth_sandstone_slab[waterlogged=true]
fill -46 58 1338 -53 52 1330 minecraft:air replace minecraft:water
fill -54 52 1330 -54 58 1338 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
fill -46 57 1333 -46 52 1335 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
clone -50 52 1341 -50 58 1349 -50 52 1330
fill 5 55 1360 -16 55 1367 minecraft:air replace minecraft:water
fill 6 55 1360 6 55 1366 minecraft:ladder[facing=west,waterlogged=false]
fill -17 55 1364 -17 58 1361 minecraft:ladder[facing=east]
clone -9 55 1367 -7 56 1367 -13 55 1365
fill -15 58 1310 -9 58 1310 minecraft:air
fill -16 58 1361 -7 55 1364 minecraft:air
fill -11 56 1367 -13 55 1366 minecraft:air
fill 6 58 1312 8 58 1312 minecraft:air
kill @e[type=falling_block,tag=Blocker]
clone -53 52 1341 -53 52 1341 -52 52 1334 replace move
fill -6 55 1363 -6 55 1363 minecraft:air
clone -12 55 1356 -12 55 1356 -12 55 1363 replace move
fill -12 60 1308 -12 60 1308 minecraft:andesite_stairs[facing=north]
fill -12 60 1308 -12 56 1309 minecraft:air replace minecraft:water
fill -12 60 1308 -12 60 1308 minecraft:andesite_stairs[facing=north]
