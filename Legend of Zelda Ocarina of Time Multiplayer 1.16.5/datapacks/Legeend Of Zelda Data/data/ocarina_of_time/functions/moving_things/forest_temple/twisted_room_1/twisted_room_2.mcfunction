scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..122}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1}] run kill @e[type=arrow]
execute if entity @s[scores={lifetime=1}] run fill 849 88 -1165 849 88 -1165 minecraft:light_gray_shulker_box
execute if entity @s[scores={lifetime=1..122}] run tp @a @s

#Steps
execute if entity @s[scores={lifetime=1..14}] run tp @s 849 84 -1167 180 0
execute if entity @s[scores={lifetime=15..61}] run tp @s ~ ~ ~-.5 180 0
execute if entity @s[scores={lifetime=62..75}] run tp @s 849 84 -1191 180 0
execute if entity @s[scores={lifetime=70}] run kill @e[type=armor_stand,tag=TwistedLadder]
execute if entity @s[scores={lifetime=70}] run fill 842 91 -1191 842 91 -1191 minecraft:redstone_block
execute if entity @s[scores={lifetime=76..122}] run tp @s ~ ~ ~.5 180 0

execute if entity @s[scores={lifetime=123..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=123..}] run tp @a 849 85 -1156
execute if entity @s[scores={lifetime=123..}] run kill @s
