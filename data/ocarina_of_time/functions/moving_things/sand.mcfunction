execute as @e[type=falling_block,tag=!FakeWall,nbt={BlockState:{Name:"minecraft:sand"}}] run data merge entity @s {NoGravity:1b,Time:10}

execute as @e[type=falling_block,tag=!FakeWall,nbt={BlockState:{Name:"minecraft:sand"}}] at @s run tag @s add Wait

execute as @e[type=falling_block,tag=!FakeWall,nbt={BlockState:{Name:"minecraft:sand"}},tag=Wait] run scoreboard players add @s timer 1
execute as @e[type=falling_block,tag=!FakeWall,nbt={BlockState:{Name:"minecraft:sand"}},scores={timer=1..}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:smooth_sandstone
execute as @e[type=falling_block,tag=!FakeWall,nbt={BlockState:{Name:"minecraft:sand"}},scores={timer=1..}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:smooth_sandstone
execute as @e[type=falling_block,tag=!FakeWall,nbt={BlockState:{Name:"minecraft:sand"}},scores={timer=2..}] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:sand replace minecraft:smooth_sandstone
execute as @e[type=falling_block,tag=!FakeWall,nbt={BlockState:{Name:"minecraft:sand"}},scores={timer=3..}] at @s run kill @s
