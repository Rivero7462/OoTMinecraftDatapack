execute unless entity @a[scores={click=0..}] run fill 431 7 1361 431 8 1362 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 429 7 1361 429 7 1362 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 430 7 1363 430 7 1363 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 430 7 1360 430 7 1360 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 422 3 1362 422 3 1362 minecraft:gold_block
execute unless entity @a[scores={click=0..}] run tp @a 430 6 1362.0
execute unless entity @a[scores={click=0..}] run tp @s 433.8 5.4 1362.0
execute if entity @a[scores={click=0..20}] at @a positioned ~ ~2 ~ run tag @e[type=chicken,tag=Cucco,distance=..1] add ThrowingCucco
execute unless entity @a[scores={click=0..}] run tp @e[type=armor_stand,tag=TalonSleep4] 433.8 2.4 1362.0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Mumble...mumble... Huh? I'm awake already!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" What?"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Well, I'll be! If it ain't the forest kid from the other day! By the way, thanks a lot for waking me up!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" It took some doing, but I finally got Malon back in a good mood."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" So, what are you up to today? Got some free time on your hands, you say? Well, how about a little game?"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" These three Cuccos I have here are special "},{"text":"Super Cuccos","color":"red"},{"text":"!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" I'm going to throw these Cuccos into that there gaggle of normal Cuccos."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" If you can pick out these three special birds from among the normal Cuccos within the time limit, I'll give you "},{"text":"something good","color":"red"},{"text":"."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" If you can't find them, I win. It'll be "},{"text":"10 Rupees","color":"red"},{"text":"... Want to play? (Right-click to play game)"}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 20

execute if entity @a[scores={click=18..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=18..}] run fill 429 8 1363 431 6 1360 minecraft:air
execute if entity @a[scores={click=18..}] run tag @s remove CuccoMinigame
execute if entity @a[scores={click=18..}] run scoreboard objectives remove click

