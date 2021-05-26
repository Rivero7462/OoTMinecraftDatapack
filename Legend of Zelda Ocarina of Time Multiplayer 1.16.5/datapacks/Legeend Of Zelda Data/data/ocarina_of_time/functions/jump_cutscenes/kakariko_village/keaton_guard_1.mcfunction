execute unless entity @a[scores={click=0..}] run fill 1520 79 1892 1520 79 1892 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1521 79 1891 1521 79 1891 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1522 79 1892 1522 79 1892 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 1521 79 1893 1521 79 1893 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @e[type=villager,tag=GuardLetter] ~ 10 ~
execute unless entity @a[scores={click=0..}] run kill @e[type=villager,tag=GuardLetter]
execute unless entity @a[scores={click=0..}] run tp @a 1521 78 1892
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Oh, this is... This is surely Princess Zelda's handwriting! Well, let's see... Hmmm... OK..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" \"","color":"white"},{"text":"This is ","color":"light_purple"},{"selector":"@p","color":"light_purple"},{"text":"... He is under my orders to save Hyrule.","color":"light_purple"},{"text":"\""}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Wah ha ha ha hah! What kind of funny game has our princess come up with now?!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" OK, OK, all right. You can go now... Just be careful, Mr. Hero! Wah ha ha ha hah!"}]
execute if entity @a[scores={click=7}] run fill 1523 78 1889 1526 80 1889 minecraft:air
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" By the way, Mr. Hero..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" If you're going to climb Death Mountain, you should equip a "},{"text":"proper shield","color":"aqua"},{"text":"! It is an active volcano, after all!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" If you go back to Hyrule Castle Town Market, you should check out the "},{"text":"Bazaar","color":"red"},{"text":". They sell the shield you need there."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Tell 'em I sent you, and they should give you a special discount!"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" If you think you're good to go already, don't worry about it."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" I'd like to ask a favor of you. No, I don't expect you to do it just because of the great tip I just gave you! I'm just asking!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Have you been to the "},{"text":"Happy Mask Shop","color":"red"},{"text":" that just opened in the Hyrule Castle Town Market? Everyone is talking about it!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" My little boy pesters me for a popular mask, but I don't have time to go there..."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" So could you go and get the mask for me next time you are in the Market? If you don't feel like it, that's OK, but..."}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" Well, I have no choice-this is my job..."}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Soldier:","color":"gold"},{"text":" ...Sigh..."}]

execute if entity @a[scores={click=29}] run tag @a remove NoOcarina
execute if entity @a[scores={click=29}] run fill 1520 79 1891 1522 79 1893 minecraft:air
execute if entity @a[scores={click=29}] run tag @a add StartMaskQuest
execute if entity @a[scores={click=29}] run tag @a add MeetDarunia
execute if entity @a[scores={click=29}] run scoreboard players set @s text 2
execute if entity @a[scores={click=29}] run tag @a remove MeetKeatonGuard
execute if entity @a[scores={click=29}] run scoreboard objectives remove click