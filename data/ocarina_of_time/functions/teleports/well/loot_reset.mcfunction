#Pots
fill -14 59 1367 -14 59 1367 minecraft:flower_pot
fill -10 59 1367 -10 59 1367 minecraft:flower_pot
fill -41 59 1356 -41 59 1356 minecraft:flower_pot
fill -41 59 1355 -41 59 1355 minecraft:flower_pot
fill -41 59 1354 -41 59 1354 minecraft:flower_pot
fill -12 56 1308 -12 56 1308 minecraft:flower_pot
fill -17 36 1334 -17 36 1334 minecraft:flower_pot
fill -10 36 1339 -10 36 1339 minecraft:flower_pot
fill -2 36 1320 -2 36 1320 minecraft:flower_pot
fill -2 36 1321 -2 36 1321 minecraft:flower_pot
fill -2 36 1322 -2 36 1322 minecraft:flower_pot
fill -1 36 1323 -1 36 1323 minecraft:flower_pot
fill 0 36 1324 0 36 1324 minecraft:flower_pot
fill 4 36 1318 4 36 1318 minecraft:flower_pot
fill 4 36 1319 4 36 1319 minecraft:flower_pot
fill 4 36 1320 4 36 1320 minecraft:flower_pot
fill 5 36 1320 5 36 1320 minecraft:flower_pot
fill 6 36 1320 6 36 1320 minecraft:flower_pot

data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Blue Rupees
execute positioned -14 42 1333 if block ~ ~ ~ minecraft:dispenser{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute positioned -13 42 1330 if block ~ ~ ~ minecraft:dispenser{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute positioned -11 42 1333 if block ~ ~ ~ minecraft:dispenser{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute positioned -8 42 1334 if block ~ ~ ~ minecraft:dispenser{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air
execute positioned -10 42 1337 if block ~ ~ ~ minecraft:dispenser{Items:[]} run fill ~ ~ ~ ~ ~ ~ minecraft:air

#Compass
tag @a remove Compass
execute unless entity @a[nbt={Inventory:[{tag:{Compass:1b}}]}] unless entity @a[tag=Compass] if block -22 67 1345 minecraft:gold_block run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"Compass\"}"},Unbreakable:1b,Damage:21,HideFlags:63,Compass:1b}
execute unless entity @a[tag=Compass] if block -22 67 1345 minecraft:gold_block run tag @a add Compass
