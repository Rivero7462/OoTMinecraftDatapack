fill 1738 28 2308 1791 28 2336 minecraft:ice replace minecraft:water
fill 1777 29 2314 1777 29 2314 minecraft:jungle_fence
tp @e[type=armor_stand,tag=UnlitTorch,tag=DomainTorch1] 1777 27 2314
tp @e[type=armor_stand,tag=LitTorch,tag=DomainTorch1] 1777 27 2314
fill 1773 29 2320 1773 29 2320 minecraft:smooth_stone_slab
fill 1771 29 2319 1771 29 2319 minecraft:smooth_stone_slab
fill 1770 29 2317 1770 29 2317 minecraft:smooth_stone_slab
fill 1775 29 2319 1775 29 2319 minecraft:smooth_stone_slab
fill 1776 29 2317 1776 29 2317 minecraft:smooth_stone_slab
fill 1775 29 2315 1775 29 2315 minecraft:smooth_stone_slab
fill 1771 29 2315 1771 29 2315 minecraft:smooth_stone_slab
fill 1773 29 2314 1773 29 2314 minecraft:smooth_stone_slab
fill 1776 28 2314 1770 28 2320 minecraft:ice replace minecraft:smooth_stone_slab
fill 1750 29 2308 1752 30 2309 minecraft:packed_ice
fill 1751 29 2310 1752 30 2310 minecraft:packed_ice
fill 1753 29 2311 1757 30 2310 minecraft:packed_ice
fill 1758 30 2310 1759 29 2310 minecraft:packed_ice
fill 1758 30 2308 1760 29 2309 minecraft:packed_ice
kill @e[type=cod,tag=DomainCod]
fill 1753 29 2308 1757 53 2309 minecraft:packed_ice
fill 1753 54 2308 1781 54 2288 minecraft:ice replace minecraft:water
fill 1777 28 2314 1777 28 2314 minecraft:ice
fill 1757 54 2309 1753 54 2309 minecraft:air
clone 1764 55 2287 1764 55 2287 1769 55 2291
fill 1769 54 2291 1769 54 2291 minecraft:ice
fill 1777 55 2288 1771 59 2267 minecraft:ice replace minecraft:water
fill 1770 59 2269 1770 59 2275 minecraft:ice
fill 1769 59 2273 1769 59 2271 minecraft:ice
fill 1771 59 2285 1777 59 2285 minecraft:ice replace minecraft:iron_bars
tp @e[type=armor_stand,tag=DomainTorch7] 1778 52 2299
fill 1778 56 2299 1778 56 2299 minecraft:air
tp @e[type=armor_stand,tag=DomainTorch6] 1770 52 2299
fill 1770 56 2299 1770 56 2299 minecraft:air
tp @e[type=armor_stand,tag=DomainTorch5] 1776 40 2325
fill 1776 43 2325 1776 42 2325 minecraft:air
tp @e[type=armor_stand,tag=DomainTorch4] 1777 28 2342
fill 1777 31 2342 1777 31 2342 minecraft:air
fill 1768 61 2298 1768 61 2298 minecraft:air
fill 1779 64 2292 1779 64 2292 minecraft:air
fill 1777 64 2283 1777 64 2283 minecraft:air
tp @e[type=villager,tag=DomainRupeeConvert] 1751 54 2306
fill 1753 55 2306 1753 55 2306 minecraft:air
tp @e[type=villager,tag=DivingZora] 1760 54 2305
tp @e[type=armor_stand,tag=Zora7] 1760 54 2305
tp @e[type=armor_stand,tag=Zora2] 1747 22 2321
tp @e[type=armor_stand,tag=Zora5] 1786 26 2341
tp @e[type=armor_stand,tag=Zora6] 1777 12 2347
fill 1739 28 2322 1739 28 2322 minecraft:ice

#Secret
tp @e[type=armor_stand,tag=Drearion] 1749 15 2315

#King Zora
execute unless block 1767 60 2289 minecraft:gold_block unless block 1771 62 2286 minecraft:red_stained_glass run fill 1773 60 2288 1771 62 2286 minecraft:red_stained_glass
execute unless block 1767 60 2289 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 0
execute unless block 1767 58 2289 minecraft:gold_block unless block 1773 60 2288 minecraft:red_stained_glass unless block 1766 60 2289 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 4
execute unless block 1767 60 2289 minecraft:gold_block unless block 1773 60 2288 minecraft:red_stained_glass run fill 1767 60 2289 1767 60 2289 minecraft:gold_block
execute unless block 1767 60 2289 minecraft:gold_block unless block 1773 60 2286 minecraft:red_stained_glass run fill 1767 60 2289 1767 60 2289 minecraft:gold_block

execute if block 1767 60 2289 minecraft:gold_block run fill 1773 60 2288 1771 62 2286 minecraft:air replace minecraft:red_stained_glass
execute if block 1767 60 2289 minecraft:gold_block run fill 1773 60 2287 1771 61 2286 minecraft:barrier

execute if block 1766 60 2289 minecraft:gold_block if block 1767 58 2289 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=FakeKingZora] text 5
execute if entity @a[tag=FinalKingZoraText] run fill 1766 60 2289 1766 60 2289 minecraft:gold_block
execute if entity @a[tag=FinalKingZoraText] run tag @a remove FinalKingZoraText
tp @e[type=armor_stand,tag=Ruto3] 1773 54 2283

fill 1758 54 2308 1758 57 2308 minecraft:air
