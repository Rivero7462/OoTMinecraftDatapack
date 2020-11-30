tag @a add RaceGame
tag @a remove HorseRanchGame
scoreboard players set @a MiniGameTime 0
data merge entity @e[type=villager,tag=IngoMiniGame,limit=1] {Tags:["IngoMiniGame","Invisible"],NoAI:1b,CustomName:"\"Talon\"",CustomNameVisible:0,CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Horse Riding\""},HorseStart:1}},rewardExp:0b,maxUses:0},{buy:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Race\""},HorseRaceStart:1}},rewardExp:0b,maxUses:0}]}}
scoreboard players set @e[type=armor_stand,tag=AdultIngo1] text 0
clear @a minecraft:paper
