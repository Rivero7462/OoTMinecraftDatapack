#General
execute as @a[tag=Shock] at @s run function ocarina_of_time:enemies/shock
execute as @a[tag=Freeze] at @s run function ocarina_of_time:enemies/freeze
kill @e[type=drowned]

#Other Scores
execute unless entity @e[type=zombie,tag=Poe] run scoreboard objectives remove Poe
execute unless entity @e[type=zombie,tag=Lizalfos] run scoreboard objectives remove Lizalfos
execute unless entity @e[type=zombie,tag=Octorok] run scoreboard objectives remove Octorok
execute unless entity @e[type=zombie,tag=Wolfos,tag=Attack] run kill @e[type=area_effect_cloud,tag=Circle]
execute unless entity @e[type=zombie,tag=Stalfos] run tag @e[type=area_effect_cloud,tag=StalfosMove] remove Select1
execute unless entity @e[type=zombie,tag=Stalfos] run tag @e[type=area_effect_cloud,tag=StalfosMove] remove Select2
execute unless entity @e[type=zombie,tag=Tinymaster] run kill @e[type=area_effect_cloud,tag=TinymasterTeleport]
execute unless entity @e[type=zombie,tag=ForestPoe] run scoreboard objectives remove ForestPoe
execute unless entity @e[type=zombie,tag=PurplePoe,tag=Attack] run scoreboard objectives remove PurplePoe

#Zombie
execute as @e[type=zombie] run function ocarina_of_time:entity_setup/zombie

#Armor Stand
execute as @e[type=armor_stand] run function ocarina_of_time:entity_setup/armor_stand

#Wither Skeleton
execute as @e[type=wither_skeleton] run function ocarina_of_time:entity_setup/wither_skeleton

#Silverfish
execute as @e[type=silverfish] at @s run function ocarina_of_time:entity_setup/silverfish

#Keese
execute as @e[type=bat,tag=Keese] at @s run function ocarina_of_time:enemies/keese

#Area Effect Cloud
execute as @e[type=area_effect_cloud] at @s run function ocarina_of_time:entity_setup/area_effect_cloud

#Item
execute as @e[type=item] at @s run function ocarina_of_time:entity_setup/item

#Ravager
execute as @e[type=ravager] at @s run function ocarina_of_time:entity_setup/ravager

#Chicken
execute as @e[type=chicken,tag=Cucco] at @s run function ocarina_of_time:items/cucco/angry_cucco

#Villager
execute as @e[type=villager] run function ocarina_of_time:entity_setup/villager

#Horse
execute as @e[type=horse] at @s run function ocarina_of_time:entity_setup/horse

#Dolphin
execute as @e[type=dolphin] if entity @s[tag=Invisible] run effect give @s minecraft:invisibility 1000000 0 true

#Turtle
execute as @e[type=turtle] run scoreboard players add @s timer 1
execute as @e[type=turtle] if entity @s[scores={timer=400..}] run kill @s

#Code
execute as @e[type=cod,tag=Bottled] run scoreboard players add @s timer 1
execute as @e[type=cod,tag=Bottled] if entity @s[scores={timer=400..}] run kill @s

#Arrows
execute as @e[type=arrow] run function ocarina_of_time:entity_setup/arrow

#Tnt
kill @e[type=tnt]
