kill @e[type=falling_block,tag=FakeWellWall]
fill 2 58 1326 -5 58 1320 minecraft:stone_bricks replace minecraft:barrier
execute unless block 38 59 1362 minecraft:gold_block unless block 33 59 1363 minecraft:chest run clone 38 59 1363 38 59 1363 33 59 1363
