execute unless entity @a[scores={click=0..}] run fill 885 71 1423 885 71 1423 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 884 71 1422 884 71 1422 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 883 71 1423 883 71 1423 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 884 70 1423 180 ~
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Hey! Your clothes! They're...different... You're not from around here, are you?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" ..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Ohh... You're a fairy boy from the forest! My name is "},{"text":"Malon","color":"red"},{"text":"! My dad owns Lon Lon Ranch!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Dad went to the castle to deliver some milk, and he hasn't come back yet..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8

execute if entity @a[scores={click=8}] run tag @a remove NoOcarina
execute if entity @a[scores={click=8}] run fill 883 71 1423 885 71 1422 minecraft:air
execute if entity @a[scores={click=8}] run tag @s add stoptext
execute if entity @a[scores={click=8}] run scoreboard players set @s text 1
execute if entity @a[scores={click=8}] run tag @a remove MeetMalon
execute if entity @a[scores={click=8}] run tag @a add MeetMalon2
execute if entity @a[scores={click=8}] run scoreboard objectives remove click