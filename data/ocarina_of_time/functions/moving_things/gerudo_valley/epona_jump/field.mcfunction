scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..10}] run gamemode spectator @a
execute if entity @s[scores={timer=1..40}] run tp @a 376 64 2041 180 -90
execute if entity @s[scores={timer=1..10}] run tp @s 370 73 2041 -90 0

execute if entity @s[scores={timer=11}] run playsound minecraft:entity.horse.jump ambient @a ~ ~ ~ .5 1
execute if entity @s[scores={timer=11..40}] run tp @s ~.4 73 ~ -90 0
execute if entity @s[scores={timer=41}] run playsound minecraft:entity.horse.land ambient @a ~ ~ ~ .5 1
execute if entity @s[scores={timer=41}] run gamemode adventure @a
execute if entity @s[scores={timer=41}] run tp @s 384 73 2041 -90 0
execute if entity @s[scores={timer=41}] run tp @a 383 73 2041 -90 0
execute if entity @s[scores={timer=41..}] run tag @a remove JumpField
execute if entity @s[scores={timer=41..}] run scoreboard players reset @s timer
