#Lose First Time
execute if entity @s[tag=Win] unless entity @s[tag=Part2] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/lose_1
#Lose Second Time
execute if entity @s[tag=Win] if entity @s[tag=Part2] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/lose_2
#Win Second Time
execute if entity @a[tag=Win] if entity @s[tag=Part2] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/win_2
#Win First Time
execute if entity @a[tag=Win] unless entity @s[tag=Part2] unless entity @a[nbt={Inventory:[{tag:{HorseRaceStart:1}}]}] run function ocarina_of_time:moving_things/lon_lon_ranch/horse_race/win_1

#Lose
execute if entity @s[tag=Win] unless entity @s[tag=Part2] run fill 495 33 1301 492 34 1301 minecraft:air
execute if entity @s[tag=Win] unless entity @s[tag=Part2] run data merge entity @e[type=villager,tag=IngoMiniGame,limit=1] {Tags:["IngoMiniGame","Invisible"],NoAI:1b,CustomName:"\"Talon\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Horse Riding\""},HorseStart:1}},rewardExp:0b,maxUses:1},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Race\""},HorseRaceStart:1}},rewardExp:0b,maxUses:1}]}}
execute if entity @s[tag=Win] unless entity @s[tag=Part2] at @a run tp @a ~ ~ ~
execute if entity @s[tag=Win] unless entity @s[tag=Part2] run tag @e[type=horse,tag=FakeEpona] add NoRideHorse
execute if entity @s[tag=Win] unless entity @s[tag=Part2] run tp @e[type=horse,tag=FakeEpona] 468 30 1351
execute if entity @s[tag=Win] unless entity @s[tag=Part2] run tp @a 461 30 1322 0 ~
execute if entity @s[tag=Win] unless entity @s[tag=Part2] run fill 492 32 1301 495 30 1301 minecraft:air

#End
execute unless entity @s[tag=Win] run scoreboard objectives setdisplay sidebar
execute unless entity @s[tag=Win] unless entity @e[type=chicken,tag=AdultRanchCucco1] run summon minecraft:chicken 504 30 1304 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco1","Resist"]}
execute unless entity @s[tag=Win] unless entity @e[type=chicken,tag=AdultRanchCucco2] run summon minecraft:chicken 501 30 1306 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco2","Resist"]}
execute unless entity @s[tag=Win] unless entity @e[type=chicken,tag=AdultRanchCucco3] run summon minecraft:chicken 503 30 1307 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco3","Resist"]}
execute unless entity @s[tag=Win] unless entity @e[type=chicken,tag=AdultRanchCucco4] run summon minecraft:chicken 502 30 1309 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco4","Resist"]}
execute unless entity @s[tag=Win] unless entity @e[type=chicken,tag=AdultRanchCucco5] run summon minecraft:chicken 505 30 1308 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco5","Resist"]}
execute unless entity @s[tag=Win] run tag @a remove Correct1
execute unless entity @s[tag=Win] run tag @a remove Correct2
execute unless entity @s[tag=Win] run function ocarina_of_time:music/lon_lon_ranch
execute unless entity @s[tag=Win] run tag @a remove Win
execute unless entity @s[tag=Win] run data merge entity @e[type=horse,tag=SaddleRanchHorse,limit=1] {NoAI:0b}
execute unless entity @s[tag=Win] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Win] run scoreboard players set @e[type=horse,tag=SaddleRanchHorse] lifetime 0
execute unless entity @s[tag=Win] run tag @a remove BeginIngoRace
execute unless entity @s[tag=Win] run tag @a remove RaceGame

execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run scoreboard objectives setdisplay sidebar
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air unless entity @e[type=chicken,tag=AdultRanchCucco1] run summon minecraft:chicken 504 30 1304 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco1","Resist"]}
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air unless entity @e[type=chicken,tag=AdultRanchCucco2] run summon minecraft:chicken 501 30 1306 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco2","Resist"]}
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air unless entity @e[type=chicken,tag=AdultRanchCucco3] run summon minecraft:chicken 503 30 1307 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco3","Resist"]}
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air unless entity @e[type=chicken,tag=AdultRanchCucco4] run summon minecraft:chicken 502 30 1309 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco4","Resist"]}
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air unless entity @e[type=chicken,tag=AdultRanchCucco5] run summon minecraft:chicken 505 30 1308 {Attributes:[{Name:"generic.movement_speed",Base:0}],PersistenceRequired:1b,Silent:1,DeathLootTable:"ocarina_of_time:entities/nothing",Tags:["Cucco","AdultRanchCucco5","Resist"]}
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run tag @a remove Correct1
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run tag @a remove Correct2
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run function ocarina_of_time:music/lon_lon_ranch
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run tag @a remove Win
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run data merge entity @e[type=horse,tag=SaddleRanchHorse,limit=1] {NoAI:0b}
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run scoreboard players set @s lifetime 0
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run scoreboard players set @e[type=horse,tag=SaddleRanchHorse] lifetime 0
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run tag @a remove BeginIngoRace
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run tag @a remove RaceGame
execute if entity @s[tag=Win] unless entity @s[tag=Part2] if block 495 30 1301 minecraft:air run tag @s remove Win
