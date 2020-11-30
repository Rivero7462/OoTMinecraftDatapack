#Silver
execute if block ~ ~ ~-.33 minecraft:dead_bubble_coral_block if block ~ ~1 ~-.33 minecraft:dead_bubble_coral_block positioned ~ ~ ~-1 run function ocarina_of_time:items/gauntlets/north
execute if block ~ ~ ~.33 minecraft:dead_bubble_coral_block if block ~ ~1 ~.33 minecraft:dead_bubble_coral_block positioned ~ ~ ~1 run function ocarina_of_time:items/gauntlets/south
execute if block ~.33 ~ ~ minecraft:dead_bubble_coral_block if block ~.33 ~1 ~ minecraft:dead_bubble_coral_block positioned ~1 ~ ~ run function ocarina_of_time:items/gauntlets/east
execute if block ~-.33 ~ ~ minecraft:dead_bubble_coral_block if block ~-.33 ~1 ~ minecraft:dead_bubble_coral_block positioned ~-1 ~ ~ run function ocarina_of_time:items/gauntlets/west
