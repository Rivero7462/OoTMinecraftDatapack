scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tp @a -393 21 1974
execute if entity @s[scores={timer=1}] run fill -392 22 1974 -392 22 1974 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -393 22 1973 -393 22 1973 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -394 22 1974 -394 22 1974 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -393 22 1975 -393 22 1975 minecraft:barrier

execute if entity @s[scores={timer=10}] at @a run playsound minecraft:block.gilded_blackstone.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=10}] at @a anchored eyes positioned ^ ^ ^1 run particle minecraft:flash ^ ^ ^ 0 0 0 1 2 normal
execute if entity @s[scores={timer=10}] run tp @s -391 23 1974
execute if entity @s[scores={timer=11}] run fill -392 21 1973 -390 27 1975 minecraft:air

execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Ruto: ","color":"gold"},{"text":"The "},{"text":"Water Barrier ","color":"blue"},{"text":"is dispelled! Hurry up!"}]

execute if entity @s[scores={timer=60..80}] run particle minecraft:entity_effect -391 23 1974 0 0 1 1 0 normal
execute if entity @s[scores={timer=81..}] run tp @a -460 20 1974 90 0
execute if entity @s[scores={timer=91..}] run fill -464 43 1974 -470 47 1974 minecraft:air replace blue_stained_glass
execute if entity @s[scores={timer=91..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=91..}] run fill -392 22 1975 -394 22 1973 minecraft:air
execute if entity @s[scores={timer=91..}] run fill -391 16 1974 -391 16 1974 minecraft:gold_block
execute if entity @s[scores={timer=91..}] run tp @s -391 18 1974
execute if entity @s[scores={timer=91..}] run tag @a remove WaterBarrier
