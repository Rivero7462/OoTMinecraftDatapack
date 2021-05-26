#Left
execute if block ~ ~ ~1 minecraft:dead_bubble_coral_block if block ~-1 ~ ~ minecraft:dead_bubble_coral_block if block ~-1 ~ ~1 minecraft:dead_bubble_coral_block run summon minecraft:armor_stand ~ ~2 ~ {Tags:["SilverRock"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:107}}],DisabledSlots:4144959}
execute if block ~ ~ ~1 minecraft:dead_bubble_coral_block if block ~-1 ~ ~ minecraft:dead_bubble_coral_block if block ~-1 ~ ~1 minecraft:dead_bubble_coral_block run tag @a add HoldSilverRock
execute if block ~ ~ ~1 minecraft:dead_bubble_coral_block if block ~-1 ~ ~ minecraft:dead_bubble_coral_block if block ~-1 ~ ~1 minecraft:dead_bubble_coral_block run fill ~ ~ ~ ~-1 ~1 ~1 minecraft:air

#Right
execute if block ~ ~ ~-1 minecraft:dead_bubble_coral_block if block ~-1 ~ ~ minecraft:dead_bubble_coral_block if block ~-1 ~ ~-1 minecraft:dead_bubble_coral_block run summon minecraft:armor_stand ~ ~2 ~ {Tags:["SilverRock"],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:107}}],DisabledSlots:4144959}
execute if block ~ ~ ~-1 minecraft:dead_bubble_coral_block if block ~-1 ~ ~ minecraft:dead_bubble_coral_block if block ~-1 ~ ~-1 minecraft:dead_bubble_coral_block run tag @a add HoldSilverRock
execute if block ~ ~ ~-1 minecraft:dead_bubble_coral_block if block ~-1 ~ ~ minecraft:dead_bubble_coral_block if block ~-1 ~ ~-1 minecraft:dead_bubble_coral_block run fill ~ ~ ~ ~-1 ~1 ~-1 minecraft:air
