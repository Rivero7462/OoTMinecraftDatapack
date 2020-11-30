#Keese
#1
execute unless entity @e[type=bat,tag=Keese70] run summon minecraft:bat -494 40 1639 {Tags:["Keese70","Keese","Flame"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#2
execute unless entity @e[type=bat,tag=Keese71] run summon minecraft:bat -497 40 1634 {Tags:["Keese71","Keese","Flame"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#3
execute unless entity @e[type=bat,tag=Keese72] run summon minecraft:bat -491 40 1634 {Tags:["Keese72","Keese","Flame"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#4
execute unless entity @e[type=bat,tag=Keese73] run summon minecraft:bat -509 37 1633 {Tags:["Keese73","Keese","Flame"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#5
execute unless entity @e[type=bat,tag=Keese74] run summon minecraft:bat -512 39 1628 {Tags:["Keese74","Keese","Flame"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#6
execute unless entity @e[type=bat,tag=Keese75] run summon minecraft:bat -515 40 1623 {Tags:["Keese75","Keese","Flame"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#7
execute unless entity @e[type=bat,tag=Keese76] run summon minecraft:bat -514 42 1616 {Tags:["Keese76","Keese","Flame"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}

#Boss Room
clone -478 90 1607 -455 104 1630 -510 89 1604
fill -487 73 1615 -487 73 1616 minecraft:stone_pressure_plate
execute if block -493 93 1629 minecraft:gold_block as @e[type=armor_stand,tag=GanondorfBoss] at @s run tp @s -498.0 92 1607 0 ~
execute if block -493 93 1629 minecraft:gold_block as @e[type=armor_stand,tag=GanondorfBoss] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute unless block -498 113 1615 minecraft:gold_block run fill -499 113 1615 -499 113 1615 minecraft:air
