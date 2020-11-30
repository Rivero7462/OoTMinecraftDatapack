function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/kokiri_forest/enemies
function ocarina_of_time:teleports/kokiri_forest/loot_reset
tp @e[type=wither_skeleton,tag=ClubMoblin1] -572 78 -805 0 ~
execute unless entity @s[tag=Adult] run scoreboard players set @e[type=area_effect_cloud,tag=FakeSaria] timer 1
tp @s -575 75 -733
