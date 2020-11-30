execute unless entity @a[scores={click=0..}] run fill 2180 61 1796 2180 61 1796 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2181 61 1797 2182 61 1797 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2183 61 1796 2183 61 1796 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2182 61 1795 2181 61 1795 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 2182.0 60 1796
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"What the heck! Who are you?!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"When I heard the "},{"text":"song of the Royal Family","color":"blue"},{"text":", I expected their messenger had arrived, but...you're just a little kid!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Has "},{"text":"Darunia","color":"red"},{"text":", the big boss of the Gorons, really lost so much status to be treated like this by his Sworn Brother, the king?"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Now I'm REALLY angry! Get out of my face!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Are you asking why I'm in such a bad mood right now?"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Ancient creatures have infested Dodongo's Cavern!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"We've had a poor harvest of our special crop, Bomb Flowers!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Starvation and hunger because of the rock shortage!"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"But..."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"This is a Goron problem!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"We don't need any help from strangers!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22

execute if entity @a[scores={click=22}] run tag @a remove NoOcarina
execute if entity @a[scores={click=22}] run fill 2180 61 1797 2183 61 1795 minecraft:air
execute if entity @a[scores={click=22}] run tag @a add MeetDarunia2
execute if entity @a[scores={click=22}] run scoreboard players set @s text 1

execute if entity @a[scores={click=22}] run tag @a remove MeetDarunia
execute if entity @a[scores={click=22}] run scoreboard objectives remove click