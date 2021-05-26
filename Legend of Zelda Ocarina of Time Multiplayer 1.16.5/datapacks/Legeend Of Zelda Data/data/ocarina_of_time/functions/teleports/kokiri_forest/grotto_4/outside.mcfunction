function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kokiri_forest/loot_reset
function ocarina_of_time:teleports/kokiri_forest/enemies
tag @s add StopTime
function ocarina_of_time:music/lost_woods
execute unless entity @s[tag=Adult] run scoreboard players set @e[type=area_effect_cloud,tag=FakeSaria] timer 1
tp @e[type=wither_skeleton,tag=ClubMoblin1] -572 78 -805 0 ~
tp @s -575 75 -738 180 ~
