execute unless entity @a[scores={click=0..}] run fill 851 71 1420 851 71 1420 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 852 71 1419 852 71 1419 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 851 71 1418 851 71 1418 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tp @a 851 70 1419
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Unnngh...are you the boy from the forest...?"}]
execute if entity @a[scores={click=1}] run data merge entity @s {Pose:{Head:[-30f,0f,0f]}}
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"I-I-I've finally met you... I-I-I have something to t-t-tell you..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Ganondorf","color":"red"},{"text":", the Gerudo King of Thieves, betrayed our King..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Zelda's nanny, "},{"text":"Impa","color":"red"},{"text":", sensed danger and escaped from the castle with our Princess..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"I tried to stop Ganondorf's men from chasing them...but..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"The princess was...waiting for a boy from the forest... That's you... She wanted to give "},{"text":"something ","color":"red"},{"text":"to the boy..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"If you received it from the Princess, hurry...to the "},{"text":"Temple of Time","color":"aqua"},{"text":"..."}]
execute if entity @a[scores={click=13}] run data merge entity @s {Pose:{Head:[30f,0f,0f]}}
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14

execute if entity @a[scores={click=14}] run tag @a remove NoOcarina
execute if entity @a[scores={click=14}] run scoreboard players set @s text 1
execute if entity @a[scores={click=14}] run fill 852 71 1420 851 71 1418 minecraft:air
execute if entity @a[scores={click=14}] run tag @a remove SecretCutscene
execute if entity @a[scores={click=14}] run scoreboard objectives remove click
