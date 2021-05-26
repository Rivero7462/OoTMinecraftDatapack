scoreboard players add @e[type=armor_stand,tag=Rock1] timer 1

execute unless entity @e[type=armor_stand,tag=Rock1] run summon minecraft:armor_stand -580.5 68.75 -585.88 {NoGravity:1b,ShowArms:1b,Invisible:1b,Rotation:[-90f],ArmorItems:[{},{},{},{}],HandItems:[{id:"minecraft:grass_path",Count:1},{}],DisabledSlots:4144959,Pose:{Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},Tags:["Rock1","Rock"]}
execute as @e[type=armor_stand,tag=Rock1] at @s if entity @s[scores={timer=1..35}] run tp @s ~-.2 ~ ~
execute as @e[type=armor_stand,tag=Rock1] at @s if entity @s[scores={timer=36..70}] run tp @s ~ ~ ~.2
execute as @e[type=armor_stand,tag=Rock1] at @s if entity @s[scores={timer=71..105}] run tp @s ~.2 ~ ~
execute as @e[type=armor_stand,tag=Rock1] at @s if entity @s[scores={timer=106..140}] run tp @s ~ ~ ~-.2
execute as @e[type=armor_stand,tag=Rock1] at @s if entity @s[scores={timer=140..}] run scoreboard players set @s timer 0
