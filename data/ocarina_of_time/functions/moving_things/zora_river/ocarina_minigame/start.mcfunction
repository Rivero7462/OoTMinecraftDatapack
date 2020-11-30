tag @a add NoTeleport
fill 1543 71 2294 1543 71 2294 minecraft:barrier
fill 1543 73 2294 1543 73 2294 minecraft:barrier
fill 1544 71 2293 1544 71 2293 minecraft:barrier
fill 1544 73 2293 1544 73 2293 minecraft:barrier
fill 1542 71 2293 1542 71 2293 minecraft:barrier
fill 1542 73 2293 1542 73 2293 minecraft:barrier
fill 1543 73 2292 1543 73 2292 minecraft:barrier
execute unless entity @s[tag=Grow] run tp @s 1548 72.3 2296 135 ~
execute if entity @s[tag=Grow] run tp @s 1548 71.6 2296 135 ~
execute as @e[type=armor_stand,tag=Frog2] at @s unless entity @s[tag=Grow] run tp @s ~ 70.3 ~
execute as @e[type=armor_stand,tag=Frog2] at @s if entity @s[tag=Grow] run tp @s ~ 69.6 ~
execute as @e[type=armor_stand,tag=Frog3] at @s unless entity @s[tag=Grow] run tp @s ~ 71.3 ~
execute as @e[type=armor_stand,tag=Frog3] at @s if entity @s[tag=Grow] run tp @s ~ 70.6 ~
execute as @e[type=armor_stand,tag=Frog4] at @s unless entity @s[tag=Grow] run tp @s ~ 71.3 ~
execute as @e[type=armor_stand,tag=Frog4] at @s if entity @s[tag=Grow] run tp @s ~ 70.6 ~
execute as @e[type=armor_stand,tag=Frog5] at @s unless entity @s[tag=Grow] run tp @s ~ 72.3 ~
execute as @e[type=armor_stand,tag=Frog5] at @s if entity @s[tag=Grow] run tp @s ~ 71.6 ~
tp @a 1543 71 2293
