scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1.5
execute if entity @s[scores={timer=1..30}] run particle minecraft:flame ~ ~-1.9 ~ .3 0 .3 0 2 normal
execute if entity @s[scores={timer=31}] run tag @s remove AppearSpot
execute if entity @s[scores={timer=31}] run scoreboard players set @s timer 0
