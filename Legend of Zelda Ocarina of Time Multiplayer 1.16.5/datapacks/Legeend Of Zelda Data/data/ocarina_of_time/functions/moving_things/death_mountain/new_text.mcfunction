scoreboard players set @e[type=armor_stand,tag=Goron10] text 4
scoreboard players set @e[type=armor_stand,tag=Goron1] text 2
scoreboard players set @e[type=armor_stand,tag=Goron1] text 2
scoreboard players set @e[type=armor_stand,tag=Goron7] text 4
scoreboard players set @e[type=armor_stand,tag=Goron2] text 3

execute if entity @e[type=armor_stand,tag=Goron7,scores={text=4}] run tag @s remove MountainText
