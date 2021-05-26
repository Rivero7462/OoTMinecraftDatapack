#Pink
execute unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~-2 ~ ~ minecraft:air if block ~-.33 ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_forward_1
execute unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~ ~ ~2 minecraft:air if block ~ ~ ~.33 minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_forward_2
execute unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~2 ~ ~ minecraft:air if block ~.33 ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_forward_3
execute unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~ ~ ~-2 minecraft:air if block ~ ~ ~-.33 minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_forward_4

#Backwards
execute if block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~1 ~ ~ minecraft:air unless block ~-2 ~ ~ minecraft:air if block ~-.33 ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_back_1
execute if block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~ ~ ~-1 minecraft:air unless block ~ ~ ~2 minecraft:air if block ~ ~ ~.33 minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_back_2
execute if block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~-1 ~ ~ minecraft:air unless block ~2 ~ ~ minecraft:air if block ~.33 ~ ~ minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_back_3
execute if block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:nether_quartz_ore if block ~ ~ ~1 minecraft:air unless block ~ ~ ~-2 minecraft:air if block ~ ~ ~-.33 minecraft:nether_quartz_ore run function ocarina_of_time:moving_things/spirit_temple/sun_push_block/pink_back_4
