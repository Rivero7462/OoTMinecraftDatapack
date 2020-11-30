execute store result score @s time run clear @a minecraft:cod 0
execute store result score @s ArrowCount run clear @a minecraft:salmon 0
scoreboard players operation @s ArrowCount += @s time
execute if entity @s[scores={ArrowCount=2..}] run clear @a minecraft:cod 1
execute store result score @s time run clear @a minecraft:cod 0
execute store result score @s ArrowCount run clear @a minecraft:salmon 0
scoreboard players operation @s ArrowCount += @s time
execute if entity @s[scores={ArrowCount=2..}] run clear @a minecraft:salmon 1
