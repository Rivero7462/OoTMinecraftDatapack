scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add EponaSpot

execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/hyrule_field/loot_reset
execute if entity @s[scores={LoadZone=20..}] run function ocarina_of_time:teleports/hyrule_field/enemies
execute if entity @s[scores={LoadZone=20..}] if entity @a[x=911,y=71,z=2047,dx=0,dz=0] run tp @s 1096 67 1994 90 ~
execute if entity @s[scores={LoadZone=20..}] if entity @a[x=909,y=71,z=2047,dx=0,dz=0] run tp @s 1096 66 2000 90 ~
execute if entity @s[scores={LoadZone=20..}] run scoreboard players reset @s LoadZone
