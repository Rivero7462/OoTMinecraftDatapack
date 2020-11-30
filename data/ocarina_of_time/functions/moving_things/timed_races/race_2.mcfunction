execute unless entity @s[scores={RaceTime=..5100}] run scoreboard players set @s RaceTime 5100
scoreboard objectives setdisplay sidebar RaceTime
tag @a add HideDisplayScore

execute if entity @s[scores={RaceTime=..5100}] run scoreboard players remove @s RaceTime 1

execute if entity @s[scores={RaceTime=..0}] run tag @a add Prescription
execute if entity @s[scores={RaceTime=..0}] run clear @a minecraft:shears{Frog:1b}
execute if entity @s[scores={RaceTime=..0}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Prescription\"}"},Unbreakable:1b,Damage:29,HideFlags:63,Prescription:1b}
execute if entity @s[scores={RaceTime=..0}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Oh, no! ","color":"aqua"},{"text":"Time's up","color":"red"},{"text":"! The thing you were going to deliver has spoiled! Let's try again!","color":"aqua"}]
execute if entity @s[scores={RaceTime=..0}] run tag @s add StopTime
execute if entity @s[scores={RaceTime=..0}] run function ocarina_of_time:teleports/remove_teleports
execute if entity @s[scores={RaceTime=..0}] run function ocarina_of_time:music/zora_domain
execute if entity @s[scores={RaceTime=..0}] run tag @s add InZoraDomain
execute if entity @s[scores={RaceTime=..0}] run tp @s 1774 55 2298 180 ~
execute if entity @s[scores={RaceTime=..0}] run tag @s remove TimedRace2
execute if entity @s[scores={RaceTime=..0}] run tag @s remove TimedRace
execute if entity @s[scores={RaceTime=..0}] run scoreboard players reset @s RaceTime
