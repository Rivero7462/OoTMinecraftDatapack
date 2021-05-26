#Pots
fill 486 30 1274 486 30 1274 minecraft:air
fill 486 30 1275 486 30 1275 minecraft:air
fill 486 30 1276 486 30 1276 minecraft:air
fill 486 30 1277 486 30 1277 minecraft:air
fill 495 30 1369 495 30 1369 minecraft:air
fill 495 30 1370 495 30 1370 minecraft:air
fill 496 30 1370 496 30 1370 minecraft:air
fill 387 5 1330 387 5 1330 minecraft:air
fill 388 5 1330 388 5 1330 minecraft:air
fill 380 5 1340 380 5 1340 minecraft:air

#Secret
fill 387 5 1329 388 5 1329 minecraft:white_terracotta

#Gates
#1
execute unless entity @e[type=armor_stand,tag=BadIngoGone] unless block 495 30 1301 minecraft:iron_bars unless block 496 30 1300 minecraft:iron_bars run clone 496 26 1299 491 28 1300 491 30 1299 filtered minecraft:iron_bars
#2
execute unless entity @e[type=armor_stand,tag=BadIngoGone] unless block 457 30 1328 minecraft:iron_bars if entity @a[scores={time=13001..23000}] run clone 462 26 1328 457 28 1329 457 30 1328 filtered minecraft:iron_bars
execute unless entity @e[type=armor_stand,tag=BadIngoGone] if entity @a[scores={time=13001..23000}] run fill 458 32 1327 461 30 1327 minecraft:air replace minecraft:iron_bars

execute unless entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run fill 458 32 1327 461 30 1327 minecraft:iron_bars[east=true,west=true]
execute unless entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run fill 457 32 1328 462 30 1329 minecraft:air replace minecraft:iron_bars

#Fences
#1
execute unless block 451 30 1353 minecraft:iron_bars run clone 451 23 1352 451 28 1362 451 30 1352
#2
execute unless block 477 30 1336 minecraft:iron_bars run clone 477 22 1335 477 26 1344 477 30 1335

#Tree
fill 507 29 1305 507 29 1305 minecraft:grass_block
fill 504 30 1302 510 38 1308 minecraft:air

#Crate
fill 501 29 1302 502 29 1303 minecraft:grass_block
fill 501 30 1302 502 31 1303 minecraft:air

#Running Horse
execute as @e[type=horse,tag=RunningHorse] run kill @s

#Door
execute if block 497 30 1279 minecraft:iron_door run clone 497 25 1279 497 26 1279 497 30 1279

#Chest
clone 462 24 1326 462 24 1328 462 33 1326
execute as @e[type=villager,tag=HorseRupee] at @s run tp @s ~ 33 ~

#Npcs
execute unless entity @a[scores={time=13001..23000}] unless entity @e[type=armor_stand,tag=BadIngoGone] if block 436 26 1398 minecraft:gold_block run tp @e[type=armor_stand,tag=AdultMalon1] 479 30 1287 -70 ~
execute if entity @a[scores={time=13001..23000}] if block 436 26 1398 minecraft:gold_block unless entity @a[tag=MalonMinigame] run tp @e[type=armor_stand,tag=AdultMalon1] 468 30 1351 180 ~
execute unless entity @a[scores={time=13001..23000}] if entity @e[type=armor_stand,tag=BadIngoGone] if block 436 26 1398 minecraft:gold_block unless entity @a[tag=MalonMinigame] run tp @e[type=armor_stand,tag=AdultMalon1] 460 30 1326 180 ~
execute if entity @a[scores={time=13001..23000}] run kill @e[type=chicken,tag=AdultRanchCucco]
execute as @e[type=armor_stand,tag=SleepIngo1] at @s unless entity @e[type=armor_stand,tag=BadIngoGone] if entity @a[scores={time=13001..23000}] run tp @s ~ 4.2 ~
execute as @e[type=armor_stand,tag=SleepIngo2] at @s unless entity @e[type=armor_stand,tag=BadIngoGone] if entity @a[scores={time=13001..23000}] run tp @s ~ 4.9 ~
execute as @e[type=armor_stand,tag=SleepIngo1] at @s unless entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=SleepIngo2] at @s unless entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=SleepIngo3] at @s if entity @e[type=armor_stand,tag=BadIngoGone] if entity @a[scores={time=13001..23000}] run tp @s ~ 4.2 ~
execute as @e[type=armor_stand,tag=SleepIngo4] at @s if entity @e[type=armor_stand,tag=BadIngoGone] if entity @a[scores={time=13001..23000}] run tp @s ~ 4.9 ~
execute as @e[type=armor_stand,tag=SleepIngo3] at @s if entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=SleepIngo4] at @s if entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run tp @s ~ 14 ~
execute as @e[type=armor_stand,tag=AdultIngo1] if block 436 26 1398 minecraft:gold_block at @s unless entity @s[tag=BadIngoGone] unless entity @s[tag=EndGate] unless entity @a[scores={time=13001..23000}] unless entity @a[tag=RaceGame] unless entity @a[tag=HorseRanchGame] run tp @s 461 30 1325 180 ~
execute as @e[type=armor_stand,tag=AdultIngo1] if block 436 26 1398 minecraft:gold_block at @s if entity @a[scores={time=13001..23000}] run tp @s ~ 26 ~
execute as @e[type=armor_stand,tag=AdultIngo1] if block 436 26 1398 minecraft:gold_block at @s if entity @s[tag=BadIngoGone] run tp @s ~ 25 ~
execute as @e[type=horse,tag=SaddleRanchHorse] at @s if entity @a[scores={time=13001..23000}] run tp @s 456 25 1333
execute as @e[type=horse,tag=SaddleRanchHorse] at @s unless entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] unless entity @a[tag=RaceGame] unless entity @a[tag=HorseRanchGame] run tp @s 456 30 1333 0 ~
execute as @e[type=horse,tag=SaddleRanchHorse] at @s if entity @e[type=armor_stand,tag=BadIngoGone] run tp @s 456 25 1333
execute as @e[type=horse,tag=FakeEpona] at @s unless entity @a[scores={time=13001..23000}] unless entity @e[type=armor_stand,tag=EndGate] unless entity @a[tag=RaceGame] unless entity @a[tag=HorseRanchGame] unless entity @a[scores={MiniGameTime=3000}] run tp @s 468 30 1351
execute as @e[type=horse,tag=FakeEpona] at @s if entity @a[scores={time=13001..23000}] run tp @s 468 25 1351
execute as @e[type=armor_stand,tag=Ingo] at @s if block 436 26 1398 minecraft:gold_block run tp @s 489 25 1313 -150 ~
tp @e[type=armor_stand,tag=Malon3] 468 25 1351
execute as @e[type=horse,tag=BabyEpona] at @s run tp @s ~ 25 ~
execute as @e[type=armor_stand,tag=TalonSleep4] at @s if block 436 26 1398 minecraft:gold_block run tp @s 433.8 3 1362.0
execute as @e[type=armor_stand,tag=TalonSleep4] at @s if block 436 26 1398 minecraft:gold_block run tp @s 433.8 3 1362.0
execute as @e[type=armor_stand,tag=Talon2] at @s if block 436 26 1398 minecraft:gold_block run tp @s 433.8 3 1362.0
execute as @e[type=armor_stand,tag=AdultIngo2] if block 436 26 1398 minecraft:gold_block at @s if entity @a[scores={time=13001..23000}] if entity @e[type=armor_stand,tag=BadIngoGone] run tp @s ~ 25 ~
execute as @e[type=armor_stand,tag=AdultIngo2] if block 436 26 1398 minecraft:gold_block at @s unless entity @a[scores={time=13001..23000}] unless entity @a[tag=MalonMinigame] if entity @e[type=armor_stand,tag=BadIngoGone] run tp @s ~ 30 ~

execute as @e[type=armor_stand,tag=AdultTalon] at @s if block 479 26 1291 minecraft:gold_block if entity @a[scores={time=13001..23000}] run tp @s 466 30 1326
execute as @e[type=armor_stand,tag=AdultTalon] at @s if block 479 26 1291 minecraft:gold_block unless entity @a[scores={time=13001..23000}] run tp @s 478 30 1298

#Text
#Day
execute unless entity @a[scores={time=13001..23000}] unless entity @e[type=armor_stand,tag=BadIngoGone] run scoreboard players set @e[type=armor_stand,tag=AdultMalon1] text 1
execute unless entity @a[scores={time=13001..23000}] if entity @e[type=armor_stand,tag=BadIngoGone] unless block 457 26 1325 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=AdultMalon1] text 5

#Night
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=armor_stand,tag=BadIngoGone] unless block 470 25 1351 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=AdultMalon1] text 2
execute if entity @a[scores={time=13001..23000}] unless entity @e[type=armor_stand,tag=BadIngoGone] if block 470 25 1351 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=AdultMalon1] text 3

#Carpet
fill 381 5 1334 386 5 1338 minecraft:red_carpet replace minecraft:light_gray_carpet
fill 381 4 1334 386 4 1338 minecraft:red_wool replace minecraft:light_gray_wool
fill 388 5 1331 389 5 1334 minecraft:purple_carpet
fill 390 5 1333 387 5 1332 minecraft:purple_carpet
fill 379 11 1329 391 4 1341 minecraft:magenta_terracotta replace minecraft:white_terracotta
