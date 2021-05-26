scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..50}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..50}] run tp @a @s

#Steps
execute if entity @s[scores={lifetime=1}] run tp @s 973 80 -1164 0 90
#Room
execute if entity @s[scores={lifetime=1}] run kill @e[type=armor_stand,tag=TwistedLadder]
execute if entity @s[scores={lifetime=1}] run fill 970 99 -1181 970 99 -1181 minecraft:redstone_block
execute if entity @s[scores={lifetime=1}] run fill 969 99 -1168 969 99 -1168 minecraft:redstone_block
execute if entity @s[scores={lifetime=1}] run fill 947 96 -1201 947 96 -1201 minecraft:redstone_block
#Hallway
execute if entity @s[scores={lifetime=1}] run fill 937 85 -1191 937 85 -1191 minecraft:redstone_block
execute if entity @s[scores={lifetime=2..48}] run tp @s ~ ~-.5 ~ ~-1.956 90
execute if entity @s[scores={lifetime=49..50}] run tp @s ~ ~-.5 ~ ~ 90

execute if entity @s[scores={lifetime=51..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=51..}] run tp @a 946 84 -1164 0 0
execute if entity @s[scores={lifetime=51..}] run kill @s
