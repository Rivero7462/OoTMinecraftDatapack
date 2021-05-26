execute if entity @s[scores={timer=1}] at @a facing -33 135 857 run tp @a ~ ~ ~ ~ ~
execute if entity @s[scores={timer=1}] run fill -33 136 857 -33 136 857 minecraft:stone_pressure_plate
execute if entity @s[scores={timer=1}] at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
