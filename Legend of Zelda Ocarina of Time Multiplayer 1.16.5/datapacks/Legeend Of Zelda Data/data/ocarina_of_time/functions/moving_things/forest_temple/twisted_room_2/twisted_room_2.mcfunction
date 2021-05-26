scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=1..122}] run gamemode spectator @a
execute if entity @s[scores={lifetime=1}] run kill @e[type=arrow]
execute if entity @s[scores={lifetime=1}] run fill 935 87 -1154 935 87 -1154 minecraft:light_gray_shulker_box
execute if entity @s[scores={lifetime=1..122}] run tp @a @s

#Steps
execute if entity @s[scores={lifetime=1..14}] run tp @s 946 84 -1167 180 0
execute if entity @s[scores={lifetime=15..61}] run tp @s ~ ~ ~-.5 180 0
execute if entity @s[scores={lifetime=62..75}] run tp @s 946 84 -1191 180 0
execute if entity @s[scores={lifetime=70}] run fill 937 85 -1192 937 85 -1192 minecraft:redstone_block
execute if entity @s[scores={lifetime=70}] run fill 957 85 -1176 957 85 -1176 minecraft:air
execute if entity @s[scores={lifetime=76..122}] run tp @s ~ ~ ~.5 180 0

execute if entity @s[scores={lifetime=123..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=123..}] run tp @a 946 84 -1154 90 0
execute if entity @s[scores={lifetime=123..}] run kill @s
