execute unless entity @a[scores={click=0..}] run tp @a -615 75 -669
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{Cojiro:1b}
execute unless entity @a[scores={click=0..}] run fill -614 76 -669 -614 76 -669 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -615 76 -670 -615 76 -670 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -616 76 -669 -616 76 -669 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -615 76 -668 -615 76 -668 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Grog: ","color":"gold"},{"text":"Cojiro? Why? Normally only a nice guy like me can tame you..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Grog: ","color":"gold"},{"text":"Which means..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Grog:","color":"gold"},{"text":" You... You must be a nice guy! Must be! You must be! Please, Mr. Nice Guy! Please!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Grog:","color":"gold"},{"text":" Deliver this to the "},{"text":"old hag in the potion shop","color":"red"},{"text":" in Kakariko Village!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Grog:","color":"gold"},{"text":" This will disappear if you take too long, so you gotta hurry!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Odd Mushroom\"}"},Unbreakable:1b,Damage:26,HideFlags:63,Mushroom:1b}
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"You got an","color":"white"},{"text":" Odd Mushroom","color":"red"},{"text":"! A fresh mushroom like this is sure to spoil quickly! Take it to the Kakariko Potion Shop. Hurry!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=13}] run tag @a remove NoOcarina
execute if entity @a[scores={click=13}] run scoreboard players set @s text 2
execute if entity @a[scores={click=13}] run tag @s add stoptext
execute if entity @a[scores={click=13}] run fill -614 76 -670 -616 76 -668 minecraft:air

execute if entity @a[scores={click=13}] run tag @a add TimedRace
execute if entity @a[scores={click=13}] run tag @a add TimedRace1
execute if entity @a[scores={click=13}] run tag @a remove MeetGrog
execute if entity @a[scores={click=13}] run scoreboard objectives remove click
