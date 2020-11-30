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

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Oh, it's the fairy boy again!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" I heard you found my dad! How did you like the castle? Did you see the princess? Hee hee!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Dad came home in a hurry after you found him. Hee hee!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Oh, yeah-I have to introduce you to my friend, fairy boy!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" She's this horse. Her name is "},{"text":"Epona","color":"red"},{"text":". Isn't she cute?"}]
execute if entity @a[scores={click=9}] run tag @s add EponaRuns
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @s[scores={lifetime=11..}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=11..}] run tag @s remove EponaRuns
execute if entity @s[scores={lifetime=11..}] run fill 469 30 1348 467 32 1350 minecraft:air
execute if entity @s[scores={lifetime=11..}] run tag @a add ScaredEpona
execute if entity @s[scores={lifetime=11..}] run scoreboard players set @e[type=armor_stand,tag=Malon3] text 1
execute if entity @s[scores={lifetime=11..}] run tag @a add MeetEpona2
execute if entity @s[scores={lifetime=11..}] run tag @a remove MeetEpona
execute if entity @s[scores={lifetime=11..}] run scoreboard objectives remove click

execute if entity @s[tag=EponaRuns] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1..10}] run tp @e[type=horse,tag=BabyEpona] 464 30 1353 45 ~