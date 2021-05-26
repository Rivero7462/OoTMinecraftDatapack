execute unless entity @s[scores={RaceTime=..2000}] run scoreboard players set @s RaceTime 2000
scoreboard objectives setdisplay sidebar RaceTime
tag @a add HideDisplayScore

execute if entity @s[scores={RaceTime=..2000}] run scoreboard players remove @s RaceTime 1

execute if entity @s[scores={RaceTime=..0}] run clear @a minecraft:shears{Mushroom:1b}
execute if entity @s[scores={RaceTime=..0}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Cojiro\"}"},Unbreakable:1b,Damage:2,HideFlags:63,Cojiro:1b}
execute if entity @s[scores={RaceTime=..0}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Oh, no! ","color":"aqua"},{"text":"Time's up","color":"red"},{"text":"! The thing you were going to deliver has spoiled! Let's try again!","color":"aqua"}]
execute if entity @s[scores={RaceTime=..0}] run tag @s add StopTime
execute if entity @s[scores={RaceTime=..0}] run function ocarina_of_time:teleports/remove_teleports
execute if entity @s[scores={RaceTime=..0}] run function ocarina_of_time:music/lost_woods
execute if entity @s[scores={RaceTime=..0}] run tag @s add InKokiriForest
execute if entity @s[scores={RaceTime=..0}] run tp @s -615 75 -669
execute if entity @s[scores={RaceTime=..0}] run tag @s remove TimedRace1
execute if entity @s[scores={RaceTime=..0}] run tag @s remove TimedRace
execute if entity @s[scores={RaceTime=..0}] run scoreboard players reset @s RaceTime
