#Honey and Darling
scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..3}] run tp @s 494.75 70 1359.75 225 ~
execute if entity @s[scores={timer=1..3}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 495.25 70 1359.25 45 ~
execute if entity @s[scores={timer=4..6}] run tp @s 494.50 70 1359.50 270 ~
execute if entity @s[scores={timer=4..6}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 495.50 70 1359.50 90 ~
execute if entity @s[scores={timer=7..9}] run tp @s 494.75 70 1359.25 315 ~
execute if entity @s[scores={timer=7..9}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 495.25 70 1359.75 135 ~
execute if entity @s[scores={timer=10..12}] run tp @s 495.0 70 1359.0 360 ~
execute if entity @s[scores={timer=10..12}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 495.0 70 1360.0 180 ~
execute if entity @s[scores={timer=13..15}] run tp @s 495.25 70 1359.25 45 ~
execute if entity @s[scores={timer=13..15}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 494.75 70 1359.75 225 ~
execute if entity @s[scores={timer=16..18}] run tp @s 495.50 70 1359.50 90 ~
execute if entity @s[scores={timer=16..18}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 494.50 70 1359.50 270 ~
execute if entity @s[scores={timer=19..21}] run tp @s 495.25 70 1359.75 135 ~
execute if entity @s[scores={timer=19..21}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 494.75 70 1359.25 315 ~
execute if entity @s[scores={timer=22..24}] run tp @s 495.0 70 1360.0 180 ~
execute if entity @s[scores={timer=22..24}] as @e[type=armor_stand,tag=StaffRoleNpc16] run tp @s 495.0 70 1359.0 360 ~
execute if entity @s[scores={timer=24..}] run scoreboard players set @s timer 0
