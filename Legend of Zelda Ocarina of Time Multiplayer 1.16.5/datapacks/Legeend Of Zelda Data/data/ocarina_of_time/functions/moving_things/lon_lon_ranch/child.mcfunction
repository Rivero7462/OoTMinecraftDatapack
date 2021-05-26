#Secret
execute unless block 387 5 1329 minecraft:dropper run clone 387 5 1328 387 5 1328 387 5 1329
execute unless block 388 5 1329 minecraft:dropper run clone 388 5 1328 388 5 1328 388 5 1329

#Gates
#1
fill 496 30 1299 491 32 1300 minecraft:air replace minecraft:iron_bars
#2
fill 457 30 1329 462 32 1327 minecraft:air replace minecraft:iron_bars

#Fences
fill 451 35 1352 451 30 1362 minecraft:air
fill 451 29 1352 451 29 1362 minecraft:grass_block
#2
fill 477 30 1335 477 34 1344 minecraft:air
fill 477 29 1335 477 29 1344 minecraft:grass_block

#Tree
execute unless block 507 30 1305 minecraft:dark_oak_log run clone 504 14 1303 510 22 1309 504 30 1302

#Crate
clone 501 25 1302 502 26 1303 501 30 1302

#Running Horse
execute unless entity @e[type=horse,tag=RunningHorse] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 458 30 1325 {NoAI:1b,Tags:["RunningHorse","RanchHorse","NoRideHorse"],Rotation:[270f],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Silent:1,Invulnerable:1}
execute as @e[type=horse,tag=RunningHorse] at @s unless entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/lon_lon_ranch/horse

#Chest
fill 462 33 1326 462 33 1328 minecraft:air replace minecraft:player_wall_head
execute as @e[type=villager,tag=HorseRupee] at @s run tp @s ~ 24 ~

#Door
execute unless entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block if block 497 30 1279 minecraft:iron_door run clone 497 25 1279 497 26 1279 497 30 1279
execute if entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block if block 497 30 1279 minecraft:dark_oak_door run clone 497 25 1281 497 26 1281 497 30 1279

#Npcs
execute as @e[type=armor_stand,tag=AdultMalon1] at @s if block 436 26 1398 minecraft:gold_block run tp @s 479 26 1287
execute as @e[type=armor_stand,tag=SleepIngo1] at @s run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=SleepIngo2] at @s run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=SleepIngo3] at @s run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=SleepIngo4] at @s run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=AdultIngo1] if block 436 26 1398 minecraft:gold_block at @s run tp @s ~ 26 ~
execute as @e[type=horse,tag=SaddleRanchHorse] at @s run tp @s 456 25 1333
execute as @e[type=horse,tag=FakeEpona] at @s run tp @s 468 25 1351
kill @e[type=chicken,tag=AdultRanchCucco]
execute unless entity @a[scores={time=13001..23000}] if block 436 26 1398 minecraft:gold_block unless block 423 3 1362 minecraft:gold_block run tp @e[type=armor_stand,tag=Ingo] 489 30 1313 -150 ~
execute unless entity @a[scores={time=13001..23000}] if block 436 26 1398 minecraft:gold_block if block 423 3 1362 minecraft:gold_block run tp @e[type=armor_stand,tag=Ingo] 483 30 1293 -150 ~
execute if entity @a[scores={time=13001..23000}] run tp @e[type=armor_stand,tag=Ingo] 483 30 1293 -150 ~
execute unless entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block run tp @e[type=armor_stand,tag=Malon3] 468 30 1351
execute if entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block run tp @e[type=armor_stand,tag=Malon3] 468 25 1351
execute as @e[type=horse,tag=BabyEpona] at @s unless entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block run tp @s ~ 30 ~
execute as @e[type=horse,tag=BabyEpona] at @s if entity @a[scores={time=13001..23000}] if block 423 3 1362 minecraft:gold_block run tp @s ~ 25 ~
execute as @e[type=armor_stand,tag=TalonSleep4] at @s if block 436 26 1398 minecraft:gold_block if entity @a[distance=..2] unless entity @a[scores={time=13001..23000}] run tp @e[type=armor_stand,tag=Talon2] 433.8 5.4 1362.0
execute as @e[type=armor_stand,tag=TalonSleep4] at @s if block 436 26 1398 minecraft:gold_block if entity @a[distance=..2] unless entity @a[scores={time=13001..23000}] run tp @s 433.8 2.4 1362.0
execute if block 423 3 1362 minecraft:gold_block if entity @a[scores={time=13001..23000}] if block 436 26 1398 minecraft:gold_block run tp @e[type=armor_stand,tag=TalonSleep4] 433.8 5.4 1362.0
execute if block 423 3 1362 minecraft:gold_block if entity @a[scores={time=13001..23000}] if block 436 26 1398 minecraft:gold_block run tp @e[type=armor_stand,tag=Talon2] 433.8 2.4 1362.0
execute as @e[type=armor_stand,tag=AdultIngo2] if block 436 26 1398 minecraft:gold_block at @s run tp @s ~ 25 ~
execute as @e[type=horse,tag=RunningHorse] if entity @a[scores={time=13001..23000}] run kill @s
execute as @e[type=armor_stand,tag=AdultTalon] at @s run tp @s 466 26 1326

#Guays
execute if entity @a[scores={time=13001..23000}] run tag @a remove NoGuay
execute unless entity @a[scores={time=13001..23000}] run tag @a add NoGuay

#Carpet
fill 381 5 1334 386 5 1338 minecraft:light_gray_carpet replace minecraft:red_carpet
fill 381 4 1334 386 4 1338 minecraft:light_gray_wool replace minecraft:red_wool
fill 388 5 1331 389 5 1334 minecraft:red_carpet
fill 390 5 1333 387 5 1332 minecraft:red_carpet
fill 379 11 1329 391 4 1341 minecraft:white_terracotta replace minecraft:magenta_terracotta
