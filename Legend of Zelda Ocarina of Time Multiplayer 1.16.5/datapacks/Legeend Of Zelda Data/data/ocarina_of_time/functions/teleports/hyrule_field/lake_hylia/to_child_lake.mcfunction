execute as @e[type=horse,tag=Epona] at @a positioned ~ ~-1 ~ if entity @s[distance=..3] unless entity @s[tag=FakeEpona] run tp @s 747 71 2646 0 ~
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/hyrule_field/loot_reset
function ocarina_of_time:teleports/remove_teleports
tag @s add InLakeChild
tp @s 783 64 2673
