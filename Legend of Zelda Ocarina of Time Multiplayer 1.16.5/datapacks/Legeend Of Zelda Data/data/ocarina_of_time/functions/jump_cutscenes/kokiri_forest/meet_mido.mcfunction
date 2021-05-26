execute unless entity @a[scores={click=0..}] run tp @p -546 65 -628
execute unless entity @a[scores={click=0..}] run fill -546 66 -627 -546 66 -627 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -547 66 -628 -547 66 -628 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -546 66 -629 -546 66 -629 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill -545 66 -628 -545 66 -628 minecraft:barrier
execute unless entity @a[scores={click=0..}] run data merge entity @e[name=Saria,limit=1] {Pose:{Head:[0f,0f,0f]}}
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tp @s -544 65 -628 90 ~
execute if entity @a[scores={click=1}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" Hey, you! \""},{"text":"Mr. No-Fairy","color":"aqua"},{"text":"\"! What's your business with the Great Deku Tree?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" Without a fairy, you're not even a real man!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" What?! You've got a fairy?! Say What? The Great Deku Tree actually summoned you?"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" Whaaaaaaat?!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" Why would he summon you and not the great"},{"text":" Mido","color":"red"},{"text":"?"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" This isn't funny..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" I don't believe it! You aren't even fully equipped yet!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" How do you think you're going to help the Great Deku Tree without both a "},{"text":"sword","color":"red"},{"text":" and "},{"text":"shield","color":"aqua"},{"text":" ready?"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" What? You're right-I don't have my equipment ready, but..."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @p ["",{"text":"Mido:","color":"gold"},{"text":" If you want to pass through here, you should at least "},{"text":"equip","color":"green"},{"text":" a "},{"text":"sword","color":"red"},{"text":" and a "},{"text":"shield","color":"aqua"},{"text":"! Sheesh!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20

execute if entity @a[scores={click=20}] run scoreboard players set @e[type=armor_stand,tag=Saria] text 3
execute if entity @a[scores={click=20}] run tag @s add stoptext
execute if entity @a[scores={click=20}] run scoreboard players set @s text 1
execute if entity @a[scores={click=20}] run fill -547 66 -629 -545 66 -627 minecraft:air

execute if entity @a[scores={click=20}] run tag @a remove MeetMido
execute if entity @a[scores={click=20}] run scoreboard objectives remove click
