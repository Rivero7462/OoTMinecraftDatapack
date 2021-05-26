execute unless entity @a[scores={click=0..}] run fill 431 7 1361 431 7 1362 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 429 7 1361 429 7 1362 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 430 7 1363 430 7 1363 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 430 7 1360 430 7 1360 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 430 6 1362.0 -90 10
execute unless entity @a[scores={click=0..}] run tp @s 433.8 5.4 1362.0
execute if entity @a[scores={click=0..12}] at @a positioned ~ ~2 ~ run tag @e[type=chicken,tag=Cucco,distance=..1] add ThrowingCucco
execute unless entity @a[scores={click=0..}] run tp @e[type=armor_stand,tag=TalonSleep4] 433.8 2.4 1362.0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Golly! I'll be darned! It's plum incredible! That's the last one! You've found them all! Come on over here!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Hey, you! You've got the talent to be one of the world's best cowboys!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" How'd you like to marry Malon? Huh?"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Haw haw! I was just kidding! Just kidding! I think you're a little young for that, aren't you? Haw haw haw!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" Oh...! I'm proud to present to you a sample of our very own "},{"text":"Lon Lon Milk","color":"red"},{"text":". You'll be energized the moment you drink it!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Talon:","color":"gold"},{"text":" After you drink it, you can bring back the "},{"text":"bottle ","color":"red"},{"text":"and buy a refill anytime you want!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @s text 2
execute if entity @a[scores={click=11}] run scoreboard players add @e[type=area_effect_cloud,tag=Progress] Bottle 1
execute if entity @a[scores={click=11}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Lon Lon Milk\"}"},Unbreakable:1b,Damage:6,HideFlags:63,BottledMilk:1b}
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=12..}] run fill 429 7 1363 431 6 1360 minecraft:air
execute if entity @a[scores={click=12..}] run tag @a remove WinTalonGame
execute if entity @a[scores={click=12..}] run tag @s add Prize
execute if entity @a[scores={click=12..}] run scoreboard objectives remove click

