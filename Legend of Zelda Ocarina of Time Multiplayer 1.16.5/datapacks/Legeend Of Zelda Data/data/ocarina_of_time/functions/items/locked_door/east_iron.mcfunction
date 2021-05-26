execute at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1 1
fill ~1 ~ ~ ~1 ~ ~ minecraft:air
fill ~1 ~-1 ~ ~1 ~-1 ~ minecraft:stone_pressure_plate
fill ~-1 ~-1 ~ ~-1 ~-1 ~ minecraft:stone_pressure_plate
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:iron_door[half=lower,hinge=left,facing=east,open=true]
fill ~ ~ ~ ~ ~ ~ minecraft:iron_door[facing=east,half=upper,hinge=left,open=true]
