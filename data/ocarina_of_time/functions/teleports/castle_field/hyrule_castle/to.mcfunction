function ocarina_of_time:teleports/remove_entities
function ocarina_of_time:teleports/remove_other
function ocarina_of_time:teleports/castle_field/loot_reset
function ocarina_of_time:teleports/remove_teleports
execute as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=5..}] run scoreboard players set @s lifetime 5
tag @s add InHyruleCastle
tp @s 880 83 417
