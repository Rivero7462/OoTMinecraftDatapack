execute if entity @s[tag=Stun] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] at @a run playsound minecraft:block.wet_grass.fall hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1}] run fill 1674 21 1267 1672 18 1265 minecraft:blue_concrete
execute if entity @s[scores={timer=1}] run fill 1671 21 1268 1675 21 1264 minecraft:air replace minecraft:glass_pane
execute if entity @s[scores={timer=1}] run fill 1671 18 1268 1675 20 1264 minecraft:water replace minecraft:glass_pane

execute if entity @s[scores={timer=140}] run fill 1672 21 1265 1674 18 1267 minecraft:cyan_concrete
execute if entity @s[scores={timer=180}] run fill 1672 21 1265 1674 18 1267 minecraft:magenta_concrete

execute if entity @s[scores={timer=220..}] run fill 1674 18 1265 1672 21 1267 minecraft:red_concrete
execute if entity @s[scores={timer=220..}] run fill 1675 18 1264 1671 20 1268 minecraft:glass_pane[waterlogged=true] replace minecraft:water
execute if entity @s[scores={timer=220..}] run fill 1675 21 1264 1671 21 1268 minecraft:glass_pane replace minecraft:air
execute if entity @s[scores={timer=220..}] run tag @s remove Stun
execute if entity @s[scores={timer=220..}] run scoreboard players set @s timer 0
