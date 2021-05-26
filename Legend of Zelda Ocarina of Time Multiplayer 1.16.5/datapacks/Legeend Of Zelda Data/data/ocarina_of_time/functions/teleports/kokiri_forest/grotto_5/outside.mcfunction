function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kokiri_forest/loot_reset
function ocarina_of_time:teleports/kokiri_forest/enemies
tag @s add StopTime
function ocarina_of_time:music/lost_woods
execute unless entity @s[tag=Adult] run scoreboard players set @e[type=area_effect_cloud,tag=FakeSaria] timer 1
tp @s -567 83 -816 135 ~
