execute as @e[type=horse,tag=Epona] at @a positioned ~ ~-1 ~ if entity @s[distance=..3] unless entity @s[tag=FakeEpona] run tp @s 438 68 2052 135 ~
function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/gerudo_fortress/loot_reset
function ocarina_of_time:teleports/remove_teleports
tag @s add InGerudoValley
tp @s 386 50 2040
