scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime

execute if entity @s[scores={LoadZone=15..}] run tellraw @a ["",{"text":"Rivero:","color":"#FFFF00"},{"text":" Thank you so much for playing! This map was developed over the course of 7 years so thank you for beating the game! If you liked the map, I would really appreciate it if you donated! I can't add anymore people to the wall of donators, but I do plan to make more original games and the donations would greatly help with that! There's also the discord server and my Youtube if you're interested in those too! You can find the info beside me.\nAnd with that, thank you for playing "},{"text":"The Legend of Zelda: Ocarina of Time","color":"red"},{"text":"."}]
execute if entity @s[scores={LoadZone=15..}] run summon firework_rocket 911 4 -528 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;14602026],FadeColors:[I;14602026]}]}}}}
execute if entity @s[scores={LoadZone=15..}] run summon firework_rocket 915 4 -528 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:2,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;14602026],FadeColors:[I;14602026]}]}}}}
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run tp @s 913 4 -518 180 0
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
