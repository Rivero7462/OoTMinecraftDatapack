fill 1544 71 2294 1542 73 2292 minecraft:air replace minecraft:barrier
scoreboard players add @e[type=armor_stand,tag=Frog1] timer 1
tag @a add NoOcarina
execute if entity @e[type=armor_stand,tag=Frog1,scores={timer=20}] as @e[type=armor_stand,tag=Frog1] unless entity @s[tag=Grow] run tp @s 1549 68.3 2294 0 ~
execute if entity @e[type=armor_stand,tag=Frog1,scores={timer=20}] as @e[type=armor_stand,tag=Frog1] if entity @s[tag=Grow] run tp @s 1549 67.6 2294 0 ~
execute if entity @e[type=armor_stand,tag=Frog1,scores={timer=20}] as @e[type=armor_stand,tag=Frog2] at @s run tp @s ~ 65 ~
execute if entity @e[type=armor_stand,tag=Frog1,scores={timer=20}] as @e[type=armor_stand,tag=Frog3] at @s run tp @s ~ 65 ~
execute if entity @e[type=armor_stand,tag=Frog1,scores={timer=20}] as @e[type=armor_stand,tag=Frog4] at @s run tp @s ~ 65 ~
execute if entity @e[type=armor_stand,tag=Frog1,scores={timer=20}] as @e[type=armor_stand,tag=Frog5] at @s run tp @s ~ 65 ~
