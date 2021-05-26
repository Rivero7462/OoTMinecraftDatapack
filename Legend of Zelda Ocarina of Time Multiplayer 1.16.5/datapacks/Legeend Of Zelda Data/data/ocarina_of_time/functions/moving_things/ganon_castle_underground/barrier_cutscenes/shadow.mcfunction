scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tp @a -410 34 1858
execute if entity @s[scores={timer=1}] run fill -409 35 1858 -409 35 1858 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -410 35 1857 -410 35 1857 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -411 35 1858 -411 35 1858 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -410 35 1859 -410 35 1859 minecraft:barrier

execute if entity @s[scores={timer=10}] at @a run playsound minecraft:block.gilded_blackstone.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=10}] at @a anchored eyes positioned ^ ^ ^1 run particle minecraft:flash ^ ^ ^ 0 0 0 1 2 normal
execute if entity @s[scores={timer=10}] run tp @s -408 36 1856
execute if entity @s[scores={timer=11}] run fill -409 34 1857 -407 40 1855 minecraft:air

execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Impa: ","color":"gold"},{"text":"The "},{"text":"Shadow Barrier","color":"light_purple"},{"text":" is dispelled! Please save the princess!"}]

execute if entity @s[scores={timer=60..80}] run particle minecraft:entity_effect -408 36 1856 1 0 1 1 0 normal
execute if entity @s[scores={timer=81..}] run tp @a -474 31 1947 33 -40
execute if entity @s[scores={timer=91..}] run fill -476 43 1950 -481 45 1957 minecraft:air replace minecraft:magenta_stained_glass
execute if entity @s[scores={timer=91..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=91..}] run fill -411 35 1859 -409 35 1857 minecraft:air
execute if entity @s[scores={timer=91..}] run fill -408 29 1856 -408 29 1856 minecraft:gold_block
execute if entity @s[scores={timer=91..}] run tp @s -408 31 1856
execute if entity @s[scores={timer=91..}] run tag @a remove ShadowBarrier
