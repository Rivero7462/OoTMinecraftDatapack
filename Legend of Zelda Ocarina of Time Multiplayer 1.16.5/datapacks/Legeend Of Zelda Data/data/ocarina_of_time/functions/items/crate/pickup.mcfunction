execute if entity @s[tag=!Holding] unless entity @e[type=armor_stand,tag=Crate] if block ~.33 ~ ~ minecraft:oak_planks run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Crate"],Small:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"oak_planks",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=!Holding] unless entity @e[type=armor_stand,tag=Crate] if block ~ ~ ~.33 minecraft:oak_planks run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Crate"],Small:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"oak_planks",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=!Holding] unless entity @e[type=armor_stand,tag=Crate] if block ~-.33 ~ ~ minecraft:oak_planks run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Crate"],Small:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"oak_planks",Count:1b}],DisabledSlots:4144959}
execute if entity @s[tag=!Holding] unless entity @e[type=armor_stand,tag=Crate] if block ~ ~ ~-.33 minecraft:oak_planks run summon minecraft:armor_stand ~ ~1.5 ~ {Tags:["Crate"],Small:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"oak_planks",Count:1b}],DisabledSlots:4144959}

execute if entity @s[tag=!Holding] if block ~.33 ~ ~ minecraft:oak_planks run tag @a add Holding
execute if entity @s[tag=!Holding] if block ~ ~ ~.33 minecraft:oak_planks run tag @a add Holding
execute if entity @s[tag=!Holding] if block ~-.33 ~ ~ minecraft:oak_planks run tag @a add Holding
execute if entity @s[tag=!Holding] if block ~ ~ ~-.33 minecraft:oak_planks run tag @a add Holding

execute if block ~.33 ~ ~ minecraft:oak_planks run fill ~ ~ ~ ~1 ~ ~ minecraft:air replace minecraft:oak_planks
execute if block ~ ~ ~.33 minecraft:oak_planks run fill ~ ~ ~ ~ ~ ~1 minecraft:air replace minecraft:oak_planks
execute if block ~-.33 ~ ~ minecraft:oak_planks run fill ~ ~ ~ ~-1 ~ ~ minecraft:air replace minecraft:oak_planks
execute if block ~ ~ ~-.33 minecraft:oak_planks run fill ~ ~ ~ ~ ~ ~-1 minecraft:air replace minecraft:oak_planks
