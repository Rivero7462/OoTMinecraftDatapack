kill @e[type=armor_stand,tag=Guard]
execute as @e[type=armor_stand,tag=Guard15] run tellraw @a ["",{"text":"Soldier: ","color":"gold"},{"text":"Hey, you! Stop! You, kid over there!"}]
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/hyrule_castle/loot_reset
function ocarina_of_time:teleports/remove_teleports
tag @s add InCastleField
execute unless entity @e[type=armor_stand,tag=Guard19] run tp @s 910 75 924
tag @s remove GuardCaught
