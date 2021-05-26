execute at @a if entity @a[x=897,y=23,z=-1156,dx=2,dy=34,dz=2] if block ~ ~-1 ~ minecraft:stone_bricks if block 893 52 -1159 minecraft:redstone_block run function ocarina_of_time:moving_things/forest_temple/elevator
execute unless entity @s[tag=FixedElevator] if block 893 52 -1159 minecraft:redstone_block if block 901 53 -1152 minecraft:gold_block run fill 897 59 -1154 899 40 -1156 minecraft:air
execute unless entity @s[tag=FixedElevator] if block 893 52 -1159 minecraft:redstone_block if block 901 53 -1152 minecraft:gold_block run clone 891 46 -1154 893 50 -1156 897 55 -1156
execute unless entity @s[tag=FixedElevator] if block 893 52 -1159 minecraft:redstone_block if block 901 53 -1152 minecraft:gold_block run tag @s add FixedElevator
execute unless entity @a[x=897,y=23,z=-1156,dx=2,dy=34,dz=2] run scoreboard players set @s lifetime 0
