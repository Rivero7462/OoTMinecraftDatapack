scoreboard objectives setdisplay sidebar RaceTime
tag @a add HideDisplayScore
scoreboard players add @s RaceTime 1

execute if entity @s[scores={RaceTime=4000..}] run tag @a add ResetRunningMan
execute if entity @s[scores={RaceTime=4000..}] run tellraw @a ["",{"text":"Running Man:","color":"gold"},{"text":" Oh, looks like you quit the race. Heh heh heh. I bet you had almost rediscovered your killer instinct!"}]
execute if entity @s[scores={RaceTime=4000..}] run tag @s remove TimedRace4
execute if entity @s[scores={RaceTime=4000..}] run tag @s remove TimedRace
execute if entity @s[scores={RaceTime=4000..}] run forceload remove 328 2020
execute if entity @s[scores={RaceTime=4000..}] run scoreboard players reset @s RaceTime
