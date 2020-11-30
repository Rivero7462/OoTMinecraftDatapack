execute at @a run playsound minecraft:block.wooden_door.open block @a ~ ~ ~ 1 1
fill ~-1 ~ ~ ~-1 ~ ~ minecraft:air
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:acacia_door[half=lower,hinge=left,facing=west,open=true]
fill ~ ~ ~ ~ ~ ~ minecraft:acacia_door[facing=west,half=upper,hinge=left,open=true]
