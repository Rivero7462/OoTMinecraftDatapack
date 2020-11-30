execute unless entity @a[scores={click=0..}] run tp @a 356 76 2038
execute unless entity @a[scores={click=0..}] run tag @s add stoptext
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tag @a remove Saw
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{Saw:1b}
execute unless entity @a[scores={click=0..}] run fill 356 77 2039 356 77 2039 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 357 77 2038 357 77 2038 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 356 77 2037 356 77 2037 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 355 77 2038 355 77 2038 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" Hey-that saw! It's mine!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" But...I thought I left that saw with my old lady... Oh well..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" My Biggoron tool broke, so I was going to Goron City to get it repaired."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" Your coming here is great timing."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Mutoh:","color":"gold"},{"text":" Good kid! Thanks! I'm sorry I can't give you something as good in return, but...take this anyway!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"You traded the Poacher's Saw for a ","color":"white"},{"text":"Broken Goron Sword","color":"red"},{"text":"! Visit Biggoron to get it repaired!"}]
execute if entity @a[scores={click=11}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Broken Goron Sword\"}"},Unbreakable:1b,Damage:25,HideFlags:63,BrokenSword:1b}
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12}] run tag @a remove NoOcarina
execute if entity @a[scores={click=12}] run fill 355 77 2039 357 77 2037 minecraft:air
execute if entity @a[scores={click=12}] run tag @a add BrokenBlade

execute if entity @a[scores={click=12}] run tag @a remove MeetMutoh
execute if entity @a[scores={click=12}] run scoreboard objectives remove click
