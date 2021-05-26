#Timer
execute if entity @a[scores={MiniGameTime=..1200}] run scoreboard objectives setdisplay sidebar MiniGameTime
execute if entity @a[scores={MiniGameTime=..1200}] run tag @a add HideDisplayScore
execute if entity @a[scores={MiniGameTime=1200}] run function ocarina_of_time:music/horse_race

#Texts
execute as @e[type=horse,tag=Epona] unless entity @s[tag=NoRideHorse] run fill 459 26 1325 459 26 1325 minecraft:gold_block
execute if entity @a[scores={MiniGameTime=0..1205}] at @a positioned ~ ~-1 ~ unless entity @e[type=horse,tag=SaddleRanchHorse,distance=..1] run scoreboard players set @s text 3
execute if entity @a[scores={MiniGameTime=0..1205}] at @a positioned ~ ~-1 ~ if entity @e[type=horse,tag=SaddleRanchHorse,distance=..1] run scoreboard players set @s text 4
execute if entity @a[scores={MiniGameTime=0..1205}] at @a positioned ~ ~-1 ~ unless entity @e[type=horse,tag=FakeEpona,distance=..1] run scoreboard players set @s text 3
execute if entity @a[scores={MiniGameTime=0..1205}] at @a positioned ~ ~-1 ~ if entity @e[type=horse,tag=FakeEpona,distance=..1] run scoreboard players set @s text 4
execute if entity @a[scores={MiniGameTime=0..1205}] if entity @s[tag=RaceChance] at @a positioned ~ ~-1 ~ if entity @e[type=horse,tag=Epona,distance=..1] run scoreboard players set @s text 5
execute if entity @a[scores={MiniGameTime=0..1205}] if entity @s[tag=RaceChance] at @a positioned ~ ~-1 ~ if entity @e[type=horse,tag=Epona,distance=..1] run data merge entity @e[type=villager,tag=IngoMiniGame,limit=1] {Tags:["IngoMiniGame","Invisible"],NoAI:1b,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Race\""},HorseRaceStart:1}},rewardExp:0b,maxUses:1}]}}

#Start
execute if entity @a[scores={MiniGameTime=1204}] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"Thank you so much. Heh heh!"}]
execute if entity @a[scores={MiniGameTime=1204}] if block 459 26 1325 minecraft:gold_block run tag @s add RaceChance
execute if entity @a[scores={MiniGameTime=1204}] run tp @s 461 30 1329 0 ~
execute if entity @a[scores={MiniGameTime=1204}] run tp @a 459 30 1332 0 ~
execute if entity @a[scores={MiniGameTime=1204}] run fill 477 18 1340 477 18 1340 minecraft:air
execute if entity @a[scores={MiniGameTime=1204}] run fill 451 17 1357 451 17 1357 minecraft:air

#Rupees
execute if entity @e[type=horse,tag=SaddleRanchHorse,x=477,y=32,z=1340,dx=0,dz=0] unless block 477 18 1340 minecraft:gold_block run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b} 1
execute if entity @e[type=horse,tag=SaddleRanchHorse,x=477,y=32,z=1340,dx=0,dz=0] run fill 477 18 1340 477 18 1340 minecraft:gold_block
execute if entity @e[type=horse,tag=SaddleRanchHorse,x=451,y=34,z=1357,dx=0,dz=0] unless block 451 17 1357 minecraft:gold_block run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b} 1
execute if entity @e[type=horse,tag=SaddleRanchHorse,x=451,y=34,z=1357,dx=0,dz=0] run fill 451 17 1357 451 17 1357 minecraft:gold_block
execute if entity @e[type=horse,tag=FakeEpona,x=477,y=32,z=1340,dx=0,dz=0] unless block 477 18 1340 minecraft:gold_block run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b} 1
execute if entity @e[type=horse,tag=FakeEpona,x=477,y=32,z=1340,dx=0,dz=0] run fill 477 18 1340 477 18 1340 minecraft:gold_block
execute if entity @e[type=horse,tag=FakeEpona,x=451,y=34,z=1357,dx=0,dz=0] unless block 451 17 1357 minecraft:gold_block run give @a minecraft:lapis_lazuli{display:{Name:"{\"text\":\"Blue Rupee\"}"},Item:1b} 1
execute if entity @e[type=horse,tag=FakeEpona,x=451,y=34,z=1357,dx=0,dz=0] run fill 451 17 1357 451 17 1357 minecraft:gold_block

#Epona
execute as @e[type=horse,tag=Epona] at @a if entity @s[tag=NoRideHorse] if entity @s[distance=..6] at @s if block ^ ^ ^-1 minecraft:air facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^-.4 ~ 0
execute as @e[type=horse,tag=Epona] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] at @a run playsound minecraft:entity.horse.ambient ambient @a ~ ~ ~ 1 1
execute as @e[type=horse,tag=Epona] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @s remove NoRideHorse

#Finish Game
execute if entity @a[scores={MiniGameTime=6}] run tellraw @a ["",{"text":"Ingo: ","color":"gold"},{"text":"Hey! Time's up, young man! You only paid 10 Rupees! You've played around long enough!"}]

execute if entity @a[scores={MiniGameTime=1..6}] run data merge entity @e[type=villager,tag=IngoMiniGame,limit=1] {Tags:["IngoMiniGame","Invisible"],CustomName:"\"Talon\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Horse Riding\""},HorseStart:1}},rewardExp:0b,maxUses:1}]},NoAI:1b}
execute as @e[type=horse,tag=Epona] if entity @a[scores={MiniGameTime=1..6}] run tag @s add NoRideHorse
execute as @e[type=horse,tag=Epona] if entity @a[scores={MiniGameTime=1..6}] run function ocarina_of_time:music/lon_lon_ranch
execute if entity @a[scores={MiniGameTime=1..6}] run tp @a 461 30 1322 0 ~
execute if entity @a[x=461,y=30,z=1322,dx=0,dz=0,scores={MiniGameTime=1..6}] run scoreboard players set @s text 2
execute if entity @a[x=461,y=30,z=1322,dx=0,dz=0,scores={MiniGameTime=1..6}] run tag @a remove HorseRanchGame
