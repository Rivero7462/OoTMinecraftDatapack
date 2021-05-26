execute unless entity @a[scores={click=0..}] run tp @a 2036 156 1351
execute unless entity @a[scores={click=0..}] run scoreboard players set @e[type=giant,tag=Biggoron] text 0
execute unless entity @a[scores={click=0..}] run tag @a remove TimedRace
execute unless entity @a[scores={click=0..}] run tag @a remove TimedRace3
execute unless entity @a[scores={click=0..}] run clear @a minecraft:shears{Eyedrops:1b}
execute unless entity @a[scores={click=0..}] run scoreboard players reset @a RaceTime
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run fill 2035 157 1351 2035 157 1351 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2036 157 1350 2036 157 1350 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2037 157 1351 2037 157 1351 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2036 157 1352 2036 157 1352 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" Rrrrreally? You brrrrought the eyedrops? I'm so rrrrrelieved! I'm going to use them rrrrrright now!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run fill 2040 125 1360 2040 125 1360 minecraft:gold_block
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" Wowwwwwwwwwwwwww!","color":"red"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" This is stimulating! It's worrrrrking grrrrreat!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" Now I can get back to my blade business! My worrrrrk is not verrrry consistent, so I'll give this to you so you won't forrrrrget."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Biggoron:","color":"gold"},{"text":" Afterrrr a few days...please returrrrrrn... Wait... Just wait patiently..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run advancement grant @a only minecraft:_gear/claim_check
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Biggoron's Sword... You got a "},{"text":"Claim Check ","color":"red"},{"text":"for it! You can't wait for the sword to be completed!"}]
execute if entity @a[scores={click=11}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Claim Check\"}"},Unbreakable:1b,Damage:13,HideFlags:63,ClaimCheck:1b,InventoryItem:1b}
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12

execute if entity @a[scores={click=12}] run tag @a remove NoOcarina
execute if entity @a[scores={click=12}] run scoreboard players set @e[type=giant,tag=Biggoron] text 3
execute if entity @a[scores={click=12}] run tag @e[type=giant,tag=Biggoron] add stoptext
execute if entity @a[scores={click=12}] run fill 2037 157 1352 2035 157 1350 minecraft:air

execute if entity @a[scores={click=12}] run tag @a remove GiveEyedrops
execute if entity @a[scores={click=12}] run scoreboard objectives remove click
