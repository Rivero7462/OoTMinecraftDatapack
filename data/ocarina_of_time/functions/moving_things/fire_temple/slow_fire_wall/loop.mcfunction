execute if entity @s[tag=Main] run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/main

execute if entity @s[tag=Main] at @s rotated as @s run tp @e[type=armor_stand,tag=SlowFireWall1] ^4.3 ^ ^ ~ 0
execute if entity @s[tag=Main] at @s rotated as @s run tp @e[type=armor_stand,tag=SlowFireWall2] ^8.6 ^ ^ ~ 0
execute if entity @s[tag=Main] at @s rotated as @s run tp @e[type=armor_stand,tag=SlowFireWall3] ^-4.3 ^ ^ ~ 0
execute if entity @s[tag=Main] at @s rotated as @s run tp @e[type=armor_stand,tag=SlowFireWall4] ^-8.6 ^ ^ ~ 0

#Hurt
execute if entity @s[tag=Main,tag=Hurt] as @e[type=armor_stand,tag=SlowFireWall,tag=Main] at @s run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/main
execute if entity @s[tag=Main,tag=Hurt] as @e[type=armor_stand,tag=SlowFireWall,tag=Main] at @s run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/main
execute if entity @s[tag=Main,tag=Hurt] as @e[type=armor_stand,tag=SlowFireWall,tag=Main] at @s run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/main
execute if entity @s[tag=Main,tag=Hurt] as @e[type=armor_stand,tag=SlowFireWall,tag=Main] at @s run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/main
execute if entity @s[tag=Main,tag=Hurt] as @e[type=armor_stand,tag=SlowFireWall,tag=Main] at @s run function ocarina_of_time:moving_things/fire_temple/slow_fire_wall/main
execute if entity @s[tag=Main,tag=Hurt] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Main,tag=Hurt,scores={lifetime=1}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 2 0 true
execute if entity @s[tag=Main,tag=Hurt,scores={lifetime=1}] as @e[type=armor_stand,tag=SlowFireWall] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if entity @s[tag=Main,tag=Hurt,scores={lifetime=20..}] as @e[type=armor_stand,tag=SlowFireWall] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:130}}]}
execute if entity @s[tag=Main,tag=Hurt,scores={lifetime=20..}] run tag @s remove Hurt
execute if entity @s[tag=Main,scores={lifetime=20..}] run scoreboard players set @s lifetime 0
