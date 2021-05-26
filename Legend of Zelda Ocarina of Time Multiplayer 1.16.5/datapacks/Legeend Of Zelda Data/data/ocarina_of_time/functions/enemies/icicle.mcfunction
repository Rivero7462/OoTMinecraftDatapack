execute positioned ~ ~-10 ~ if entity @a[dy=12] run tag @s add Fall

execute if entity @s[tag=Fall] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ .2 1.5
execute if entity @s[scores={timer=5}] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ .2 1.5
execute if entity @s[scores={timer=10}] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ .2 1.5
execute if entity @s[scores={timer=10..}] run tp @s ~ ~-.5 ~

execute if entity @s[scores={timer=12..}] unless block ~ ~2 ~ minecraft:air run playsound minecraft:block.glass.break ambient @a ~ ~ ~ .2 .8
execute if entity @s[scores={timer=12..}] unless block ~ ~2 ~ minecraft:air run kill @s

execute if entity @a[distance=..1.5] run effect give @a minecraft:wither 1 1 true
