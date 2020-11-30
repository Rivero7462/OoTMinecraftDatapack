execute unless entity @a[scores={click=0..}] run fill 3055 49 1956 3055 49 1956 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 3056 49 1955 3056 49 1955 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 3057 49 1956 3057 49 1956 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 3056 49 1957 3056 49 1957 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 3057 46 1956 3057 46 1956 minecraft:gold_block
execute unless entity @a[scores={click=0..}] run tp @a 3056 48 1956
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" Who's there? Is that you, "},{"selector":"@p"},{"text":"...?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" Oh, it really is "},{"selector":"@p"},{"text":"!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" You've grown so big since I last saw you!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" I want to have a man-to-man talk with you, but now's not the time."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" Ganondorf is causing trouble on Death Mountain again! He has revived the evil, ancient dragon Volvagia!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" On top of that, he is going to feed my people to that evil dragon as a warning to other races who might resist him..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" If that fire-breathing dragon escapes from the mountain, all of Hyrule will become a burning wasteland!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" I will go on ahead to try to seal up the evil dragon..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" I'm concerned, though, because I don't have the legendary hammer... But I have no choice."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"...I'm asking you to do this as my Sworn Brother..."}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" While I'm trying to deal with the dragon, please save my people!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Darunia:","color":"gold"},{"text":" The prisoners' cells are in the opposite direction. I'm counting on you, "},{"selector":"@p"},{"text":"!"}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24

execute if entity @a[scores={click=24}] run tag @a remove NoOcarina
execute if entity @a[scores={click=24}] run tp @s 3032 45 1956
execute if entity @a[scores={click=24}] run fill 3057 49 1955 3055 49 1957 minecraft:air
execute if entity @a[scores={click=24}] run tag @a remove DaruniaReunite
execute if entity @a[scores={click=24}] run scoreboard objectives remove click
