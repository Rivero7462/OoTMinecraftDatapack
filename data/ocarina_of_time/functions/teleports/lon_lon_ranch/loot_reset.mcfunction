#Pots
execute unless entity @a[tag=Adult] run fill 486 30 1274 486 30 1274 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 486 30 1275 486 30 1275 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 486 30 1276 486 30 1276 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 486 30 1277 486 30 1277 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 495 30 1369 495 30 1369 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 495 30 1370 495 30 1370 minecraft:flower_pot
execute unless entity @a[tag=Adult] run fill 496 30 1370 496 30 1370 minecraft:flower_pot
fill 387 5 1330 387 5 1330 minecraft:flower_pot
fill 388 5 1330 388 5 1330 minecraft:flower_pot
fill 380 5 1340 380 5 1340 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Iron Bars
execute if entity @a[tag=Adult] if entity @e[tag=AdultIngo1,tag=BadIngoGone] run fill 461 30 1327 458 32 1327 minecraft:air

#Cuccos
#1
summon minecraft:chicken 428 6 1361 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#2
summon minecraft:chicken 428 6 1357 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#3
summon minecraft:chicken 432 6 1363 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#4
summon minecraft:chicken 431 6 1359 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#5
summon minecraft:chicken 435 6 1355 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#6
summon minecraft:chicken 437 6 1352 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#7
summon minecraft:chicken 434 6 1350 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#8
summon minecraft:chicken 431 6 1354 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#9
summon minecraft:chicken 429 6 1352 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}
#10
summon minecraft:chicken 425 6 1354 {PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","RanchCucco"]}

#Adult Cuccos
#1
execute if entity @a[tag=Adult] run summon minecraft:chicken 504 30 1304 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco1","Resist"]}
#2
execute if entity @a[tag=Adult] run summon minecraft:chicken 501 30 1306 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco2","Resist"]}
#3
execute if entity @a[tag=Adult] run summon minecraft:chicken 503 30 1307 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco3","Resist"]}
#4
execute if entity @a[tag=Adult] run summon minecraft:chicken 502 30 1309 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco4","Resist"]}
#5
execute if entity @a[tag=Adult] run summon minecraft:chicken 505 30 1308 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco5","Resist"]}

#Special Cuccos
#1
execute if block 423 3 1362 minecraft:gold_block unless entity @a[scores={time=13001..23000}] unless entity @a[tag=Adult] run summon minecraft:chicken 434 7 1361 {NoAI:1b,PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","Cucco1","SpecialCucco","NoCucco"]}
#2
execute if block 423 3 1362 minecraft:gold_block unless entity @a[scores={time=13001..23000}] unless entity @a[tag=Adult] run summon minecraft:chicken 434 7 1362 {NoAI:1b,PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","Cucco2","SpecialCucco","NoCucco"]}
#3
execute if block 423 3 1362 minecraft:gold_block unless entity @a[scores={time=13001..23000}] unless entity @a[tag=Adult] run summon minecraft:chicken 433.4 6 1362.0 {NoAI:1b,PersistenceRequired:1b,Silent:1,Invulnerable:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","Cucco3","SpecialCucco","NoCucco"]}

#Inside Horses
#1
execute if entity @a[scores={time=13001..23000}] run summon minecraft:horse 467 30 1283 {Tags:["InsideRanchHorse1","RanchHorse","NoRideHorse"],Rotation:[-90],NoAI:1b,Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Silent:1,Invulnerable:1}
#2
execute if entity @a[scores={time=13001..23000}] run summon minecraft:horse 467 30 1278 {Tags:["InsideRanchHorse2","RanchHorse","NoRideHorse"],Rotation:[-90],NoAI:1b,Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Silent:1,Invulnerable:1}
#3
execute if entity @a[scores={time=13001..23000}] run summon minecraft:horse 483 30 1282 {Tags:["InsideRanchHorse3","RanchHorse","NoRideHorse"],Rotation:[90],NoAI:1b,Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Silent:1,Invulnerable:1}
#4
execute if entity @a[scores={time=13001..23000}] run summon minecraft:horse 483 30 1272 {Tags:["InsideRanchHorse4","RanchHorse","NoRideHorse"],Rotation:[90],NoAI:1b,Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Silent:1,Invulnerable:1}

#Horses Outside Child
#1
execute unless entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 447 30 1341 {Tags:["RanchHorse1","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#2
execute unless entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 479 30 1333 {Tags:["RanchHorse2","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#3
execute unless entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 498 30 1343 {Tags:["RanchHorse3","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#4
execute unless entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 496 30 1359 {Tags:["RanchHorse4","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#5
execute unless entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 462 30 1365 {Tags:["RanchHorse5","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#6
execute unless entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 438 30 1363 {Tags:["RanchHorse6","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#7
execute unless entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 434 30 1349 {Tags:["RanchHorse7","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}

#Horses Outside Adult
#1
execute if entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 429 30 1356 {Tags:["RanchHorse1","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#2
execute if entity @a[tag=Adult] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 471 30 1331 {Tags:["RanchHorse2","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#3
execute if entity @a[tag=Adult] if entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 447 30 1341 {Tags:["RanchHorse3","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}
#4
execute if entity @a[tag=Adult] if entity @e[type=armor_stand,tag=BadIngoGone] unless entity @a[scores={time=13001..23000}] run summon minecraft:horse 479 30 1333 {Tags:["RanchHorse4","RanchHorse","NoRideHorse"],Tame:1,DeathLootTable:"ocarina_of_time:entities/nothing",Variant:1,PersistenceRequired:1b,Attributes:[{Name:"generic.movement_speed",Base:0.5f}],Silent:1,Invulnerable:1}

#Grotto
execute if entity @a[tag=Adult] run fill 520 29 1395 520 29 1395 minecraft:grass_block
execute unless entity @a[tag=Adult] run fill 520 29 1395 520 29 1395 minecraft:air
