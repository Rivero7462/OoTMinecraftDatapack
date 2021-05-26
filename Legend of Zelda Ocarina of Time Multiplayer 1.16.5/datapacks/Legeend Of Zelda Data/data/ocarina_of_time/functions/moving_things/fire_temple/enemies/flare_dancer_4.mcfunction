fill 3073 42 1917 3073 42 1917 minecraft:stone_pressure_plate
fill 3067 42 1926 3067 42 1926 minecraft:stone_pressure_plate
kill @e[type=wither_skeleton,tag=FlareDancer2]
kill @e[type=zombie,tag=FlareDancer2]
playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
function ocarina_of_time:music/fire_temple
clone 3061 39 1915 3061 39 1915 3064 44 1915 replace move
kill @e[type=area_effect_cloud,tag=FlarePoint]
fill 3064 34 1911 3064 34 1911 minecraft:gold_block
