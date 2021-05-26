scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/deku_tree/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/dodongo_cavern/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/jabu_jabu/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/forest_temple/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/fire_temple/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/water_temple/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/shadow_temple/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/spirit_temple/loot_reset
execute if entity @s[scores={timer=1}] run function ocarina_of_time:teleports/remove_teleports

execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InDekuTree] run function ocarina_of_time:items/farore_wind/places/deku_tree
execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InDodongoCavern] run function ocarina_of_time:items/farore_wind/places/dodongo_cavern
execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InJabuJabu] run function ocarina_of_time:items/farore_wind/places/jabu_jabu
execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InForestTemple] run function ocarina_of_time:items/farore_wind/places/forest_temple
execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InFireTemple] run function ocarina_of_time:items/farore_wind/places/fire_temple
execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InWaterTemple] run function ocarina_of_time:items/farore_wind/places/water_temple
execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InShadowTemple] run function ocarina_of_time:items/farore_wind/places/shadow_temple
execute if entity @s[scores={timer=1..20}] if entity @e[type=armor_stand,tag=FaroreWind,tag=InSpiritTemple] run function ocarina_of_time:items/farore_wind/places/spirit_temple

execute if entity @s[scores={timer=20..}] run tp @a @e[type=armor_stand,tag=FaroreWind,limit=1]
execute if entity @s[scores={timer=20..}] run scoreboard players reset @s Xpos
execute if entity @s[scores={timer=20..}] run scoreboard players reset @s Ypos
execute if entity @s[scores={timer=20..}] run scoreboard players reset @s Zpos
execute if entity @s[scores={timer=20..}] run kill @e[type=armor_stand,tag=FaroreWind]
execute if entity @s[scores={timer=20..}] run tag @s remove TeleportCoolDown
execute if entity @s[scores={timer=20..}] run scoreboard players set @s timer 0
