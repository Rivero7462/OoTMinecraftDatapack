execute unless entity @a[scores={click=0..}] run fill 2186 70 1816 2186 70 1816 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2187 70 1815 2187 70 1815 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2186 70 1814 2186 70 1814 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2185 70 1815 2185 70 1815 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 2186 69 1815 -15 ~
execute unless entity @a[scores={click=0..}] run tp @s 2187 69 1818 170 0
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" What?","color":"white"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":": ","color":"gold"},{"text":"Your name is also ","color":"white"},{"selector":"@p","color":"white"},{"text":"?","color":"white"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":": ","color":"gold"},{"text":"Then you must be the legendary Dodongo Buster and Hero, ","color":"white"},{"selector":"@p","color":"white"},{"text":"!","color":"white"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" My dad is "},{"text":"Darunia","color":"red"},{"text":"... Do you remember him?"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":": ","color":"gold"},{"text":"Dad named me ","color":"white"},{"selector":"@p","color":"white"},{"text":" after you, because you're so brave!","color":"white"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" It's a cool name! I really like it!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":": ","color":"gold"},{"selector":"@p","color":"white"},{"text":", you're a hero to us Gorons! I'm so glad to meet you!","color":"white"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Please give me your autograph! Sign it: \"To my friend, "},{"selector":"@p"},{"text":" of the Gorons.\""}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Oh..."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" I guess it's not a good time to ask you for this... Please help everyone!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" My dad, Darunia, went to the "},{"text":"Fire Temple","color":"red"},{"text":". A dragon is inside!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" If we don't hurry up, even my dad will be eaten by the dragon!"}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" B-b-b-boooo hooooo!"}]
execute if entity @a[scores={click=25}] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[30f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a {"text":"You'd better try to calm him down if you can... Maybe he will calm down if you talk to him?"}
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" A long time ago, there was an evil dragon named "},{"text":"Volvagia","color":"red"},{"text":" living in this mountain."}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" That dragon was very scary! It ate Gorons!"}]
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[scores={click=33}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Using a huge hammer, the hero of the Gorons... BOOOM!"}]
execute if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute if entity @a[scores={click=35}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Destroyed it just like that. This is a myth from long ago, but it's true!"}]
execute if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute if entity @a[scores={click=37}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" I know because my dad is a descendant of the hero!"}]
execute if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute if entity @a[scores={click=39}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Everybody was taken to the "},{"text":"Fire Temple","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute if entity @a[scores={click=41}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" While my dad was out...Ganondorf's followers came and took them all away!"}]
execute if entity @a[scores={click=41}] run scoreboard players set @a click 42
execute if entity @a[scores={click=43}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" All of them will be eaten by "},{"text":"Volvagia","color":"red"},{"text":"!"}]
execute if entity @a[scores={click=43}] run scoreboard players set @a click 44
execute if entity @a[scores={click=45}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Dad said that Ganondorf has revived Volvagia..."}]
execute if entity @a[scores={click=45}] run scoreboard players set @a click 46
execute if entity @a[scores={click=47}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" As a warning to those who might oppose him, Ganondorf is going to feed them all to Volvagia!"}]
execute if entity @a[scores={click=47}] run scoreboard players set @a click 48
execute if entity @a[scores={click=49}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":":","color":"gold"},{"text":" Dad went to the Fire Temple all by himself to try to save everyone..."}]
execute if entity @a[scores={click=49}] run scoreboard players set @a click 50
execute if entity @a[scores={click=51}] run tellraw @a ["",{"selector":"@p","color":"gold"},{"text":": ","color":"gold"},{"text":"Please help, ","color":"white"},{"selector":"@p","color":"white"},{"text":"! I'll give you this ","color":"white"},{"text":"heat-resistant tunic","color":"red"},{"text":"!","color":"white"}]
execute if entity @a[scores={click=51}] run scoreboard players set @a click 52
execute if entity @a[scores={click=53}] run tellraw @a ["",{"text":"You got a ","color":"white"},{"text":"Goron Tunic","color":"red"},{"text":"! This heat-resistant tunic is adult sized, so it won't fit a kid. Going to a hot place? No worries!"}]
execute if entity @a[scores={click=53}] run give @a minecraft:leather_chestplate{display:{color:14942208,Name:"{\"text\":\"Goron Tunic\"}"},Unbreakable:1b,GoronTunic:1b,HideFlags:46}
execute if entity @a[scores={click=53}] run fill 2190 65 1819 2190 65 1819 minecraft:gold_block
execute if entity @a[scores={click=53}] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @a[scores={click=53}] run scoreboard players set @a click 54

execute if entity @a[scores={click=54}] run tag @a remove NoOcarina
execute if entity @a[scores={click=54}] run fill 2185 70 1814 2187 70 1816 minecraft:air
execute if entity @a[scores={click=54}] run scoreboard players set @s text 1

execute if entity @a[scores={click=54}] run tag @s remove GoronCutscene
execute if entity @a[scores={click=54}] run tag @a remove GoronCutscene2
execute if entity @a[scores={click=54}] run scoreboard objectives remove click
