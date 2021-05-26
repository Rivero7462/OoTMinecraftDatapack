execute if entity @s[tag=MeetMalon] run tp @e[type=armor_stand,tag=Malon2] 901 75 945
execute if entity @s[tag=MeetMalon2] run tp @e[type=armor_stand,tag=Malon2] 901 75 945
execute if entity @s[tag=MeetMalon] run tag @s add MalonMoves1
execute if entity @s[tag=MeetMalon2] run tag @s add MalonMoves1
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_field/loot_reset
function ocarina_of_time:teleports/remove_teleports
tag @s add InCastleTown
tp @s 882 60 1426
