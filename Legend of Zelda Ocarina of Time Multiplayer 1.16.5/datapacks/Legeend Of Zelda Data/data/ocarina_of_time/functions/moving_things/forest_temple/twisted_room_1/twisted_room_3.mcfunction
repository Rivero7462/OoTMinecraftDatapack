scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..48}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..48}] run tp @a @s
execute if entity @s[scores={lifetime=1}] run fill 849 84 -1164 849 84 -1164 minecraft:redstone_torch
execute at @a if entity @s[scores={lifetime=2}] run playsound minecraft:block.wooden_door.close block @a ~ ~ ~

#Steps
execute if entity @s[scores={lifetime=1}] run tp @s 815 51 -1181 180 -90
#Room
execute if entity @s[scores={lifetime=1}] run kill @e[type=armor_stand,tag=TwistedLadder]
execute if entity @s[scores={lifetime=1}] run fill 847 94 -1200 847 94 -1200 minecraft:redstone_block
#Hallway
execute if entity @s[scores={lifetime=1}] run fill 842 91 -1190 842 91 -1190 minecraft:redstone_block
execute if entity @s[scores={lifetime=2..48}] run tp @s ~ ~.5 ~ ~-1.956 -90

execute if entity @s[scores={lifetime=49..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=49..}] run tp @a 849 84 -1191 180 0
execute if entity @s[scores={lifetime=49..}] run kill @s
