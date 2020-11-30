scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tp @a -563 32 1880
execute if entity @s[scores={timer=1}] run fill -563 33 1879 -563 33 1879 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -564 33 1880 -564 33 1880 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -563 33 1881 -563 33 1881 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -562 33 1880 -562 33 1880 minecraft:barrier

execute if entity @s[scores={timer=10}] at @a run playsound minecraft:block.gilded_blackstone.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=10}] at @a anchored eyes positioned ^ ^ ^1 run particle minecraft:flash ^ ^ ^ 0 0 0 1 2 normal
execute if entity @s[scores={timer=10}] run tp @s -565 34 1878
execute if entity @s[scores={timer=11}] run fill -564 32 1879 -566 38 1877 minecraft:air

execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"The "},{"text":"Fire Barrier","color":"red"},{"text":" is dispelled! Hurry up, Brother!"}]

execute if entity @s[scores={timer=60..80}] run particle minecraft:entity_effect -565 34 1878 1 0 0 1 0 normal
execute if entity @s[scores={timer=81..}] run tp @a -508 31 1947 -33 -40
execute if entity @s[scores={timer=91..}] run fill -501 45 1957 -506 43 1950 minecraft:air replace minecraft:red_stained_glass
execute if entity @s[scores={timer=91..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=91..}] run fill -564 33 1879 -562 33 1881 minecraft:air
execute if entity @s[scores={timer=91..}] run fill -565 27 1878 -565 27 1878 minecraft:gold_block
execute if entity @s[scores={timer=91..}] run tp @s -565 29 1878
execute if entity @s[scores={timer=91..}] run tag @a remove FireBarrier
