tp @s ~ ~ ~ facing entity @p

#Locate
execute if entity @a[distance=..15] run tag @s add Locate
execute if entity @s[tag=Locate] unless entity @a[distance=..15] run tag @s remove Locate
execute if entity @s[tag=Attack] unless entity @a[distance=..15] run tag @s remove Attack

execute if entity @s[tag=Locate] anchored eyes positioned ^ ^ ^1 anchored feet run function ocarina_of_time:enemies/ray_cast

#Attack
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={timer=1}] run fill ~ ~ ~ ~ ~ ~ minecraft:light_gray_shulker_box
execute if entity @s[scores={timer=1}] run summon minecraft:armor_stand ~ ~ ~ {Tags:["EyeFire","Invisible"],Marker:1b,Invisible:1b,NoGravity:1b}

execute if entity @s[scores={timer=15}] run fill ~ ~ ~ ~ ~ ~ minecraft:white_shulker_box

execute if entity @s[scores={timer=300..}] run scoreboard players set @s timer 0

execute unless entity @s[tag=Attack] run fill ~ ~ ~ ~ ~ ~ minecraft:white_shulker_box

#Kill
execute if entity @s[scores={timer=1..15}] if entity @e[type=arrow,distance=..1] run fill ~ ~ ~ ~ ~ ~ minecraft:stone_bricks
execute if entity @s[scores={timer=1..15}] if entity @e[type=arrow,distance=..1] run kill @s
execute as @e[type=arrow,distance=..1] run kill @s
