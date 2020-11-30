#Crates
fill 355 76 2040 356 77 2043 minecraft:air
fill 355 76 2048 356 76 2049 minecraft:air
fill 367 36 2039 368 36 2040 minecraft:air

#Torch
fill 360 75 2052 360 76 2052 minecraft:air

#Tent
execute unless block 356 76 2032 minecraft:white_wool run clone 347 62 2022 357 68 2033 347 76 2022

#Npc's
kill @e[type=chicken,tag=GerudoCucco]
tp @e[type=armor_stand,tag=Gerudo1] 366 70 2041
tp @e[type=armor_stand,tag=Gerudo2] 366 30 2037
tp @e[tag=Mutoh2] 356 76 2036 0 ~
tp @e[type=cow,tag=GerudoCow] 368 30 2037

#Bridge
execute if entity @a[tag=FixedBridge] run fill 367 70 2038 367 70 2038 minecraft:gold_block

fill 367 75 2042 367 73 2040 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 381 72 2040 371 72 2042 minecraft:air replace minecraft:oak_slab
execute unless block 367 70 2038 minecraft:gold_block run fill 370 67 2040 370 71 2042 minecraft:oak_planks
execute unless block 367 70 2038 minecraft:gold_block run fill 382 67 2042 382 71 2040 minecraft:oak_planks
execute unless block 367 70 2038 minecraft:gold_block run fill 371 72 2040 371 67 2042 minecraft:ladder[facing=east]
execute unless block 367 70 2038 minecraft:gold_block run fill 381 67 2040 381 72 2042 minecraft:ladder[facing=west]
execute unless block 367 70 2038 minecraft:gold_block run fill 376 72 2040 376 72 2042 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 370 73 2039 370 79 2039 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 370 79 2043 370 73 2043 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 376 79 2039 376 72 2039 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 376 72 2043 376 79 2043 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 382 79 2043 382 73 2043 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 382 73 2039 382 79 2039 minecraft:air
execute unless block 367 70 2038 minecraft:gold_block run fill 384 80 2039 368 80 2043 minecraft:air

execute if block 367 70 2038 minecraft:gold_block run fill 368 80 2039 384 80 2039 minecraft:oak_fence[east=true,west=true]
execute if block 367 70 2038 minecraft:gold_block run fill 384 80 2043 368 80 2043 minecraft:oak_fence[east=true,west=true]
execute if block 367 70 2038 minecraft:gold_block run fill 382 73 2043 382 79 2043 minecraft:oak_fence
execute if block 367 70 2038 minecraft:gold_block run fill 370 73 2043 370 79 2043 minecraft:oak_fence
execute if block 367 70 2038 minecraft:gold_block run fill 370 73 2039 370 79 2039 minecraft:oak_fence
execute if block 367 70 2038 minecraft:gold_block run fill 382 73 2039 382 79 2039 minecraft:oak_fence
execute if block 367 70 2038 minecraft:gold_block run fill 376 73 2039 376 79 2039 minecraft:oak_fence
execute if block 367 70 2038 minecraft:gold_block run fill 376 73 2043 376 79 2043 minecraft:oak_fence
execute if block 367 70 2038 minecraft:gold_block run fill 376 72 2039 376 72 2039 minecraft:oak_fence[south=true]
execute if block 367 70 2038 minecraft:gold_block run fill 376 72 2043 376 72 2043 minecraft:oak_fence[north=true]
execute if block 367 70 2038 minecraft:gold_block run fill 371 72 2040 381 72 2042 minecraft:oak_slab[type=top]
execute if block 367 70 2038 minecraft:gold_block run fill 376 72 2040 376 72 2042 minecraft:oak_planks
execute if block 367 70 2038 minecraft:gold_block run fill 370 71 2040 370 67 2042 minecraft:air
execute if block 367 70 2038 minecraft:gold_block run fill 382 71 2040 382 67 2042 minecraft:air

#Chest
execute if block 342 76 2065 minecraft:chest run clone 342 76 2065 342 76 2065 342 76 2062 replace move

#Boulders
#1
execute unless block 354 72 2046 minecraft:gold_block unless block 355 72 2046 minecraft:gold_block run fill 396 76 2029 397 77 2030 minecraft:dead_horn_coral_block
execute unless block 354 72 2046 minecraft:gold_block unless block 355 72 2046 minecraft:gold_block run fill 355 72 2046 355 72 2046 minecraft:gold_block
execute if block 354 72 2046 minecraft:air unless blocks 396 76 2029 397 77 2030 351 76 2066 all run fill 396 76 2029 397 77 2030 minecraft:air
execute if block 354 72 2046 minecraft:air unless blocks 396 76 2029 397 77 2030 351 76 2066 all run fill 354 72 2046 354 72 2046 minecraft:gold_block
#2
execute unless block 354 72 2047 minecraft:gold_block unless block 355 72 2047 minecraft:gold_block run fill 388 76 2032 389 77 2033 minecraft:mossy_cobblestone
execute unless block 354 72 2047 minecraft:gold_block unless block 355 72 2047 minecraft:gold_block run fill 355 72 2047 355 72 2047 minecraft:gold_block
execute if block 354 72 2047 minecraft:air unless blocks 388 76 2032 389 77 2033 354 76 2066 all run fill 388 76 2032 389 77 2033 minecraft:air
execute if block 354 72 2047 minecraft:air unless blocks 388 76 2032 389 77 2033 354 76 2066 all run fill 354 72 2047 354 72 2047 minecraft:gold_block
#3
execute unless block 354 72 2048 minecraft:gold_block unless block 355 72 2048 minecraft:gold_block run fill 393 75 2054 394 76 2055 minecraft:dead_horn_coral_block
execute unless block 354 72 2048 minecraft:gold_block unless block 355 72 2048 minecraft:gold_block run fill 355 72 2048 355 72 2048 minecraft:gold_block
execute if block 354 72 2048 minecraft:air unless blocks 393 75 2054 394 76 2055 351 76 2066 all run fill 393 75 2054 394 76 2055 minecraft:air
execute if block 354 72 2048 minecraft:air unless blocks 393 75 2054 394 76 2055 351 76 2066 all run fill 354 72 2048 354 72 2048 minecraft:gold_block
#4
execute unless block 354 72 2049 minecraft:gold_block unless block 355 72 2049 minecraft:gold_block run fill 393 75 2058 394 76 2059 minecraft:mossy_cobblestone
execute unless block 354 72 2049 minecraft:gold_block unless block 355 72 2049 minecraft:gold_block run fill 355 72 2049 355 72 2049 minecraft:gold_block
execute if block 354 72 2049 minecraft:air unless blocks 393 75 2058 394 76 2059 354 76 2066 all run fill 393 75 2058 394 76 2059 minecraft:air
execute if block 354 72 2049 minecraft:air unless blocks 393 75 2058 394 76 2059 354 76 2066 all run fill 354 72 2049 354 72 2049 minecraft:gold_block
#5
execute unless block 354 72 2050 minecraft:gold_block unless block 355 72 2050 minecraft:gold_block run fill 352 76 2054 353 77 2055 minecraft:mossy_cobblestone
execute unless block 354 72 2050 minecraft:gold_block unless block 355 72 2050 minecraft:gold_block run fill 355 72 2050 355 72 2050 minecraft:gold_block
execute if block 354 72 2050 minecraft:air unless blocks 352 76 2054 353 77 2055 354 76 2066 all run fill 352 76 2054 353 77 2055 minecraft:air
execute if block 354 72 2050 minecraft:air unless blocks 352 76 2054 353 77 2055 354 76 2066 all run fill 354 72 2050 354 72 2050 minecraft:gold_block
#6
execute unless block 354 72 2051 minecraft:gold_block unless block 355 72 2051 minecraft:gold_block run fill 351 76 2056 352 77 2057 minecraft:dead_horn_coral_block
execute unless block 354 72 2051 minecraft:gold_block unless block 355 72 2051 minecraft:gold_block run fill 355 72 2051 355 72 2051 minecraft:gold_block
execute if block 354 72 2051 minecraft:air unless blocks 351 76 2056 352 77 2057 351 76 2066 all run fill 351 76 2056 352 77 2057 minecraft:air
execute if block 354 72 2051 minecraft:air unless blocks 351 76 2056 352 77 2057 351 76 2066 all run fill 354 72 2051 354 72 2051 minecraft:gold_block
#7
execute unless block 354 72 2052 minecraft:gold_block unless block 355 72 2052 minecraft:gold_block run fill 346 76 2062 347 77 2063 minecraft:dead_horn_coral_block
execute unless block 354 72 2052 minecraft:gold_block unless block 355 72 2052 minecraft:gold_block run fill 355 72 2052 355 72 2052 minecraft:gold_block
execute if block 354 72 2052 minecraft:air unless blocks 346 76 2062 347 77 2063 351 76 2066 all run fill 346 76 2062 347 77 2063 minecraft:air
execute if block 354 72 2052 minecraft:air unless blocks 346 76 2062 347 77 2063 351 76 2066 all run fill 354 72 2052 354 72 2052 minecraft:gold_block
#8
execute unless block 354 72 2053 minecraft:gold_block unless block 355 72 2053 minecraft:gold_block run fill 345 76 2060 346 77 2061 minecraft:dead_horn_coral_block
execute unless block 354 72 2053 minecraft:gold_block unless block 355 72 2053 minecraft:gold_block run fill 355 72 2053 355 72 2053 minecraft:gold_block
execute if block 354 72 2053 minecraft:air unless blocks 345 76 2060 346 77 2061 351 76 2066 all run fill 345 76 2060 346 77 2061 minecraft:air
execute if block 354 72 2053 minecraft:air unless blocks 345 76 2060 346 77 2061 351 76 2066 all run fill 354 72 2053 354 72 2053 minecraft:gold_block
#9
execute unless block 354 72 2054 minecraft:gold_block unless block 355 72 2054 minecraft:gold_block run fill 344 76 2058 345 77 2059 minecraft:dead_horn_coral_block
execute unless block 354 72 2054 minecraft:gold_block unless block 355 72 2054 minecraft:gold_block run fill 355 72 2054 355 72 2054 minecraft:gold_block
execute if block 354 72 2054 minecraft:air unless blocks 344 76 2058 345 77 2059 351 76 2066 all run fill 344 76 2058 345 77 2059 minecraft:air
execute if block 354 72 2054 minecraft:air unless blocks 344 76 2058 345 77 2059 351 76 2066 all run fill 354 72 2054 354 72 2054 minecraft:gold_block
#10
execute unless block 354 72 2055 minecraft:gold_block unless block 355 72 2055 minecraft:gold_block run fill 342 76 2059 343 77 2060 minecraft:dead_horn_coral_block
execute unless block 354 72 2055 minecraft:gold_block unless block 355 72 2055 minecraft:gold_block run fill 355 72 2055 355 72 2055 minecraft:gold_block
execute if block 354 72 2055 minecraft:air unless blocks 342 76 2059 343 77 2060 351 76 2066 all run fill 342 76 2059 343 77 2060 minecraft:air
execute if block 354 72 2055 minecraft:air unless blocks 342 76 2059 343 77 2060 351 76 2066 all run fill 354 72 2055 354 72 2055 minecraft:gold_block
#11
execute unless block 354 72 2056 minecraft:gold_block unless block 355 72 2056 minecraft:gold_block run fill 340 77 2059 341 78 2060 minecraft:dead_horn_coral_block
execute unless block 354 72 2056 minecraft:gold_block unless block 355 72 2056 minecraft:gold_block run fill 355 72 2056 355 72 2056 minecraft:gold_block
execute if block 354 72 2056 minecraft:air unless blocks 340 77 2059 341 78 2060 351 76 2066 all run fill 340 77 2059 341 78 2060 minecraft:air
execute if block 354 72 2056 minecraft:air unless blocks 340 77 2059 341 78 2060 351 76 2066 all run fill 354 72 2056 354 72 2056 minecraft:gold_block
#12
execute unless block 354 72 2057 minecraft:gold_block unless block 355 72 2057 minecraft:gold_block run fill 338 77 2034 339 78 2035 minecraft:dead_horn_coral_block
execute unless block 354 72 2057 minecraft:gold_block unless block 355 72 2057 minecraft:gold_block run fill 355 72 2057 355 72 2057 minecraft:gold_block
execute if block 354 72 2057 minecraft:air unless blocks 338 77 2034 339 78 2035 351 76 2066 all run fill 338 77 2034 339 78 2035 minecraft:air
execute if block 354 72 2057 minecraft:air unless blocks 338 77 2034 339 78 2035 351 76 2066 all run fill 354 72 2057 354 72 2057 minecraft:gold_block

#Npc's
execute unless block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Ichiro3] at @s run tp @s ~ 60 ~
execute unless block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Jiro3] at @s run tp @s ~ 60 ~
execute unless block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Shiro3] at @s run tp @s ~ 60 ~
execute unless block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Sabooro3] at @s run tp @s ~ 60 ~

execute if block 367 70 2038 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=Mutoh2] text 3
execute if block 367 70 2038 minecraft:gold_block run scoreboard players set @e[type=armor_stand,tag=RunningMan2,scores={text=1}] text 2
execute if block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Ichiro3] at @s run tp @s ~ 64 ~
execute if block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Jiro3] at @s run tp @s ~ 64 ~
execute if block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Shiro3] at @s run tp @s ~ 63.4 ~
execute if block 367 70 2038 minecraft:gold_block as @e[type=armor_stand,tag=Sabooro3] at @s run tp @s ~ 63.4 ~

execute if entity @a[tag=ResetRunningMan1] run scoreboard players set @e[type=armor_stand,tag=RunningMan2] text 5
execute if entity @a[tag=ResetRunningMan2] run scoreboard players set @e[type=armor_stand,tag=RunningMan2] text 6
execute if entity @a[tag=ResetRunningMan1] if entity @e[type=armor_stand,tag=RunningMan2,scores={text=5}] run tag @a remove ResetRunningMan1
execute if entity @a[tag=ResetRunningMan2] if entity @e[type=armor_stand,tag=RunningMan2,scores={text=6}] run tag @a remove ResetRunningMan2

#Bean Spot
execute as @e[type=area_effect_cloud,tag=BeanSpot] at @a run function ocarina_of_time:moving_things/gerudo_valley/bean_spot
fill 365 35 2039 365 35 2039 minecraft:cobblestone
