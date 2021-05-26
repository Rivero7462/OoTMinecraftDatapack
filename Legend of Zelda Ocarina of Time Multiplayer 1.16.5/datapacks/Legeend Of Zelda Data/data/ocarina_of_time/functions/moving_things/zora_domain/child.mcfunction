fill 1738 28 2308 1791 28 2336 minecraft:water replace minecraft:ice
execute if entity @e[type=armor_stand,tag=LitTorch,tag=DomainTorch1] run fill 1777 29 2314 1777 29 2314 minecraft:torch
execute if entity @e[type=armor_stand,tag=UnlitTorch,tag=DomainTorch1] run fill 1777 29 2314 1777 29 2314 minecraft:air replace minecraft:jungle_fence
tp @e[type=armor_stand,tag=UnlitTorch,tag=DomainTorch1] 1777 28 2314
tp @e[type=armor_stand,tag=LitTorch,tag=DomainTorch1] 1777 28 2314
fill 1773 28 2320 1773 28 2320 minecraft:smooth_stone_slab[waterlogged=true]
fill 1771 28 2319 1771 28 2319 minecraft:smooth_stone_slab[waterlogged=true]
fill 1770 28 2317 1770 28 2317 minecraft:smooth_stone_slab[waterlogged=true]
fill 1775 28 2319 1775 28 2319 minecraft:smooth_stone_slab[waterlogged=true]
fill 1776 28 2317 1776 28 2317 minecraft:smooth_stone_slab[waterlogged=true]
fill 1775 28 2315 1775 28 2315 minecraft:smooth_stone_slab[waterlogged=true]
fill 1771 28 2315 1771 28 2315 minecraft:smooth_stone_slab[waterlogged=true]
fill 1773 28 2314 1773 28 2314 minecraft:smooth_stone_slab[waterlogged=true]
fill 1771 28 2319 1775 28 2315 minecraft:water replace minecraft:dispenser
fill 1750 29 2308 1752 30 2309 minecraft:air
fill 1751 29 2310 1752 30 2310 minecraft:air
fill 1753 29 2311 1757 30 2310 minecraft:air
fill 1758 30 2310 1759 29 2310 minecraft:air
fill 1758 30 2308 1760 29 2309 minecraft:air
fill 1770 29 2320 1776 29 2314 minecraft:air replace minecraft:smooth_stone_slab
fill 1753 29 2308 1757 29 2308 minecraft:air
fill 1753 54 2306 1781 54 2288 minecraft:water replace minecraft:ice
fill 1753 53 2308 1757 53 2308 minecraft:barrier
fill 1753 54 2308 1757 54 2306 minecraft:air replace minecraft:ice
fill 1753 53 2309 1757 29 2308 minecraft:air replace minecraft:packed_ice
fill 1777 28 2314 1777 28 2314 minecraft:jungle_fence[waterlogged=true]
fill 1769 55 2291 1769 55 2291 minecraft:air
clone 1766 55 2287 1766 55 2287 1769 54 2291
fill 1771 59 2267 1777 59 2285 minecraft:water replace minecraft:ice
fill 1777 59 2285 1776 59 2285 minecraft:iron_bars[east=true,west=true,waterlogged=true]
fill 1775 59 2285 1775 59 2285 minecraft:iron_bars[east=true,waterlogged=true]
fill 1771 59 2285 1772 59 2285 minecraft:iron_bars[east=true,west=true,waterlogged=true]
fill 1773 59 2285 1773 59 2285 minecraft:iron_bars[west=true,waterlogged=true]
fill 1777 59 2286 1771 55 2288 minecraft:air replace minecraft:ice
fill 1770 59 2269 1769 59 2275 minecraft:water replace minecraft:ice
tp @e[type=armor_stand,tag=DomainTorch7] 1778 55 2299
fill 1778 56 2299 1778 56 2299 minecraft:torch
tp @e[type=armor_stand,tag=DomainTorch6] 1770 55 2299
fill 1770 56 2299 1770 56 2299 minecraft:torch
tp @e[type=armor_stand,tag=DomainTorch5] 1776 42 2325
execute if entity @e[type=armor_stand,tag=LitTorch,tag=DomainTorch5] run fill 1776 43 2325 1776 43 2325 minecraft:torch
execute if entity @e[type=armor_stand,tag=UnlitTorch,tag=DomainTorch5] run fill 1776 43 2325 1776 43 2325 minecraft:air
execute if entity @e[type=armor_stand,tag=UnlitTorch,tag=DomainTorch5] run fill 1776 42 2325 1776 42 2325 minecraft:jungle_fence
tp @e[type=armor_stand,tag=DomainTorch4] 1777 30 2342
execute if entity @e[type=armor_stand,tag=LitTorch,tag=DomainTorch4] run fill 1777 31 2342 1777 31 2342 minecraft:torch
execute if entity @e[type=armor_stand,tag=UnlitTorch,tag=DomainTorch4] run fill 1777 31 2342 1777 31 2342 minecraft:air
clone 1768 63 2298 1768 63 2298 1768 61 2298
clone 1779 66 2292 1779 66 2292 1779 64 2292
clone 1777 66 2283 1777 66 2283 1777 64 2283
tp @e[type=villager,tag=DomainRupeeConvert] 1753 54 2306
clone 1750 55 2306 1750 55 2306 1753 55 2306
tp @e[type=villager,tag=DivingZora] 1757 54 2306
tp @e[type=armor_stand,tag=Zora7] 1757 54 2306
tp @e[type=armor_stand,tag=Zora2] 1747 29 2321
tp @e[type=armor_stand,tag=Zora5] 1786 30 2341
tp @e[type=armor_stand,tag=Zora6] 1777 15 2347
fill 1739 28 2322 1739 28 2322 minecraft:ladder[waterlogged=true,facing=east]

#Secret
tp @e[type=armor_stand,tag=Drearion] 1749 11 2315

#King Zora
execute if block 1767 60 2289 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 3
execute if block 1766 60 2289 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 3
execute if block 1773 54 2284 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 3
execute unless block 1770 58 2287 minecraft:gold_block unless block 1773 54 2284 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 1
execute if block 1770 58 2287 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 2

fill 1773 60 2288 1771 62 2286 minecraft:air replace minecraft:red_stained_glass
fill 1773 60 2287 1771 61 2286 minecraft:barrier

execute if block 1773 54 2284 minecraft:gold_block run tp @e[type=armor_stand,tag=Ruto3] 1774.0 59 2287.0

fill 1758 54 2308 1758 57 2308 minecraft:barrier
