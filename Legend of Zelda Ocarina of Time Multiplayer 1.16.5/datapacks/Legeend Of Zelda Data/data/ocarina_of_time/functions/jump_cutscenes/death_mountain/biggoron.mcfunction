execute unless entity @a[scores={click=0..}] run tp @a 2036 156 1351
execute unless entity @a[scores={click=0..}] run scoreboard players set @e[type=giant,tag=Biggoron] text 0
execute unless entity @a[scores={click=0..}] run tag @e[type=giant,tag=Biggoron] add stoptext
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{BrokenSword:1b}
execute unless entity @a[scores={click=0..}] run tag @a remove BrokenBlade
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run fill 2035 157 1351 2035 157 1351 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2036 157 1350 2036 157 1350 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2037 157 1351 2037 157 1351 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2036 157 1352 2036 157 1352 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" That broken knife is surely my worrrrrrrrrrk... I really want to repairrrrr it, but..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" But because of yesterrrrrday's errrrruption, my eyes are irrrrrrrritated..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" There are fine eyedrops in Zora's Domain... You will find them if you go to see "},{"text":"Kinnnnnng Zorrrrrra","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" Please go get the eyedrrrrrrops..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"You checked in the Broken Goron Sword and received a "},{"text":"Prescription","color":"red"},{"text":"! Go see King Zora!"}]
execute if entity @a[scores={click=9}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Prescription\"}"},Unbreakable:1b,Damage:29,HideFlags:63,Prescription:1b}
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @a[scores={click=10}] run tag @a remove NoOcarina
execute if entity @a[scores={click=10}] run fill 2037 157 1352 2035 157 1350 minecraft:air
execute if entity @a[scores={click=10}] run scoreboard players set @e[type=giant,tag=Biggoron] text 2
execute if entity @a[scores={click=10}] run tag @a add Prescription

execute if entity @a[scores={click=10}] run tag @a remove BiggoronEyes
execute if entity @a[scores={click=10}] run scoreboard objectives remove click
