#Shadow
execute as @e[type=armor_stand,tag=DarkLink] at @s unless entity @s[tag=Appear] unless entity @s[tag=Attack] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/shadow

#Appear
execute at @a if entity @a[x=1132,y=66,z=3093,dx=4,dz=4] if block ~ ~-1 ~ minecraft:sand run tag @e[type=armor_stand,tag=DarkLink,tag=!Attack] add Appear
execute as @e[type=armor_stand,tag=DarkLink,tag=Appear] unless entity @s[tag=Wait] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/appear

#Wait
execute as @e[type=armor_stand,tag=DarkLink,tag=Wait] at @s if entity @a[distance=..5] run tag @s add Attack
execute as @e[type=armor_stand,tag=DarkLink,tag=Attack] at @s run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/attack
