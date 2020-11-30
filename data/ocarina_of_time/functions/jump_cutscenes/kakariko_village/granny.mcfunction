execute unless entity @a[scores={click=0..}] run tp @a 1522 55 1911
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tag @a remove TimedRace
execute unless entity @a[scores={click=0..}] run tag @a remove TimedRace1
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{Mushroom:1b}
execute unless entity @a[scores={click=0..}] run scoreboard players reset @a RaceTime
execute unless entity @a[scores={click=0..}] run fill 1522 56 1910 1522 56 1910 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1523 56 1911 1523 56 1911 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1522 56 1912 1522 56 1912 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1521 56 1911 1521 56 1911 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Granny: ","color":"gold"},{"text":"That fool! He had to go into the forest. ...I see."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Granny: ","color":"gold"},{"text":"If you see that fool, give this to him. It is the strongest medicine I have ever produced."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Granny: ","color":"gold"},{"text":"However, this poultice will not work on a monster..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"You received an ","color":"white"},{"text":"Odd Poultice","color":"red"},{"text":"! You don't know what's going on between this lady and that guy, but take it to the Lost Woods!"}]
execute if entity @a[scores={click=7}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Odd Poultice\"}"},Unbreakable:1b,Damage:27,HideFlags:63,Poultice:1b}
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Granny: ","color":"gold"},{"text":"They say that there is no medicine that can cure a fool... I guess that's true..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @a[scores={click=10}] run tag @a remove NoOcarina
execute if entity @a[scores={click=10}] run fill 1519 50 1911 1519 50 1911 minecraft:gold_block
execute if entity @a[scores={click=10}] run scoreboard players set @s text 2
execute if entity @a[scores={click=10}] run tag @s add stoptext
execute if entity @a[scores={click=10}] run tag @a add DeliverPoultice
execute if entity @a[scores={click=10}] run fill 1521 56 1912 1523 56 1910 minecraft:air

execute if entity @a[scores={click=10}] run tag @a remove MeetGranny
execute if entity @a[scores={click=10}] run scoreboard objectives remove click
