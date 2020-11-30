#Timer
execute if entity @a[scores={MiniGameTime=..400}] run scoreboard objectives setdisplay sidebar MiniGameTime
execute if entity @a[scores={MiniGameTime=..400}] run tag @a add HideDisplayScore
#Start
execute if entity @a[scores={MiniGameTime=460}] run scoreboard players set @s text 0
execute if entity @a[scores={MiniGameTime=460}] run function ocarina_of_time:music/minigame
execute if entity @a[scores={MiniGameTime=460}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" You have 30 seconds! All righty then, get ready. Here go the Super Cuccos! START LOOKIN'!"}]
execute if entity @a[scores={MiniGameTime=460}] run tag @e[type=chicken,tag=SpecialCucco] remove NoCucco
execute if entity @a[scores={MiniGameTime=400..460}] run tp @a 431 6 1362.0 270 10
#Fly Cuccos
execute if entity @a[scores={MiniGameTime=400..440}] as @e[type=chicken,tag=Cucco1] at @s run tp @s ~ ~.1 ~-.3
execute if entity @a[scores={MiniGameTime=400..440}] as @e[type=chicken,tag=Cucco2] at @s run tp @s ~-.2 ~.1 ~-.1
execute if entity @a[scores={MiniGameTime=400..440}] as @e[type=chicken,tag=Cucco3] at @s run tp @s ~-.2 ~.1 ~-.25
execute if entity @a[scores={MiniGameTime=399}] as @e[type=chicken,tag=SpecialCucco] at @s run tp @s @e[type=chicken,tag=!Cucco1,tag=!Cucco2,tag=!Cucco3,sort=nearest,limit=1]
execute if entity @a[scores={MiniGameTime=399}] as @e[type=chicken,tag=SpecialCucco] at @s run data merge entity @s {NoAI:0b}
#Catch Cucco
execute positioned ~ ~2 ~ as @e[type=chicken,tag=SpecialCucco,distance=..1] unless entity @s[tag=Caught] if entity @a[scores={MiniGameTime=0..400}] run scoreboard players add @e[type=armor_stand,tag=Talon2] CuccoCount 1
execute positioned ~ ~2 ~ as @e[type=chicken,tag=SpecialCucco,distance=..1] unless entity @s[tag=Caught] if entity @a[scores={MiniGameTime=0..400}] run tag @s add Caught

execute if entity @s[scores={CuccoCount=1}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" That's one of 'em! Keep it up! Keep it up! "},{"text":"Two more","color":"red"},{"text":" to find!"}]
execute if entity @s[scores={CuccoCount=1}] run scoreboard players set @s CuccoCount 2
execute if entity @s[scores={CuccoCount=3}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" There's another! All right now-the moment of truth! "},{"text":"One more","color":"red"},{"text":" to find!"}]
execute if entity @s[scores={CuccoCount=3}] run scoreboard players set @s CuccoCount 4
execute if entity @s[scores={CuccoCount=5}] unless entity @s[tag=Prize] run tag @a add WinTalonGame
execute if entity @s[scores={CuccoCount=5}] if entity @s[tag=Prize] run tag @a add WinTalonGame2
execute if entity @s[scores={CuccoCount=5},tag=Prize] run tp @a 430 6 1362.0 -90 10
execute if entity @s[scores={CuccoCount=5},tag=Prize] if entity @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Hey, pardner, you have an honest face! When you grow up, why don't you come to work here on this ranch? That's a standing offer! I'll be waiting for you. Here you are! Take some super-fresh milk."}]
execute if entity @s[scores={CuccoCount=5},tag=Prize] unless entity @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Hey, pardner, you have an honest face! When you grow up, why don't you come to work here on this ranch? That's a standing offer! I'll be waiting for you. Here you are! Take some super-fresh milk... Oh? Too baaaaad! You don't have an empty bottle, do you?"}]
execute if entity @s[scores={CuccoCount=5},tag=Prize] if entity @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:6,HideFlags:63,BottledMilk:1b}
execute if entity @s[scores={CuccoCount=5},tag=Prize] if entity @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] run clear @a minecraft:glass_bottle 1
execute if entity @s[scores={CuccoCount=5}] run scoreboard players set @a MiniGameTime 0

#Finish Game
execute if entity @a[scores={MiniGameTime=0}] unless entity @s[tag=Prize] run function ocarina_of_time:music/inside_house
execute if entity @a[scores={MiniGameTime=0}] unless entity @s[tag=Prize] run data merge entity @e[type=villager,tag=TalonMiniGame,limit=1] {Tags:["TalonMiniGame","TalonMiniGame1","Invisible"],CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Cucco Game\""},Start:1}},rewardExp:0b}]},NoAI:1b}
execute if entity @a[scores={MiniGameTime=0}] if entity @s[tag=Prize] run data merge entity @e[type=villager,tag=TalonMiniGame,limit=1] {Tags:["TalonMiniGame","TalonMiniGame2","Invisible"],CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:glass_bottle,Count:1,tag:{display:{Name:"\"Bottle\""}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"\"Lon Lon Milk\""},Unbreakable:1b,Damage:6,HideFlags:63,BottledMilk:1b}},rewardExp:0b,maxUses:9999999},{buy:{id:lime_dye,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:paper,Count:1,tag:{display:{Name:"\"Cucco Game\""},Start:1}},rewardExp:0b,maxUses:1}]},NoAI:1b}
execute if entity @a[scores={MiniGameTime=0}] as @e[type=chicken,tag=SpecialCucco] run data merge entity @s {NoAI:1b}
execute if entity @a[scores={MiniGameTime=0}] run scoreboard players set @s CuccoCount 0
execute if entity @a[scores={MiniGameTime=0}] unless entity @s[tag=Prize] run scoreboard players set @s text 1
execute if entity @a[scores={MiniGameTime=0}] if entity @s[tag=Prize] run scoreboard players set @s text 2
execute if entity @a[scores={MiniGameTime=0}] run tag @e[type=chicken,tag=SpecialCucco] remove Caught
execute if entity @a[scores={MiniGameTime=0}] run tag @e[type=chicken,tag=SpecialCucco] add NoCucco
execute if entity @a[scores={MiniGameTime=0}] unless entity @a[tag=WinTalonGame] unless entity @a[tag=WinTalonGame2] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Time's up! Too baaaaad! These are some great Cuccos, aren't they? They're raking in money for me! Come back to me, my babies!"}]
execute if entity @a[scores={MiniGameTime=0}] run tag @a remove WinTalonGame2
execute if entity @a[scores={MiniGameTime=0}] run tag @a remove RanchGame
