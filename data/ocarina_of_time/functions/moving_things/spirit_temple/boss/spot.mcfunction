execute if entity @e[type=zombie,tag=Kotake,tag=Shoot,distance=..1] run tag @s add Cooldown
execute if entity @e[type=zombie,tag=Koume,tag=Shoot,distance=..1] run tag @s add Cooldown
execute if entity @e[type=armor_stand,tag=TwinrovaBody,tag=Shoot,distance=..1] run tag @s add Cooldown

execute if entity @s[tag=Cooldown] unless entity @e[type=zombie,tag=Kotake,distance=..2] unless entity @e[type=zombie,tag=Koume,distance=..2] unless entity @e[type=armor_stand,tag=TwinrovaBody,distance=..2] run tag @s remove Cooldown
