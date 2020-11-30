scoreboard players set @e[type=armor_stand,tag=Goron3] text 3
scoreboard players set @e[type=armor_stand,tag=Goron4] text 3
scoreboard players set @e[type=armor_stand,tag=Darunia] text 3
scoreboard players set @e[type=armor_stand,tag=Goron6] text 3


execute if entity @e[type=armor_stand,tag=Darunia,scores={text=3}] run tag @s remove GoronCityText
