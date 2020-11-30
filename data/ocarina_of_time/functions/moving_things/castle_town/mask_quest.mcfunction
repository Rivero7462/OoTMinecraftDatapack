execute as @e[type=armor_stand,tag=MaskGuy] at @s run tp @s ~ 49 ~
execute as @e[type=armor_stand,tag=MaskSalesman] at @s run tp @s ~ 52 ~
execute if entity @e[type=armor_stand,tag=MaskSalesman,x=894,y=52,z=1390,dx=0,dz=0] run tag @a remove StartMaskQuest
