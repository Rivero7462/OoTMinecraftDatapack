execute as @e[type=horse,tag=Epona] at @a positioned ~ ~-1 ~ if entity @s[distance=..3] unless entity @s[tag=FakeEpona] run tp @s 937 72 2020 -135 ~
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/lon_lon_ranch/loot_reset
function ocarina_of_time:teleports/remove_teleports
tag @s add InHyruleField
tp @s 907 71 2041
