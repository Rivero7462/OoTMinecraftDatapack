scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tp @a -546 32 2047
execute if entity @s[scores={timer=1}] run fill -546 33 2048 -546 33 2048 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -547 33 2047 -547 33 2047 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -546 33 2046 -546 33 2046 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -545 33 2047 -545 33 2047 minecraft:barrier

execute if entity @s[scores={timer=10}] at @a run playsound minecraft:block.gilded_blackstone.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=10}] at @a anchored eyes positioned ^ ^ ^1 run particle minecraft:flash ^ ^ ^ 0 0 0 1 2 normal
execute if entity @s[scores={timer=10}] run tp @s -548 34 2049
execute if entity @s[scores={timer=11}] run fill -547 32 2048 -549 38 2050 minecraft:air

execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Nabooru: ","color":"gold"},{"text":"The "},{"text":"Spirit Barrier","color":"yellow"},{"text":" is dispelled! Hurry up, kid!"}]

execute if entity @s[scores={timer=60..80}] run particle minecraft:entity_effect -548 34 2049 1 .7 0 1 0 normal
execute if entity @s[scores={timer=81..}] run tp @a -508 31 2001 -147 -40
execute if entity @s[scores={timer=91..}] run fill -506 43 1998 -501 45 1991 minecraft:air replace minecraft:orange_stained_glass
execute if entity @s[scores={timer=91..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=91..}] run fill -547 33 2048 -545 33 2046 minecraft:air
execute if entity @s[scores={timer=91..}] run fill -548 27 2049 -548 27 2049 minecraft:gold_block
execute if entity @s[scores={timer=91..}] run tp @s -548 29 2049
execute if entity @s[scores={timer=91..}] run tag @a remove SpiritBarrier
