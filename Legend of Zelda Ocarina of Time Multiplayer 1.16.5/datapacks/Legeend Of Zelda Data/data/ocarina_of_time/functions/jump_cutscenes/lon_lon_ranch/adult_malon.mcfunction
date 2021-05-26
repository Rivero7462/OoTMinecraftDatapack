execute unless entity @a[scores={click=0..}] run fill 469 32 1349 469 32 1349 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 469 30 1349 469 30 1349 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 468 32 1348 468 32 1348 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 468 30 1348 468 30 1348 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 467 32 1349 467 32 1349 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 467 30 1349 467 30 1349 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 468 32 1350 468 32 1350 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 468 30 1350 468 30 1350 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 468 30 1349
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"You... Do you know my "},{"text":"mother's song","color":"red"},{"text":"?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Everyone really liked that song... My dad... Even Mr. Ingo..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"But...since Ganondorf appeared, Mr. Ingo has changed completely."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"I can remember the good old days only while I sing the song. Also..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Epona ","color":"red"},{"text":"really like that song... Only I could tame that horse... Even Mr. Ingo had a hard time..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Malon: ","color":"gold"},{"text":"Hee hee hee!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12}] run tag @a remove NoOcarina
execute if entity @a[scores={click=12}] run fill 469 30 1348 467 32 1350 minecraft:air
execute if entity @a[scores={click=12}] run fill 470 25 1351 470 25 1351 minecraft:gold_block
execute if entity @a[scores={click=12}] run tag @a remove MeetAdultMalon
execute if entity @a[scores={click=12}] run scoreboard objectives remove click
