execute as @e[type=horse,tag=Epona] at @a positioned ~ ~-1 ~ if entity @s[distance=..3] unless entity @s[tag=FakeEpona] run tp @s 795 55 2239 -135 ~
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/lake_hylia_adult/loot_reset
function ocarina_of_time:teleports/remove_teleports
tag @s add InHyruleField
tp @s 911 71 2051
