tag @s add stoptext
execute unless entity @a[scores={click=0..}] run tp @a 1774 57 2294
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{Prescription:1b}
execute unless entity @a[scores={click=0..}] run tag @a remove Prescription
execute unless entity @a[scores={click=0..}] run fill 1773 58 2294 1773 58 2294 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1774 58 2293 1774 58 2293 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1775 58 2294 1775 58 2294 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1774 58 2295 1774 58 2295 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"King Zora:","color":"gold"},{"text":" Ooh... This is... Well... Hmmm... Hmmm... "},{"text":"Eyedrops","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"King Zora:","color":"gold"},{"text":" You might say we have them, you might say we don't... We do have the ingredients."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"King Zora:","color":"gold"},{"text":" If you take the "},{"text":"ingredients","color":"red"},{"text":" to the doctor at the Lakeside Laboratory, he can make the drops for you."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"King Zora:","color":"gold"},{"text":" But you need to deliver them fresh..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"King Zora:","color":"gold"},{"text":" Can you make it "},{"text":"before they spoil","color":"red"},{"text":"?"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"You used the Prescription and received an "},{"text":"Eyeball Frog","color":"red"},{"text":"! Deliver it to Lake Hylia while it's cold!"}]
execute if entity @a[scores={click=11}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Eyeball Frog\"}"},Unbreakable:1b,Damage:30,HideFlags:63,Frog:1b}
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12}] run fill 1773 58 2293 1775 58 2295 minecraft:air

execute if entity @a[scores={click=12}] if entity @s[scores={text=1}] run scoreboard players set @s text 1
execute if entity @a[scores={click=12}] if entity @s[scores={text=2}] run scoreboard players set @s text 2
execute if entity @a[scores={click=12}] if entity @s[scores={text=3}] run scoreboard players set @s text 3
execute if entity @a[scores={click=12}] if entity @s[scores={text=4}] run scoreboard players set @s text 4
execute if entity @a[scores={click=12}] if entity @s[scores={text=5}] run scoreboard players set @s text 5
execute if entity @a[scores={click=12}] run tag @a remove NoOcarina
execute if entity @a[scores={click=12}] run tag @a add TimedRace
execute if entity @a[scores={click=12}] run tag @a add TimedRace2
execute if entity @a[scores={click=12}] run tag @a remove Eyedrops
execute if entity @a[scores={click=12}] run scoreboard objectives remove click
