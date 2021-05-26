#River Rupees
fill 1587 75 2284 1580 75 2284 minecraft:cobblestone
fill 1578 75 2287 1578 75 2287 minecraft:cobblestone
fill 1544 68 2314 1544 68 2314 minecraft:cobblestone
fill 1542 68 2316 1542 68 2316 minecraft:cobblestone
fill 1540 68 2317 1540 68 2317 minecraft:cobblestone
fill 1538 68 2319 1538 68 2319 minecraft:cobblestone
fill 1536 68 2320 1536 68 2320 minecraft:cobblestone
fill 1531 68 2320 1523 68 2320 minecraft:cobblestone
fill 1499 65 2319 1492 65 2319 minecraft:cobblestone
fill 1489 65 2324 1489 65 2324 minecraft:cobblestone
fill 1489 60 2331 1489 60 2345 minecraft:cobblestone
fill 1519 65 2306 1519 65 2315 minecraft:cobblestone
fill 1520 69 2300 1520 69 2295 minecraft:cobblestone

#Extra Footing
fill 1544 70 2312 1544 69 2311 minecraft:cobblestone

#Bean Guy
execute unless entity @a[x=1532,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1530,y=61,z=2311,dx=0,dz=0] run tp @e[type=armor_stand,tag=BeanGuy] 1507 68.3 2309
execute unless entity @a[x=1532,y=61,z=2311,dx=0,dz=0] unless entity @a[x=1530,y=61,z=2311,dx=0,dz=0] run tp @e[type=villager,tag=RiverRupeeConvert] 1506 69 2309
fill 1506 69 2311 1506 69 2311 minecraft:air

#Cucco
kill @e[type=chicken,tag=Cucco]

#Bean Spot
execute as @e[type=area_effect_cloud,tag=BeanSpot] at @a run function ocarina_of_time:moving_things/zora_river/bean_spot
fill 1507 68 2315 1507 68 2315 minecraft:grass_block

#Frog
tp @e[type=armor_stand,tag=Frog1] 1549 64 2294
