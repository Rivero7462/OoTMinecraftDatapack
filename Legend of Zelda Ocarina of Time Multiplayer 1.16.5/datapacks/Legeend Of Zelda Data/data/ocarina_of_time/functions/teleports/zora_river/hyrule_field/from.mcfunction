scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/zora_river/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/zora_river/enemies
execute if entity @s[scores={LoadZone=15..}] if entity @a[x=1530,y=61,z=2311,dx=0,dz=0] run tp @s 1483 64 2352 180 ~
execute if entity @s[scores={LoadZone=15..}] if entity @a[x=1532,y=61,z=2311,dx=0,dz=0] run tp @s 1488 62 2357 180 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
