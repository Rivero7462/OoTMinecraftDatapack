scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..48}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..48}] run tp @a @s
execute if entity @s[scores={lifetime=1}] run fill 946 84 -1164 946 84 -1164 minecraft:redstone_torch
execute at @a if entity @s[scores={lifetime=2}] run playsound minecraft:block.wooden_door.close block @a ~ ~ ~

#Steps
execute if entity @s[scores={lifetime=1}] run tp @s 973 56 -1182 180 -90
#Room
execute if entity @s[scores={lifetime=1}] run kill @e[type=armor_stand,tag=TwistedLadder]
execute if entity @s[scores={lifetime=1}] run fill 970 99 -1181 970 99 -1181 minecraft:redstone_block
execute if entity @s[scores={lifetime=1}] run fill 969 99 -1168 969 99 -1168 minecraft:redstone_block
execute if entity @s[scores={lifetime=1}] run fill 943 96 -1199 943 96 -1199 minecraft:redstone_block
#Hallway
execute if entity @s[scores={lifetime=1}] run fill 937 85 -1190 937 85 -1190 minecraft:redstone_block
execute if entity @s[scores={lifetime=2..48}] run tp @s ~ ~.5 ~ ~1.956 -90

execute if entity @s[scores={lifetime=49..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=49..}] run tp @a 946 84 -1191 180 0
execute if entity @s[scores={lifetime=49..}] run kill @s
