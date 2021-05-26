scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tag @a add NoOcarina
execute if entity @s[scores={timer=1}] run tp @a -617 22 1974
execute if entity @s[scores={timer=1}] run fill -618 23 1974 -618 23 1974 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -617 23 1973 -617 23 1973 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -616 23 1974 -616 23 1974 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill -617 23 1975 -617 23 1975 minecraft:barrier

execute if entity @s[scores={timer=10}] at @a run playsound minecraft:block.gilded_blackstone.break ambient @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=10}] at @a anchored eyes positioned ^ ^ ^1 run particle minecraft:flash ^ ^ ^ 0 0 0 1 2 normal
execute if entity @s[scores={timer=10}] run tp @s -619 24 1974
execute if entity @s[scores={timer=11}] run fill -618 22 1975 -620 28 1973 minecraft:air

execute if entity @s[scores={timer=30}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The "},{"text":"Light Barrier","color":"aqua"},{"text":" is dispelled! Hurry!"}]

execute if entity @s[scores={timer=60..80}] run particle minecraft:entity_effect -619 24 1974 1 1 0 1 0 normal
execute if entity @s[scores={timer=81..}] run tp @a -524 20 1974 -90 -40
execute if entity @s[scores={timer=91..}] run fill -518 43 1974 -512 47 1974 minecraft:air replace minecraft:yellow_stained_glass
execute if entity @s[scores={timer=91..}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=91..}] run fill -616 23 1975 -618 23 1973 minecraft:air
execute if entity @s[scores={timer=91..}] run fill -619 17 1974 -619 17 1974 minecraft:gold_block
execute if entity @s[scores={timer=91..}] run tp @s -619 19 1974
execute if entity @s[scores={timer=91..}] run tag @a remove LightBarrier
