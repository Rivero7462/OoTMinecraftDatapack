scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..70}] run data merge entity @s {Motion:[0.0,-0.5,0.1]}
execute if entity @s[scores={timer=70..}] run data merge entity @s {Pose:{Head:[-40f,0f,0f]}}
execute if entity @s[scores={timer=70..}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" Yahoo! Hi, "},{"selector":"@p"},{"text":"!"}]
execute if entity @s[scores={timer=70..}] run fill -572 69 -607 -572 69 -603 minecraft:air
execute if entity @s[scores={timer=70..}] run tag @s remove SariaCutscene1
execute if entity @s[scores={timer=70..}] run scoreboard players set @s timer 0
