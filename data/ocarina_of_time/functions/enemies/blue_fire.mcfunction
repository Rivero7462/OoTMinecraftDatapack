execute if block ~ ~.3 ~ minecraft:air run tp @s ~ ~-.1 ~

scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run playsound minecraft:block.fire.ambient ambient @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1..}] run particle minecraft:soul_fire_flame ~ ~.6 ~ .5 .1 .5 0 5 normal
execute if entity @s[scores={timer=20}] run fill ~-1 ~ ~-1 ~2 ~3 ~2 minecraft:air replace minecraft:red_stained_glass
execute if entity @s[scores={timer=20}] run fill ~-1 ~ ~-1 ~2 ~3 ~2 minecraft:air replace minecraft:red_stained_glass
execute if entity @s[scores={timer=50..}] run kill @s
