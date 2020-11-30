#Fan 1
scoreboard players add @s[tag=Fan1] time 1
execute if entity @s[scores={time=350..}] run scoreboard players set @s time 0

execute if entity @s[tag=Fan1,scores={time=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:114}}]}
execute if entity @s[tag=Fan1,scores={time=1}] run data merge entity @e[type=armor_stand,tag=Fan2,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:114}}]}
execute if entity @s[tag=Fan1,scores={time=1}] run data merge entity @e[type=armor_stand,tag=Fan3,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:114}}]}
execute if entity @s[tag=Fan1,scores={time=1}] run data merge entity @e[type=armor_stand,tag=Fan4,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:114}}]}
execute if entity @s[tag=Fan1,scores={time=151}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=Fan1,scores={time=151}] run data merge entity @e[type=armor_stand,tag=Fan2,limit=1] {ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=Fan1,scores={time=151}] run data merge entity @e[type=armor_stand,tag=Fan3,limit=1] {ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=Fan1,scores={time=151}] run data merge entity @e[type=armor_stand,tag=Fan4,limit=1] {ArmorItems:[{},{},{},{}]}

#Raycast
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:moving_things/ganon_castle_underground/fan/ray_cast

execute if entity @s[tag=Fan1,scores={time=1..150}] unless entity @a[nbt={Inventory:[{Slot:100b,tag:{IronBoots:1b}}]}] at @a as @e[type=armor_stand,tag=Fan,tag=Blow] rotated as @s run tp @a ^ ^ ^.35
execute if entity @s[tag=Fan1,scores={time=1..150}] if entity @a[nbt={Inventory:[{Slot:100b,tag:{HoverBoots:1b}}]}] at @a as @e[type=armor_stand,tag=Fan,tag=Blow] rotated as @s run tp @a ^ ^ ^.2
