execute as @e[type=horse,tag=Epona] at @a positioned ~ ~-1 ~ if entity @s[distance=..3] unless entity @s[tag=FakeEpona] run tp @s 727 70 2048 -25 ~
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/gerudo_valley/loot_reset
function ocarina_of_time:teleports/remove_teleports
tag @s add InHyruleField
tp @s 911 71 2041
