execute unless entity @a[scores={click=0..}] run tp @a -615 75 -669
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run fill -614 76 -669 -614 76 -669 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -615 76 -670 -615 76 -670 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -616 76 -669 -616 76 -669 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -615 76 -668 -615 76 -668 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"That guy isn't here anymore."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"Except for the Kokiri, people who come into the forest end up lost.","color":"white"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"They all become Stalfos. That's why he's not here anymore. Only his saw is left. Hee hee.","color":"white"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"That medicine is made of forest mushrooms. Give it back!","color":"white"}]
execute if entity @a[scores={click=7}] run clear @a minecraft:shears{Poultice:1b}
execute if entity @a[scores={click=7}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Poacher's Saw\"}"},Unbreakable:1b,Damage:28,HideFlags:63,Saw:1b}
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"You returned the Odd Poultice and got the ","color":"white"},{"text":"Poacher's Saw","color":"red"},{"text":"! The young punk guy must have left this behind."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a {"text":"Take it to Gerudo Valley. Someone there might have a use for a saw like this!","color":"white"}
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Fado: ","color":"gold"},{"text":"Heh heh heh. Are you going to become one...too? Heh heh!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14

execute if entity @a[scores={click=14}] run tag @a remove NoOcarina
execute if entity @a[scores={click=14}] run fill -618 72 -674 -618 72 -674 minecraft:gold_block
execute if entity @a[scores={click=14}] run scoreboard players set @s text 4
execute if entity @a[scores={click=14}] run tag @s add stoptext
execute if entity @a[scores={click=14}] run fill -614 76 -670 -616 76 -668 minecraft:air
execute if entity @a[scores={click=14}] run tag @a add Saw
execute if entity @a[scores={click=14}] run tag @a remove DeliverPoultice

execute if entity @a[scores={click=14}] run tag @a remove MeetFado
execute if entity @a[scores={click=14}] run scoreboard objectives remove click
