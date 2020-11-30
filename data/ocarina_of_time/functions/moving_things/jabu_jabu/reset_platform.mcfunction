fill 1666 63 1259 1666 67 1263 minecraft:air replace minecraft:pink_terracotta

#Top Platform
fill 1696 62 1256 1700 61 1266 minecraft:air
fill 1693 62 1259 1703 61 1263 minecraft:air
fill 1702 62 1264 1694 61 1258 minecraft:air
fill 1695 62 1265 1701 61 1257 minecraft:air

#Bottom Platform
execute unless block 1696 24 1256 minecraft:pink_terracotta run clone 1689 6 1253 1699 6 1243 1693 24 1256
fill 1693 24 1266 1703 24 1256 minecraft:purpur_slab[waterlogged=true] replace minecraft:air
