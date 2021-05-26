execute as @a at @s if block ~ ~ ~ minecraft:pink_terracotta run tp @s ~ ~1 ~

#Switch
execute positioned 1627 56 1294 if entity @e[type=snowball,distance=..1.5] run function ocarina_of_time:moving_things/jabu_jabu/door_1
#Door 1
execute if entity @a[x=1635,y=53,z=1293,dx=2,dz=2] unless block 1635 54 1294 minecraft:vine run fill 1636 52 1292 1636 56 1296 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1635,y=53,z=1293,dx=2,dz=2] run function ocarina_of_time:moving_things/jabu_jabu/crate_reset
execute unless entity @a[x=1635,y=53,z=1293,dx=2,dz=2] run fill 1636 52 1292 1636 56 1296 minecraft:pink_terracotta replace minecraft:air
execute if block 1635 54 1294 minecraft:vine run fill 1635 56 1293 1635 56 1295 minecraft:vine[east=true,up=false] replace minecraft:vine[east=true,up=true]
execute if block 1635 54 1294 minecraft:vine run fill 1635 55 1292 1635 55 1296 minecraft:vine[east=true,up=false] replace minecraft:vine[east=true,up=true]

#Door 2
execute if entity @a[x=1672,y=53,z=1293,dx=2,dz=2] run fill 1673 52 1292 1673 56 1296 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1672,y=53,z=1293,dx=2,dz=2] run function ocarina_of_time:moving_things/jabu_jabu/crate_reset
execute unless entity @a[x=1672,y=53,z=1293,dx=2,dz=2] run fill 1673 52 1292 1673 56 1296 minecraft:pink_terracotta replace minecraft:air

#Door 3
execute if entity @a[x=1715,y=53,z=1293,dx=2,dz=2] run fill 1716 52 1292 1716 56 1296 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1715,y=53,z=1293,dx=2,dz=2] if block 1729 49 1294 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/crate_reset_2
execute unless entity @a[x=1715,y=53,z=1293,dx=2,dz=2] run fill 1716 52 1292 1716 56 1296 minecraft:pink_terracotta replace minecraft:air

#Switch Ruto and Crate
execute if entity @a[x=1737,y=53,z=1273,dx=0,dz=0] run fill 1739 56 1267 1735 52 1267 minecraft:air replace minecraft:vine
execute if entity @e[type=armor_stand,tag=Ruto1,x=1737,y=53,z=1273,dx=0,dz=0] run fill 1739 56 1267 1735 52 1267 minecraft:air replace minecraft:vine
execute if block 1737 52 1273 minecraft:oak_planks run fill 1739 56 1267 1735 52 1267 minecraft:air replace minecraft:vine
execute unless entity @e[type=armor_stand,tag=Ruto1,x=1737,y=53,z=1273,dx=0,dz=0] unless entity @a[x=1737,y=53,z=1273,dx=0,dz=0] unless block 1737 52 1273 minecraft:oak_planks if block 1737 54 1266 minecraft:pink_terracotta run fill 1739 56 1267 1735 52 1267 minecraft:vine[north=true,up=false] replace minecraft:air
#Door 4
execute if entity @a[x=1736,y=53,z=1265,dx=2,dz=2] unless block 1737 54 1267 minecraft:vine run fill 1739 52 1266 1735 56 1266 minecraft:air replace minecraft:pink_terracotta
execute unless entity @a[x=1736,y=53,z=1265,dx=2,dz=2] run fill 1739 52 1266 1735 56 1266 minecraft:pink_terracotta replace minecraft:air
execute if entity @a[x=1736,y=53,z=1265,dx=2,dz=1] run fill 1735 52 1267 1739 56 1267 minecraft:air replace minecraft:vine
execute if entity @a[x=1736,y=53,z=1265,dx=2,dz=1] run fill 1739 52 1266 1735 56 1266 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1736,y=53,z=1265,dx=2,dz=1] if block 1729 49 1294 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/crate_reset_2
execute if block 1737 54 1267 minecraft:vine run fill 1735 55 1267 1739 55 1267 minecraft:vine[north=true,up=false] replace minecraft:vine[north=true,up=true]
execute if block 1737 54 1267 minecraft:vine run fill 1736 56 1267 1738 56 1267 minecraft:vine[north=true,up=false] replace minecraft:vine[north=true,up=true]

#Door 5
execute if block 1751 54 1275 minecraft:vine run fill 1751 55 1277 1751 56 1273 minecraft:vine[west=true,up=false] replace minecraft:vine[west=true,up=true]
execute if entity @a[x=1749,y=53,z=1274,dx=2,dz=2] unless block 1751 54 1275 minecraft:vine run fill 1750 52 1273 1750 56 1277 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1749,y=53,z=1274,dx=2,dz=2] if block 1729 49 1294 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/crate_reset_2
execute unless entity @a[x=1749,y=53,z=1274,dx=2,dz=2] run fill 1750 52 1273 1750 56 1277 minecraft:pink_terracotta replace minecraft:air

#Door 6
execute if block 1751 54 1294 minecraft:vine run fill 1751 55 1296 1751 56 1292 minecraft:vine[west=true,up=false] replace minecraft:vine[west=true,up=true]
execute if entity @a[x=1749,y=53,z=1293,dx=2,dz=2] unless block 1751 54 1294 minecraft:vine run fill 1750 52 1292 1750 56 1296 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1749,y=53,z=1293,dx=2,dz=2] if block 1729 49 1294 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/crate_reset_2
execute unless entity @a[x=1749,y=53,z=1293,dx=2,dz=2] run fill 1750 52 1292 1750 56 1296 minecraft:pink_terracotta replace minecraft:air

#Door 7
execute if block 1751 54 1313 minecraft:vine run fill 1751 55 1315 1751 56 1311 minecraft:vine[west=true,up=false] replace minecraft:vine[west=true,up=true]
execute if entity @a[x=1749,y=53,z=1312,dx=2,dz=2] unless block 1751 54 1313 minecraft:vine run fill 1750 52 1311 1750 56 1315 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1749,y=53,z=1312,dx=2,dz=2] if block 1729 49 1294 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/crate_reset_2
execute unless entity @a[x=1749,y=53,z=1312,dx=2,dz=2] run fill 1750 52 1311 1750 56 1315 minecraft:pink_terracotta replace minecraft:air

#Switch
execute if entity @a[x=1737,y=53,z=1316,dx=0,dz=0] run function ocarina_of_time:moving_things/jabu_jabu/door_2
#Door 8
execute if entity @a[x=1736,y=53,z=1321,dx=2,dz=2] unless block 1737 54 1321 minecraft:vine run fill 1739 52 1322 1735 56 1322 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1736,y=53,z=1321,dx=2,dz=2] if block 1729 49 1294 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/crate_reset_2
execute unless entity @a[x=1736,y=53,z=1321,dx=2,dz=2] run fill 1739 52 1322 1735 56 1322 minecraft:pink_terracotta replace minecraft:air
execute if block 1737 54 1321 minecraft:vine run fill 1739 55 1321 1735 55 1321 minecraft:vine[south=true,up=false] replace minecraft:vine[south=true,up=true]
execute if block 1737 54 1321 minecraft:vine run fill 1738 56 1321 1736 56 1321 minecraft:vine[south=true,up=false] replace minecraft:vine[south=true,up=true]
#Door 9
execute if entity @a[x=1682,y=23,z=1275,dx=3,dz=3] run fill 1685 22 1275 1682 26 1278 minecraft:air replace minecraft:pink_terracotta
execute unless entity @a[x=1682,y=23,z=1275,dx=3,dz=3] run function ocarina_of_time:moving_things/jabu_jabu/door_diagonal_2

#Door 10
execute if entity @a[x=1697,y=26,z=1270,dx=2,dz=2] unless entity @a[tag=MiniBoss] run function ocarina_of_time:moving_things/jabu_jabu/reset_platform
execute if entity @a[x=1697,y=26,z=1270,dx=2,dz=2] unless entity @a[tag=MiniBoss] run fill 1700 25 1271 1696 29 1271 minecraft:air replace minecraft:pink_terracotta
execute unless entity @a[x=1697,y=26,z=1270,dx=2,dz=2] run fill 1700 25 1271 1696 29 1271 minecraft:pink_terracotta replace minecraft:air
execute if entity @a[tag=MiniBoss] run fill 1700 25 1271 1696 29 1271 minecraft:pink_terracotta replace minecraft:air

#Door 11
execute if entity @a[x=1689,y=23,z=1309,dx=3,dz=3] run fill 1689 26 1309 1692 22 1312 minecraft:air replace minecraft:pink_terracotta
execute unless entity @a[x=1689,y=23,z=1309,dx=3,dz=3] run function ocarina_of_time:moving_things/jabu_jabu/door_diagonal

#Switch
execute if entity @e[type=armor_stand,tag=Ruto1,x=1646.7,y=21.5,z=1313.7,dx=1,dy=1,dz=1] if block 1647 22 1314 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/door_3
execute if entity @e[type=snowball,x=1646.7,y=21.5,z=1313.7,dx=1,dy=1,dz=1] if block 1647 22 1314 minecraft:gold_block run function ocarina_of_time:moving_things/jabu_jabu/door_3
#Door 12
execute if entity @a[x=1650,y=19,z=1302,dx=2,dz=2] unless block 1651 20 1304 minecraft:vine run fill 1649 18 1303 1653 22 1303 minecraft:air replace minecraft:pink_terracotta
execute unless entity @a[x=1650,y=19,z=1302,dx=2,dz=2] run fill 1649 18 1303 1653 22 1303 minecraft:pink_terracotta replace minecraft:air
execute if block 1651 20 1304 minecraft:vine run fill 1649 21 1304 1653 21 1304 minecraft:vine[north=true,up=false] replace minecraft:vine[north=true,up=true]
execute if block 1651 20 1304 minecraft:vine run fill 1650 22 1304 1652 22 1304 minecraft:vine[north=true,up=false] replace minecraft:vine[north=true,up=true]
execute if block 1653 21 1302 minecraft:vine run fill 1653 21 1302 1649 22 1302 minecraft:vine[south=true,up=false] replace minecraft:vine[south=true,up=true]
#Door 13
execute if entity @a[x=1665,y=64,z=1260,dx=2,dz=2] run function ocarina_of_time:moving_things/jabu_jabu/reset_platform
execute unless entity @a[x=1665,y=64,z=1260,dx=2,dz=2] run fill 1666 63 1259 1666 67 1263 minecraft:pink_terracotta replace minecraft:air

#Door 14
execute if entity @a[x=1650,y=64,z=1278,dx=2,dz=2] run fill 1653 63 1279 1649 67 1279 minecraft:air replace minecraft:pink_terracotta
execute unless entity @a[x=1650,y=64,z=1278,dx=2,dz=2] run fill 1653 63 1279 1649 67 1279 minecraft:pink_terracotta replace minecraft:air

#Switch for Box
execute if entity @a[x=1651,y=52,z=1304,dx=0,dz=0] run fill 1653 52 1310 1649 56 1310 minecraft:air replace minecraft:vine
execute if block 1651 52 1304 minecraft:oak_planks run fill 1653 52 1310 1649 56 1310 minecraft:air replace minecraft:vine
execute unless entity @a[x=1651,y=52,z=1304,dx=0,dz=0] unless block 1651 52 1304 minecraft:oak_planks if block 1651 54 1311 minecraft:pink_terracotta run fill 1653 52 1310 1649 56 1310 minecraft:vine[south=true,up=false] replace minecraft:air
#Door 15
execute if entity @a[x=1650,y=53,z=1310,dx=2,dz=2] unless block 1651 54 1310 minecraft:vine run fill 1653 52 1311 1649 56 1311 minecraft:air replace minecraft:pink_terracotta
execute if entity @a[x=1650,y=53,z=1310,dx=2,dz=2] run function ocarina_of_time:moving_things/jabu_jabu/crate_reset
execute unless entity @a[x=1650,y=53,z=1310,dx=2,dz=2] run fill 1653 52 1311 1649 56 1311 minecraft:pink_terracotta replace minecraft:air
execute if entity @a[x=1650,y=53,z=1311,dx=2,dz=1] run fill 1653 52 1310 1649 56 1310 minecraft:air replace minecraft:vine
execute if entity @a[x=1650,y=53,z=1311,dx=2,dz=1] run fill 1649 52 1311 1653 56 1311 minecraft:air replace minecraft:pink_terracotta
execute if block 1651 54 1310 minecraft:vine run fill 1653 55 1310 1649 55 1310 minecraft:vine[south=true,up=false] replace minecraft:vine[south=true,up=true]
execute if block 1651 54 1310 minecraft:vine run fill 1652 56 1310 1650 56 1310 minecraft:vine[south=true,up=false] replace minecraft:vine[south=true,up=true]

#Switch
execute if entity @e[type=armor_stand,tag=Boomerang,x=1650.7,y=61.5,z=1333.7,dx=1,dy=1,dz=1] run function ocarina_of_time:moving_things/jabu_jabu/door_4
#Door 16
execute if entity @a[x=1661,y=53,z=1332,dx=1,dz=2] unless block 1661 54 1333 minecraft:vine run fill 1662 52 1331 1662 56 1335 minecraft:air replace minecraft:pink_terracotta
execute unless entity @a[x=1661,y=53,z=1332,dx=2,dz=2] run fill 1662 52 1331 1662 56 1335 minecraft:pink_terracotta replace minecraft:air
execute if block 1661 54 1333 minecraft:vine run fill 1661 55 1331 1661 55 1335 minecraft:vine[east=true,up=false] replace minecraft:vine[east=true,up=true]
execute if block 1661 54 1333 minecraft:vine run fill 1661 56 1332 1661 56 1334 minecraft:vine[east=true,up=false] replace minecraft:vine[east=true,up=true]

#Moving Platform
execute as @e[type=area_effect_cloud,tag=JabuPlatform] run function ocarina_of_time:moving_things/jabu_jabu/moving_platform
execute as @a at @s if block ~ ~1 ~ minecraft:red_terracotta run tp @s ~ ~-1 ~

#Moving Floors
execute as @a at @s if block ~ ~-1 ~ minecraft:light_blue_terracotta run tp @s ~.01 ~ ~-.02
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_terracotta run tp @s ~.01 ~ ~.02
execute as @a at @s if block ~ ~-1 ~ minecraft:magenta_terracotta run tp @s ~.02 ~ ~

#Wools
execute as @a at @s if block ~ ~-2 ~-.3 minecraft:light_blue_wool run tp @s ~ ~ ~.3
execute as @a at @s if block ~ ~-2 ~.3 minecraft:yellow_wool run tp @s ~ ~ ~-.3
execute as @a at @s if block ~.3 ~-1 ~ minecraft:orange_wool run tp @s ~-.3 ~ ~

#Platform
execute as @a at @s if block ~ ~-2 ~ minecraft:green_terracotta unless block 1651 51 1301 minecraft:pink_terracotta run tag @e[type=area_effect_cloud,tag=JabuPlatform] add JabuPlatform2
execute as @e[type=area_effect_cloud,tag=JabuPlatform2] run function ocarina_of_time:moving_things/jabu_jabu/falling_platform

#Water
execute as @e[type=area_effect_cloud,tag=JabuPlatform] if block 1661 18 1323 minecraft:light_weighted_pressure_plate[power=1] run tag @s add JabuWater
execute as @e[type=area_effect_cloud,tag=JabuWater] run function ocarina_of_time:moving_things/jabu_jabu/water_level

#Falling Black Holes
execute as @a at @s if block ~ ~-.01 ~ minecraft:black_carpet run function ocarina_of_time:moving_things/jabu_jabu/fall
execute as @e[type=armor_stand,tag=Ruto1] at @s if block ~ ~-1 ~ minecraft:black_carpet run tp @s ~ ~-.2 ~

#Ruto
execute as @e[type=armor_stand,tag=Ruto1] at @s if entity @a[tag=CarryRuto] unless entity @s[tag=HoldRuto] if entity @a[distance=..1.2] run tag @s add HoldRuto
execute as @e[type=armor_stand,tag=Ruto1,tag=HoldRuto] at @s if entity @a[tag=CarryRuto] run function ocarina_of_time:items/ruto

#Reset Ruto
execute as @e[type=armor_stand,tag=Ruto1] at @s if entity @a[tag=CarryRuto] if block ~ ~2 ~ minecraft:water run function ocarina_of_time:moving_things/jabu_jabu/reset_ruto
execute as @e[type=armor_stand,tag=Ruto1] if entity @s[tag=HoldRuto] at @a if entity @a[tag=CarryRuto] if block ~ ~1 ~ minecraft:water run function ocarina_of_time:moving_things/jabu_jabu/reset_ruto
execute as @e[type=armor_stand,tag=Ruto1] at @s if entity @a[tag=CarryRuto] unless entity @s[tag=HoldRuto] if block ~ ~1 ~ minecraft:red_terracotta run function ocarina_of_time:moving_things/jabu_jabu/reset_ruto
execute as @e[type=armor_stand,tag=Ruto1] at @s if entity @a[tag=CarryRuto] if block ~ ~ ~ minecraft:grass_block run function ocarina_of_time:moving_things/jabu_jabu/reset_ruto
execute as @e[type=armor_stand,tag=Ruto1] if entity @s[tag=HoldRuto] at @a if entity @a[tag=CarryRuto] if block ~ ~-.15 ~ minecraft:vine run tp @a ~ ~-.15 ~
execute as @e[type=armor_stand,tag=Ruto1] at @a if entity @a[tag=CarryRuto] unless entity @s[distance=..20] unless entity @s[scores={text=2}] run function ocarina_of_time:moving_things/jabu_jabu/reset_ruto

execute as @e[type=armor_stand,tag=Ruto1] at @s if block ~ ~1 ~ minecraft:pink_terracotta run tp @s ~ ~1 ~
execute as @e[type=armor_stand,tag=Ruto1,tag=!HoldRuto] at @s if entity @a[tag=CarryRuto] if block ~ ~ ~ minecraft:air run tp @s ~ ~-.2 ~

#Crate
execute as @a at @s store result score @s nearbyBomb run clone ~-3 ~-3 ~-3 ~3 ~3 ~3 ~-3 ~-3 ~-3 filtered minecraft:oak_planks force
execute as @a at @s unless entity @s[tag=Holding] unless entity @e[type=armor_stand,tag=Crate,tag=Throw] if entity @s[scores={nearbyBomb=1..}] run function ocarina_of_time:items/crate/pickup
execute as @e[type=armor_stand,tag=Crate] at @s run function ocarina_of_time:items/crate/holding
fill 1652 18 1295 1650 53 1293 minecraft:air replace minecraft:oak_planks

#Crate Switch 1
execute if block 1651 53 1304 minecraft:oak_planks run fill 1651 52 1304 1651 52 1304 minecraft:oak_planks
execute if block 1651 53 1304 minecraft:oak_planks run fill 1651 53 1304 1651 53 1304 minecraft:air

execute if block 1652 52 1304 minecraft:oak_planks run fill 1651 52 1304 1651 52 1304 minecraft:oak_planks
execute if block 1652 52 1304 minecraft:oak_planks run fill 1652 52 1304 1652 52 1304 minecraft:air

execute if block 1651 52 1305 minecraft:oak_planks run fill 1651 52 1304 1651 52 1304 minecraft:oak_planks
execute if block 1651 52 1305 minecraft:oak_planks run fill 1651 52 1305 1651 52 1305 minecraft:air

execute if block 1650 52 1304 minecraft:oak_planks run fill 1651 52 1304 1651 52 1304 minecraft:oak_planks
execute if block 1650 52 1304 minecraft:oak_planks run fill 1650 52 1304 1650 52 1304 minecraft:air

execute if block 1651 52 1303 minecraft:oak_planks run fill 1651 52 1304 1651 52 1304 minecraft:oak_planks
execute if block 1651 52 1303 minecraft:oak_planks run fill 1651 52 1303 1651 52 1303 minecraft:air

execute unless block 1651 52 1304 minecraft:oak_planks run fill 1651 52 1304 1651 52 1304 minecraft:stone_pressure_plate replace minecraft:air
#Crate Switch 2
execute if block 1737 53 1273 minecraft:oak_planks run fill 1737 52 1273 1737 52 1273 minecraft:oak_planks
execute if block 1737 53 1273 minecraft:oak_planks run fill 1737 53 1273 1737 53 1273 minecraft:air

execute if block 1737 52 1274 minecraft:oak_planks run fill 1737 52 1273 1737 52 1273 minecraft:oak_planks
execute if block 1737 52 1274 minecraft:oak_planks run fill 1737 52 1274 1737 52 1274 minecraft:air

execute if block 1736 52 1273 minecraft:oak_planks run fill 1737 52 1273 1737 52 1273 minecraft:oak_planks
execute if block 1736 52 1273 minecraft:oak_planks run fill 1736 52 1273 1736 52 1273 minecraft:air

execute if block 1737 52 1272 minecraft:oak_planks run fill 1737 52 1273 1737 52 1273 minecraft:oak_planks
execute if block 1737 52 1272 minecraft:oak_planks run fill 1737 52 1272 1737 52 1272 minecraft:air

execute if block 1738 52 1273 minecraft:oak_planks run fill 1737 52 1273 1737 52 1273 minecraft:oak_planks
execute if block 1738 52 1273 minecraft:oak_planks run fill 1738 52 1273 1738 52 1273 minecraft:air

execute unless block 1737 52 1273 minecraft:oak_planks run fill 1737 52 1273 1737 52 1273 minecraft:stone_pressure_plate replace minecraft:air

#Ruto Sees Saphire
execute as @e[type=armor_stand,tag=Ruto1] if entity @s[x=1697,y=26,z=1270,dx=2,dy=2,dz=0] unless block 1698 23 1271 minecraft:gold_block run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"That's it! That's what I've been looking for! Throw me up there! Onto the platform!"}]
execute as @e[type=armor_stand,tag=Ruto1] if entity @s[x=1697,y=26,z=1270,dx=2,dy=2,dz=0] run fill 1698 23 1271 1698 23 1271 minecraft:gold_block

#MiniBoss Platform
execute as @e[type=area_effect_cloud,tag=MiniBossPlatform,tag=Defeated] at @a run function ocarina_of_time:moving_things/jabu_jabu/final_platform
execute as @a at @s if entity @s[x=1693,y=26,z=1256,dx=10,dz=10] if block ~ ~-1 ~ minecraft:pink_terracotta run tag @e[type=area_effect_cloud,tag=MiniBossPlatform,tag=Defeated] add Up

#Enemies
function ocarina_of_time:moving_things/jabu_jabu/enemies/enemies

#Slimy Things
execute as @a at @s if block 1746 54 1275 minecraft:red_wool if entity @s[x=1745,y=53,z=1273,dx=3,dy=1,dz=4] run tag @s add Shock
execute if block 1746 54 1275 minecraft:red_wool if entity @a[x=1745,y=53,z=1273,dx=3,dy=1,dz=4] run tp @a 1741 52 1275
execute as @a at @s if block 1746 54 1294 minecraft:blue_wool if entity @s[x=1745,y=53,z=1292,dx=3,dy=1,dz=4] run tag @s add Shock
execute if block 1746 54 1294 minecraft:blue_wool if entity @a[x=1745,y=53,z=1292,dx=3,dy=1,dz=4] run tp @a 1741 52 1294
execute as @a at @s if block 1746 54 1313 minecraft:red_wool if entity @s[x=1745,y=53,z=1311,dx=3,dy=1,dz=4] run tag @s add Shock
execute if block 1746 54 1313 minecraft:red_wool if entity @a[x=1745,y=53,z=1311,dx=3,dy=1,dz=4] run tp @a 1741 52 1313
execute as @a at @s if block ~ ~ ~ minecraft:glass_pane run tag @s add Shock

#Navi
execute unless block 1745 47 1292 minecraft:gold_block if block 1746 54 1275 minecraft:red_wool if entity @a[x=1743,y=53,z=1273,dx=0,dz=4] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Watch out, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! Electricity is running through this ","color":"aqua"},{"text":"red slimy thing","color":"red"},{"text":"!","color":"aqua"}]
execute unless block 1745 47 1292 minecraft:gold_block if block 1746 54 1275 minecraft:red_wool if entity @a[x=1743,y=53,z=1273,dx=0,dz=4] run fill 1745 47 1292 1745 47 1292 minecraft:gold_block
execute unless block 1745 47 1292 minecraft:gold_block if block 1746 54 1313 minecraft:red_wool if entity @a[x=1743,y=53,z=1311,dx=0,dz=4] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Watch out, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! Electricity is running through this ","color":"aqua"},{"text":"red slimy thing","color":"red"},{"text":"!","color":"aqua"}]
execute unless block 1745 47 1292 minecraft:gold_block if block 1746 54 1275 minecraft:red_wool if entity @a[x=1743,y=53,z=1311,dx=0,dz=4] run fill 1745 47 1292 1745 47 1292 minecraft:gold_block
execute unless block 1745 47 1296 minecraft:gold_block if block 1746 54 1294 minecraft:blue_wool if entity @a[x=1743,y=53,z=1292,dx=0,dz=4] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Watch out, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! Electricity is running through this ","color":"aqua"},{"text":"blue slimy thing","color":"blue"},{"text":"!","color":"aqua"}]
execute unless block 1745 47 1296 minecraft:gold_block if block 1746 54 1294 minecraft:blue_wool if entity @a[x=1743,y=53,z=1292,dx=0,dz=4] run fill 1745 47 1296 1745 47 1296 minecraft:gold_block
execute unless block 1745 47 1298 minecraft:gold_block if block 1700 55 1286 minecraft:lime_wool if entity @a[x=1698,y=53,z=1284,dx=0,dz=4] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Watch out, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! Electricity is running through this ","color":"aqua"},{"text":"green slimy thing","color":"green"},{"text":"!","color":"aqua"}]
execute unless block 1745 47 1298 minecraft:gold_block if block 1700 55 1286 minecraft:lime_wool if entity @a[x=1698,y=53,z=1284,dx=5,dz=5] run fill 1745 47 1298 1745 47 1298 minecraft:gold_block
execute unless block 1745 47 1294 minecraft:gold_block unless block 1746 54 1275 minecraft:red_wool if entity @a[x=1743,y=53,z=1273,dx=0,dz=4] run tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" The ","color":"aqua"},{"text":"red slimy thing","color":"red"},{"text":" is gone! That must be because you cut the ","color":"aqua"},{"text":"red tail","color":"red"},{"text":"! Will that work with the other ones too?","color":"aqua"}]
execute unless block 1745 47 1294 minecraft:gold_block unless block 1746 54 1275 minecraft:red_wool if entity @a[x=1743,y=53,z=1273,dx=0,dz=4] run fill 1745 47 1294 1745 47 1294 minecraft:gold_block
execute unless block 1745 47 1294 minecraft:gold_block unless block 1746 54 1313 minecraft:red_wool if entity @a[x=1743,y=53,z=1311,dx=0,dz=4] run tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" The ","color":"aqua"},{"text":"red slimy thing","color":"red"},{"text":" is gone! That must be because you cut the ","color":"aqua"},{"text":"red tail","color":"red"},{"text":"! Will that work with the other ones too?","color":"aqua"}]
execute unless block 1745 47 1294 minecraft:gold_block unless block 1746 54 1275 minecraft:red_wool if entity @a[x=1743,y=53,z=1311,dx=0,dz=4] run fill 1745 47 1294 1745 47 1294 minecraft:gold_block

#Boomerang Room
execute if entity @a[x=1735,y=53,z=1325,dx=4,dy=1,dz=0] unless block 1738 46 1334 minecraft:gold_block run tag @a add StingerRoom
execute if block 1738 46 1334 minecraft:gold_block run tag @a remove StingerRoom
execute if entity @a[tag=StingerRoom] unless entity @e[type=zombie,tag=Stinger4] unless entity @e[type=zombie,tag=Stinger5] unless entity @e[type=zombie,tag=Stinger6] unless block 1738 46 1334 minecraft:gold_block run clone 1737 46 1334 1737 46 1334 1737 52 1334
execute if entity @a[tag=StingerRoom] unless entity @e[type=zombie,tag=Stinger4] unless entity @e[type=zombie,tag=Stinger5] unless entity @e[type=zombie,tag=Stinger6] run fill 1738 46 1334 1738 46 1334 minecraft:gold_block

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/jabu_jabu/pots

#Black Floor
fill 1700 52 1287 1701 52 1286 minecraft:black_carpet replace minecraft:air

#Boss
execute unless block 1683 44 1328 minecraft:gold_block if entity @a[x=1664,y=53,z=1331,dx=1,dy=1,dz=4] run tag @a add Boss
execute if block 1683 44 1328 minecraft:gold_block unless entity @e[type=armor_stand,tag=BarinadeControl] run tag @a remove Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/jabu_jabu/boss/loop

#Compass
execute if data block 1762 52 1275 {Items:[]} run fill 1762 46 1277 1762 46 1277 minecraft:gold_block
