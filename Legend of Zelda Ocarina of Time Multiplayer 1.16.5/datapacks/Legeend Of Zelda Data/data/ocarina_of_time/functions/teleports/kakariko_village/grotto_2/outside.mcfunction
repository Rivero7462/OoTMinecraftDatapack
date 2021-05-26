function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kakariko_village/loot_reset
function ocarina_of_time:teleports/kakariko_village/enemies
tag @s add StopTime
execute unless entity @s[scores={time=13001..23000}] run function ocarina_of_time:music/kakariko_village
tp @s 1547 70 1913 0 ~
