scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tp @a -415 31 2060
execute if entity @s[scores={timer=1}] run fill -415 32 2059 -415 32 2059 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -414 32 2060 -414 32 2060 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -415 32 2061 -415 32 2061 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -416 32 2060 -416 32 2060 minecraft:barrier

execute if entity @s[scores={timer=10}] at @a run playsound minecraft:block.gilded_blackstone.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=10}] at @a anchored eyes positioned ^ ^ ^1 run particle minecraft:flash ^ ^ ^ 0 0 0 1 2 normal
execute if entity @s[scores={timer=10}] run tp @s -413 33 2062
execute if entity @s[scores={timer=11}] run fill -414 31 2061 -412 37 2063 minecraft:air

execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"The "},{"text":"Forest Barrier","color":"green"},{"text":" is dispelled! Hurry up, "},{"selector":"@p"},{"text":"!"}]

execute if entity @s[scores={timer=60..80}] run particle minecraft:entity_effect -413 33 2062 0 1 0.1 1 0 normal
execute if entity @s[scores={timer=81..}] run tp @a -474 31 2001 147 -40
execute if entity @s[scores={timer=91..}] run fill -476 43 1998 -481 45 1991 minecraft:air replace minecraft:lime_stained_glass
execute if entity @s[scores={timer=91..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=91..}] run fill -416 32 2059 -414 32 2061 minecraft:air
execute if entity @s[scores={timer=91..}] run fill -413 26 2062 -413 26 2062 minecraft:gold_block
execute if entity @s[scores={timer=91..}] run tp @s -413 28 2062
execute if entity @s[scores={timer=91..}] run tag @a remove ForestBarrier
