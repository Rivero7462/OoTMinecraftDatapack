execute unless entity @a[scores={click=0..}] run fill 899 76 946 899 76 946 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 900 76 945 900 76 945 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 898 76 945 898 76 945 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 899 76 944 899 76 944 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 899 75 945
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
execute if entity @a[scores={click=8}] run fill 898 76 944 900 76 946 minecraft:air
execute if entity @a[scores={click=8}] run tag @a remove MeetMalon
execute if entity @a[scores={click=8}] run tag @a add MeetMalon2
execute if entity @a[scores={click=8}] run scoreboard objectives remove click