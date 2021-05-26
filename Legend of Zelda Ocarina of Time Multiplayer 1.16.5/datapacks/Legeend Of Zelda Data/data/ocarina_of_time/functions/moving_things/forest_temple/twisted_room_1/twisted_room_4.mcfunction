scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..50}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1..50}] run tp @a @s

#Steps
execute if entity @s[scores={lifetime=1}] run tp @s 815 75 -1162 0 90
#Room
execute if entity @s[scores={lifetime=1}] run kill @e[type=armor_stand,tag=TwistedLadder]
execute if entity @s[scores={lifetime=1}] run fill 851 94 -1200 851 94 -1200 minecraft:redstone_block
execute if entity @s[scores={lifetime=1}] unless block 853 79 -1211 minecraft:gold_block run clone 853 79 -1212 853 79 -1212 853 79 -1204
execute if entity @s[scores={lifetime=1}] if block 853 79 -1211 minecraft:gold_block run clone 853 79 -1210 853 79 -1210 853 79 -1204

#Hallway
execute if entity @s[scores={lifetime=1}] run fill 842 91 -1191 842 91 -1191 minecraft:redstone_block
execute if entity @s[scores={lifetime=2..48}] run tp @s ~ ~-.5 ~ ~1.956 90
execute if entity @s[scores={lifetime=49..50}] run tp @s ~ ~-.5 ~ ~ 90

execute if entity @s[scores={lifetime=51..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=51..}] run tp @a 849 84 -1164 0 0
execute if entity @s[scores={lifetime=51..}] run kill @s
