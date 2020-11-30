#North
execute if block ~ ~ ~-.33 minecraft:light_blue_concrete positioned ~ ~ ~-1 run function ocarina_of_time:moving_things/ice_cavern/ice_block/north

#South
execute if block ~ ~ ~.33 minecraft:light_blue_concrete positioned ~ ~ ~1 run function ocarina_of_time:moving_things/ice_cavern/ice_block/south

#East
execute if block ~.33 ~ ~ minecraft:light_blue_concrete positioned ~1 ~ ~ run function ocarina_of_time:moving_things/ice_cavern/ice_block/east

#West
execute if block ~-.33 ~ ~ minecraft:light_blue_concrete positioned ~-1 ~ ~ run function ocarina_of_time:moving_things/ice_cavern/ice_block/west
