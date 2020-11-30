scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..10}] run tp @a 457 30 1326.0 -90 ~
execute if entity @s[scores={timer=1..10}] run tp @e[type=horse,tag=Epona] 459 30 1326.0 -90 ~
execute if entity @s[scores={timer=1}] run fill 458 31 1325 458 31 1326 minecraft:barrier
execute if entity @s[scores={timer=10}] run fill 458 31 1325 458 31 1326 minecraft:air

#Start
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 488 23 1321 488 27 1326 488 30 1321
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 505 23 1328 510 27 1332 505 30 1328
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 512 23 1352 517 27 1352 512 30 1352
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 505 23 1368 510 27 1372 505 30 1368
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 481 23 1374 481 27 1379 481 30 1374
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 465 23 1374 465 27 1379 465 30 1374
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 434 19 1374 434 26 1379 434 30 1374
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run clone 413 20 1338 418 26 1338 413 30 1338
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run fill 530 34 1338 530 33 1378 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run fill 504 34 1414 431 33 1414 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run fill 398 34 1378 398 33 1348 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run fill 491 32 1299 496 30 1300 minecraft:air replace minecraft:iron_bars
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run fill 457 32 1329 462 30 1328 minecraft:air replace minecraft:iron_bars
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run fill 461 30 1327 458 32 1327 minecraft:iron_bars[west=true,east=true]
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier unless entity @s[tag=Prize] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" The current record is "},{"score":{"name":"@e[type=armor_stand,tag=AdultMalon1]","objective":"MalonRecord"},"color":"red"},{"text":". First, try to beat this record! If you can beat the record, I'll give you a present! Give it your best shot, OK? All right, let's get started!"}]
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier if entity @s[tag=Prize] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Your best time is "},{"score":{"name":"@e[type=armor_stand,tag=AdultMalon1]","objective":"MalonRecord"},"color":"red"},{"text":"! How fast can you go?! C'mon! Let's get started!"}]
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run tellraw @a {"text":"Once you get on the horse, the timer starts!"}
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier unless entity @e[type=horse,tag=Epona,x=459,y=30,z=1326.0,dx=0,dz=0] run tp @a 457 30 1326.0 -90 ~
execute unless entity @a[scores={MiniGameTime=1..}] unless block 456 31 1325 minecraft:barrier run function ocarina_of_time:music/horse_race
execute unless entity @a[scores={MiniGameTime=1..}] run fill 456 31 1326 456 31 1325 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 457 32 1324 460 30 1324 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 458 30 1326 458 30 1325 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 458 32 1326 458 32 1325 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run scoreboard objectives setdisplay sidebar MiniGameTime
execute unless entity @a[scores={MiniGameTime=1..}] run tag @a add HideDisplayScore
execute unless entity @a[scores={MiniGameTime=1..}] as @e[type=armor_stand,tag=AdultIngo2] at @s run tp @s ~ 25 ~
execute unless entity @a[scores={MiniGameTime=1..}] run tp @s ~ 26 ~
execute unless entity @a[scores={MiniGameTime=1..}] run kill @e[type=horse,tag=RanchHorse1]
execute unless entity @a[scores={MiniGameTime=1..}] run kill @e[type=horse,tag=RanchHorse2]
execute unless entity @a[scores={MiniGameTime=1..}] run kill @e[type=chicken,tag=AdultRanchCucco]
execute unless entity @a[scores={MiniGameTime=1..}] run fill 492 32 1301 495 30 1301 minecraft:iron_bars[east=true,west=true]
execute unless entity @a[scores={MiniGameTime=1..}] run fill 495 33 1301 492 34 1301 minecraft:barrier
execute unless entity @a[scores={MiniGameTime=1..}] run fill 491 30 1300 496 32 1299 minecraft:air
execute unless entity @a[scores={MiniGameTime=1..}] run scoreboard players set @s lifetime 0

execute if entity @a[scores={MiniGameTime=1}] run fill 460 30 1324 456 32 1326 minecraft:air replace minecraft:barrier

execute at @a if entity @s[scores={timer=10..}] if entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] run tag @s add Start
execute if entity @s[tag=Start] run scoreboard players add @a MiniGameTime 1

#Fences
#Lap 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=0}] if entity @a[x=488,y=32,z=1322,dx=0,dy=5,dz=4] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=1}] positioned 507 33 1330 if entity @a[distance=..3] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=2}] if entity @a[x=512,y=32,z=1352,dx=4,dy=5,dz=0] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=3}] positioned 507 32 1370 if entity @a[distance=..3] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=4}] if entity @a[x=481,y=33,z=1374,dx=0,dy=3,dz=4] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=5}] if entity @a[x=465,y=33,z=1374,dx=0,dy=3,dz=4] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=6}] if entity @a[x=434,y=34,z=1374,dx=0,dy=3,dz=4] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=7}] if entity @a[x=414,y=33,z=1338,dx=4,dy=3,dz=0] run scoreboard players add @s lifetime 1
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=8}] if entity @a[x=460,y=31,z=1315,dx=0,dy=5,dz=11] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" One more lap!","color":"red"}]
execute unless entity @a[tag=Lap2] if entity @s[scores={lifetime=8}] if entity @a[x=460,y=31,z=1315,dx=0,dy=5,dz=11] run tag @a add Lap2
#Lap 2
execute if entity @s[scores={lifetime=0}] if entity @a[tag=Lap2,x=488,y=32,z=1322,dx=0,dy=5,dz=4] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1}] positioned 507 33 1330 if entity @a[tag=Lap2,distance=..3] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=2}] if entity @a[tag=Lap2,x=512,y=32,z=1352,dx=4,dy=5,dz=0] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=3}] positioned 507 32 1370 if entity @a[tag=Lap2,distance=..3] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=4}] if entity @a[tag=Lap2,x=481,y=33,z=1374,dx=0,dy=3,dz=4] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=5}] if entity @a[tag=Lap2,x=465,y=33,z=1374,dx=0,dy=3,dz=4] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=6}] if entity @a[tag=Lap2,x=434,y=34,z=1374,dx=0,dy=4,dz=4] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=7..}] if entity @a[tag=Lap2,x=414,y=33,z=1338,dx=4,dy=3,dz=0] run tag @s add FinishLap
execute if entity @s[scores={lifetime=7..}] if entity @a[tag=Lap2,x=414,y=33,z=1338,dx=4,dy=3,dz=0] run scoreboard players add @s lifetime 1

execute unless entity @s[scores={lifetime=7..}] if entity @a[x=460,y=31,z=1315,dx=0,dy=5,dz=11] run scoreboard players set @s lifetime 0

#Win
execute if entity @s[tag=FinishLap] if entity @a[tag=Lap2,x=460,y=31,z=1315,dx=0,dy=5,dz=11] if score @p MiniGameTime < @s MalonRecord run tag @a add Win
execute if entity @a[tag=Win] run scoreboard players operation @s MalonRecord = @a MiniGameTime
execute unless entity @s[tag=Prize] if entity @a[tag=Win] unless entity @a[scores={MiniGameTime=3001..}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" You did it! ","color":"white"},{"score":{"name":"@e[type=armor_stand,tag=AdultMalon1]","objective":"MalonRecord"},"color":"red"},{"text":" is the new course record! I have to give you a present to commemorate your new record! The present is a little too heavy to give to you here, so I'll have it delivered to your house. Bet you can't wait to see it! Hee hee!"}]
execute if entity @s[tag=Prize] if entity @a[tag=Win] unless entity @a[scores={MiniGameTime=3001..}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Wow! Great! Your time was "},{"score":{"name":"@e[type=armor_stand,tag=AdultMalon1]","objective":"MalonRecord"},"color":"red"},{"text":". You and Epona are a great team!"}]
#Prize
execute if entity @a[tag=Win] if entity @a[tag=Lap2,x=460,y=31,z=1315,dx=0,dy=5,dz=11] run tag @s add Prize
execute unless entity @s[scores={GameTimer=1..}] if entity @s[tag=Prize] run tag @a add GetCow
execute unless entity @s[scores={GameTimer=1..}] if entity @s[tag=Prize] run scoreboard players add @s GameTimer 1
#Finish
execute if entity @s[tag=FinishLap] if entity @a[tag=Lap2,x=460,y=31,z=1315,dx=0,dy=5,dz=11] run tag @a add Finish
execute unless entity @a[tag=Win] if entity @a[tag=Finish] unless entity @a[scores={MiniGameTime=3001..}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Well, your time was "},{"score":{"name":"@a","objective":"MiniGameTime"},"color":"red"},{"text":". You have to train harder! Remember, you don't need to jump to hop over lower fences, but you do need to if you want to jump the high fences!"}]
execute if entity @a[tag=Finish] unless entity @a[scores={MiniGameTime=3001..}] run scoreboard players set @a MiniGameTime 3001

#Lose
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run tellraw @a ["",{"text":"You are not allowed to leave the horse after starting the race."}]
execute if entity @a[scores={MiniGameTime=1..}] at @a unless entity @a[nbt={RootVehicle:{Entity:{id:"minecraft:horse"}}}] unless entity @a[scores={MiniGameTime=3000..}] run scoreboard players set @a MiniGameTime 3000

execute if entity @s[scores={lifetime=..0}] positioned 507 33 1330 if entity @a[distance=..3] unless entity @a[scores={MiniGameTime=2999..}] run scoreboard players set @a MiniGameTime 2999
execute if entity @s[scores={lifetime=..1}] if entity @a[x=512,y=32,z=1352,dx=4,dy=3,dz=0] unless entity @a[scores={MiniGameTime=2999..}] run scoreboard players set @a MiniGameTime 2999
execute if entity @s[scores={lifetime=..2}] positioned 507 32 1370 if entity @a[distance=..3] unless entity @a[scores={MiniGameTime=2999..}] run scoreboard players set @a MiniGameTime 2999
execute if entity @s[scores={lifetime=..3}] if entity @a[x=481,y=33,z=1374,dx=0,dy=3,dz=4] unless entity @a[scores={MiniGameTime=2999..}] run scoreboard players set @a MiniGameTime 2999
execute if entity @s[scores={lifetime=..4}] if entity @a[x=465,y=33,z=1374,dx=0,dy=3,dz=4] unless entity @a[scores={MiniGameTime=2999..}] run scoreboard players set @a MiniGameTime 2999
execute if entity @s[scores={lifetime=..5}] if entity @a[x=434,y=34,z=1374,dx=0,dy=4,dz=4] unless entity @a[scores={MiniGameTime=2999..}] run scoreboard players set @a MiniGameTime 2999
execute if entity @s[scores={lifetime=..6}] if entity @a[x=414,y=33,z=1338,dx=4,dy=3,dz=0] unless entity @a[scores={MiniGameTime=2999..}] run scoreboard players set @a MiniGameTime 2999

#Fail
execute if entity @s[type=armor_stand,tag=Win] unless entity @s[type=armor_stand,tag=Part2] if entity @a[scores={MiniGameTime=3001}] run fill 492 32 1301 495 30 1301 minecraft:air
execute if entity @s[type=armor_stand,tag=Win] unless entity @s[type=armor_stand,tag=Part2] if entity @a[scores={MiniGameTime=3001}] run fill 495 33 1301 492 34 1301 minecraft:air
execute if entity @s[type=armor_stand,tag=Win] unless entity @s[type=armor_stand,tag=Part2] if entity @a[scores={MiniGameTime=3001}] run data merge entity @e[type=villager,tag=IngoMiniGame,limit=1] {Tags:["IngoMiniGame","Invisible"],NoAI:1b,CustomName:"\"Talon\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Horse Riding\""},HorseStart:1}},rewardExp:0b,maxUses:1},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Race\""},HorseRaceStart:1}},rewardExp:0b,maxUses:1}]}}
execute if entity @s[type=armor_stand,tag=Win] unless entity @s[type=armor_stand,tag=Part2] if entity @a[scores={MiniGameTime=3001}] run tag @e[type=horse,tag=Epona] add NoRideHorse
execute if entity @s[type=armor_stand,tag=Win] unless entity @s[type=armor_stand,tag=Part2] if entity @a[scores={MiniGameTime=3001}] run tp @e[type=horse,tag=Epona] 468 30 1351
execute if entity @s[type=armor_stand,tag=Win] unless entity @s[type=armor_stand,tag=Part2] if entity @a[scores={MiniGameTime=3001}] run tp @a 461 30 1322 0 ~

#Finish
execute if entity @a[scores={MiniGameTime=2999}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"You failed!","color":"red"},{"text":" You have to jump over all the fences!","color":"white"}]
execute if entity @a[scores={MiniGameTime=3000}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Are you making sure to approach the fences head-on? If you approach at an angle, the horse won't cover the jump! If you want to try again, mount Epona and get ready!"}]
execute if entity @a[scores={MiniGameTime=3000..3010}] run tp @s ~ 30 ~
execute if entity @a[scores={MiniGameTime=3000..3010}] run tp @a 461 30 1322 0 ~
execute if entity @a[scores={MiniGameTime=3010}] run tp @e[type=horse,tag=Epona,limit=1] 456 30 1325
execute if entity @a[scores={MiniGameTime=3010}] unless entity @e[type=chicken,tag=AdultRanchCucco1] run summon minecraft:chicken 504 30 1304 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco1","Resist"]}
execute if entity @a[scores={MiniGameTime=3010}] unless entity @e[type=chicken,tag=AdultRanchCucco2] run summon minecraft:chicken 501 30 1306 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco2","Resist"]}
execute if entity @a[scores={MiniGameTime=3010}] unless entity @e[type=chicken,tag=AdultRanchCucco3] run summon minecraft:chicken 503 30 1307 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco3","Resist"]}
execute if entity @a[scores={MiniGameTime=3010}] unless entity @e[type=chicken,tag=AdultRanchCucco4] run summon minecraft:chicken 502 30 1309 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco4","Resist"]}
execute if entity @a[scores={MiniGameTime=3010}] unless entity @e[type=chicken,tag=AdultRanchCucco5] run summon minecraft:chicken 505 30 1308 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco5","Resist"]}
execute if entity @a[scores={MiniGameTime=3010}] run fill 488 34 1321 488 30 1326 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 488 29 1321 488 29 1321 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 505 30 1328 510 34 1332 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 510 29 1328 510 29 1328 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 512 30 1352 517 34 1352 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 517 29 1352 517 29 1352 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 505 30 1368 510 34 1372 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 510 29 1372 510 29 1372 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 481 30 1374 481 34 1379 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 481 29 1379 481 29 1379 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 465 30 1374 465 34 1379 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 465 29 1379 465 29 1379 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 434 30 1374 434 37 1379 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 434 29 1379 434 29 1379 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 418 30 1338 413 36 1338 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 413 29 1338 413 29 1338 minecraft:grass_block
execute if entity @a[scores={MiniGameTime=3010}] run fill 492 34 1301 495 30 1301 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 492 34 1301 495 30 1301 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 530 34 1338 530 33 1378 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 398 34 1378 398 33 1348 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run fill 458 32 1327 461 30 1327 minecraft:air
execute if entity @a[scores={MiniGameTime=3010}] run clone 457 26 1328 462 28 1329 457 30 1328
execute if entity @a[scores={MiniGameTime=3010}] run clone 496 26 1299 491 28 1300 491 30 1299 filtered minecraft:iron_bars
execute if entity @a[scores={MiniGameTime=3010}] run function ocarina_of_time:music/lon_lon_ranch
execute if entity @a[scores={MiniGameTime=3010}] run tag @a remove Win
execute if entity @a[scores={MiniGameTime=3010}] run tag @s remove Start
execute if entity @a[scores={MiniGameTime=3010}] run tag @a remove Finish
execute if entity @a[scores={MiniGameTime=3010}] run tag @a remove Lose
execute if entity @a[scores={MiniGameTime=3010}] run tag @a remove Lap2
execute if entity @a[scores={MiniGameTime=3010}] run tag @s remove FinishLap
execute if entity @a[scores={MiniGameTime=3010}] run scoreboard players set @s lifetime 0
execute if entity @a[scores={MiniGameTime=3010}] run scoreboard players set @s timer 0
execute if entity @a[scores={MiniGameTime=3010}] run tag @a remove MalonMinigame

execute if entity @a[tag=Win] run tag @a remove Win
