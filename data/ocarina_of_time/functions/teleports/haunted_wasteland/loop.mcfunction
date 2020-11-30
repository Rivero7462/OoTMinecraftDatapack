#Gerudo Fortress
execute at @s if block ~ ~-4 ~ minecraft:polished_granite run function ocarina_of_time:teleports/haunted_wasteland/gerudo_fortress/to
execute at @s if block ~ ~-3 ~ minecraft:polished_granite run function ocarina_of_time:teleports/haunted_wasteland/gerudo_fortress/to
execute if entity @s[x=1908,y=40,z=250,dx=0,dz=0] run function ocarina_of_time:teleports/haunted_wasteland/gerudo_fortress/from

#Desert Colossus
execute at @s if block ~ ~-4 ~ minecraft:polished_andesite run function ocarina_of_time:teleports/haunted_wasteland/desert_colossus/to
execute at @s if block ~ ~-3 ~ minecraft:polished_andesite run function ocarina_of_time:teleports/haunted_wasteland/desert_colossus/to
execute if entity @s[x=1910,y=40,z=250,dx=0,dz=0] run function ocarina_of_time:teleports/haunted_wasteland/desert_colossus/from

#Failures
execute if entity @s[tag=Adult] at @s if block ~ ~-3 ~ minecraft:polished_diorite run function ocarina_of_time:teleports/haunted_wasteland/wrong_way
execute if entity @s[tag=Adult] at @s if block ~ ~-4 ~ minecraft:polished_diorite run function ocarina_of_time:teleports/haunted_wasteland/wrong_way
execute if entity @s[tag=Adult] at @s if block ~ ~-5 ~ minecraft:polished_diorite run function ocarina_of_time:teleports/haunted_wasteland/wrong_way
execute unless entity @s[tag=Adult] at @s if block ~ ~-3 ~ minecraft:polished_diorite run function ocarina_of_time:teleports/haunted_wasteland/wrong_way_2
execute unless entity @s[tag=Adult] at @s if block ~ ~-4 ~ minecraft:polished_diorite run function ocarina_of_time:teleports/haunted_wasteland/wrong_way_2
execute unless entity @s[tag=Adult] at @s if block ~ ~-5 ~ minecraft:polished_diorite run function ocarina_of_time:teleports/haunted_wasteland/wrong_way_2

#Quicksand
execute at @s if block ~ ~1 ~ minecraft:light_blue_glazed_terracotta run function ocarina_of_time:teleports/haunted_wasteland/wrong_way
