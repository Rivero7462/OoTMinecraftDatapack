execute unless entity @a[scores={click=0..}] run fill -632 65 -626 -632 65 -626 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -634 65 -626 -634 65 -626 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -633 65 -625 -633 65 -625 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -633 65 -627 -633 65 -627 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @s -631 64 -624 135 ~
execute unless entity @a[scores={click=0..}] run tp @a -633 64 -626
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" Oh, you're leaving..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tp @a -633 64 -626 -45 ~
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" I knew...that you would leave the forest...someday, "},{"selector":"@p"},{"text":"..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"Because you are different from me and my friends..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"But that's OK, because we'll be friends forever...won't we?"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"I want you to have this ocarina... Please take good care of it."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tag @e[type=area_effect_cloud,tag=Progress] add SariaOcarina
execute if entity @a[scores={click=11}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Fairy Ocarina\"}"},Unbreakable:1b,Damage:9,HideFlags:63,OcarinaSaria:1b}
execute if entity @a[scores={click=11}] run advancement grant @a only minecraft:_ocarina/root
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"You received the "},{"text":"Fairy Ocarina","color":"red"},{"text":"! This is a memento from Saria. Right-click to play! You can play different songs you come across."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"When you play my ocarina, I hope you will think of me and come back to the forest to visit."}]
execute if entity @a[scores={click=13}] run fill -633 65 -624 -634 65 -628 minecraft:air
execute if entity @a[scores={click=13}] run fill -632 65 -624 -632 66 -628 minecraft:barrier
execute if entity @a[scores={click=13}] run tag @a add Owl1
execute if entity @a[scores={click=13}] run tag @a add Owl2
execute if entity @a[scores={click=13}] run tag @a add Owl3
execute if entity @a[scores={click=13}] run tag @a add Owl4
execute if entity @a[scores={click=13}] run tag @a add Owl5
execute if entity @a[scores={click=13}] run tag @a add MeetMalon
execute if entity @a[scores={click=13}] run tag @a add ChickenTutorial
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
