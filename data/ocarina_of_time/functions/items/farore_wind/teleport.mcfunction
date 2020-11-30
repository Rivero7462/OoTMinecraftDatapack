execute at @a run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Tags:["WarpPoint"],Invisible:1b,NoGravity:1b}
execute as @e[type=armor_stand,tag=WarpPoint] run function ocarina_of_time:items/farore_wind/teleport_2
