execute if entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] at @a run playsound minecraft:block.wet_grass.fall hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1}] run fill 1650 59 1260 1652 62 1262 minecraft:blue_concrete
execute if entity @s[scores={timer=1}] run fill 1649 59 1259 1653 59 1263 minecraft:water replace minecraft:glass_pane
execute if entity @s[scores={timer=1}] run fill 1649 60 1259 1653 62 1263 minecraft:air replace minecraft:glass_pane

execute if entity @s[scores={timer=140}] run fill 1650 59 1260 1652 62 1262 minecraft:cyan_concrete
execute if entity @s[scores={timer=180}] run fill 1650 59 1260 1652 62 1262 minecraft:magenta_concrete

execute if entity @s[scores={timer=220..}] run fill 1650 59 1260 1652 62 1262 minecraft:red_concrete
execute if entity @s[scores={timer=220..}] run fill 1649 59 1259 1653 59 1263 minecraft:glass_pane[waterlogged=true] replace minecraft:water
execute if entity @s[scores={timer=220..}] run fill 1649 60 1259 1653 62 1263 minecraft:glass_pane replace minecraft:air
execute if entity @s[scores={timer=220..}] run tag @s remove Stun
execute if entity @s[scores={timer=220..}] run scoreboard players set @s timer 0
