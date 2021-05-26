execute unless entity @a[scores={click=0..}] run fill 1038 36 3026 1038 38 3024 minecraft:light_gray_stained_glass_pane[waterlogged=true]
execute unless entity @a[scores={click=0..}] run fill 1039 36 3024 1040 38 3024 minecraft:light_gray_stained_glass_pane[waterlogged=true]
execute unless entity @a[scores={click=0..}] run fill 1040 38 3025 1040 36 3026 minecraft:light_gray_stained_glass_pane[waterlogged=true]
execute unless entity @a[scores={click=0..}] run fill 1039 36 3026 1039 38 3026 minecraft:light_gray_stained_glass_pane[waterlogged=true]
execute unless entity @a[scores={click=0..}] run fill 1035 33 3025 1035 33 3025 minecraft:gold_block
execute unless entity @a[scores={click=0..}] run tp @a 1039 36 3025
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Oh...you... If I'm right..."},{"selector":"@p"},{"text":"?!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You're "},{"selector":"@p"},{"text":", aren't you?"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"It's me, your fiancée, "},{"text":"Ruto","color":"blue"},{"text":"! Princess of the Zoras!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I never forgot the vows we made to each other seven years ago!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You're a terrible man to have kept me waiting for these seven long years..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"But now is not the time to talk about love..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I'm sure you've already seen it! Zora's Domain-totally frozen!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"A young man named "},{"text":"Sheik","color":"red"},{"text":" saved me from under the ice..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"But my father and the other Zoras have not...yet..."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"I want to save them all! I want to save Zora's Domain!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"You! You have to help me! This is a request from me, the woman who is going to be your wife!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"selector":"@p"},{"text":", you have to help me destroy the evil monster in the temple, OK?!"}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"Inside the Water Temple, there are "},{"text":"three places","color":"red"},{"text":" where you can change the water level."}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" I'll lead the way. Follow me, quickly!"}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tag @s add SwimUp

execute if entity @s[tag=SwimUp] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run data merge entity @s {Pose:{Head:[-30f,0f,0f],RightArm:[-150f,0f,-5f],LeftArm:[-150f,0f,5f],RightLeg:[10f,0f,10f],LeftLeg:[-10f,0f,-10f]}}
execute if entity @s[scores={timer=1..120}] run tp @s ~ ~.15 ~

execute if entity @s[scores={timer=121..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=121..}] run tp @s 1033 45 3017
execute if entity @s[scores={timer=121..}] run fill 1040 38 3024 1038 36 3026 minecraft:water
execute if entity @s[scores={timer=121..}] run tag @a remove RutoReunion
execute if entity @s[scores={timer=121..}] run scoreboard objectives remove click
