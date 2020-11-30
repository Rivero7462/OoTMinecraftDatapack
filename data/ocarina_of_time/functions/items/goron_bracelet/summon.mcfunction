execute if entity @s[tag=!Holding] if block ~ ~ ~ minecraft:tnt run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Bomb"],Small:1b,NoGravity:1b,ShowArms:0b,Invisible:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:"tnt",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=!Holding] if block ~ ~ ~ minecraft:tnt run tag @a add Holding
execute if block ~ ~ ~ minecraft:tnt run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:tnt

execute if entity @s[tag=!Holding] if block ~.33 ~ ~ minecraft:tnt run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Bomb"],Small:1b,NoGravity:1b,ShowArms:0b,Invisible:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:"tnt",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=!Holding] if block ~ ~ ~.33 minecraft:tnt run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Bomb"],Small:1b,NoGravity:1b,ShowArms:0b,Invisible:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:"tnt",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=!Holding] if block ~-.33 ~ ~ minecraft:tnt run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Bomb"],Small:1b,NoGravity:1b,ShowArms:0b,Invisible:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:"tnt",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=!Holding] if block ~ ~ ~-.33 minecraft:tnt run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Bomb"],Small:1b,NoGravity:1b,ShowArms:0b,Invisible:1b,Rotation:[90f],ArmorItems:[{},{},{},{id:"tnt",Count:1b}],DisabledSlots:4144959}

execute if entity @s[tag=!Holding] if block ~.33 ~ ~ minecraft:tnt run tag @a add Holding
execute if entity @s[tag=!Holding] if block ~ ~ ~.33 minecraft:tnt run tag @a add Holding
execute if entity @s[tag=!Holding] if block ~-.33 ~ ~ minecraft:tnt run tag @a add Holding
execute if entity @s[tag=!Holding] if block ~ ~ ~-.33 minecraft:tnt run tag @a add Holding

execute if block ~.33 ~ ~ minecraft:tnt run fill ~1 ~ ~ ~1 ~ ~ minecraft:air replace minecraft:tnt
execute if block ~ ~ ~.33 minecraft:tnt run fill ~ ~ ~1 ~ ~ ~1 minecraft:air replace minecraft:tnt
execute if block ~-.33 ~ ~ minecraft:tnt run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:air replace minecraft:tnt
execute if block ~ ~ ~-.33 minecraft:tnt run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:air replace minecraft:tnt
