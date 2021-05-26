scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run function ocarina_of_time:music/shadow_temple

execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone unless entity @e[type=armor_stand,tag=SkullPot2] run fill 1571 63 901 1698 67 890 minecraft:air
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone unless entity @e[type=armor_stand,tag=SkullPot2] run fill 1698 63 901 1793 67 890 minecraft:air
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone unless entity @e[type=armor_stand,tag=SkullPot2] run clone 1773 59 872 1793 67 883 1773 59 889
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone unless entity @e[type=armor_stand,tag=SkullPot2] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone unless entity @e[type=armor_stand,tag=SkullPot2] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone unless entity @e[type=armor_stand,tag=SkullPot2] run function ocarina_of_time:teleports/shadow_temple/loot_reset
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone unless entity @e[type=armor_stand,tag=SkullPot2] run function ocarina_of_time:teleports/shadow_temple/enemies
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone if entity @e[type=armor_stand,tag=SkullPot2] run tp @s 1665 91 957 180 ~
execute if entity @s[scores={LoadZone=15..}] if block 1509 62 906 minecraft:stone if entity @e[type=armor_stand,tag=SkullPot2] run scoreboard players reset @s LoadZone

execute if entity @s[scores={LoadZone=500..}] run tellraw @a {"text":"Your render distance is not at 11...","color":"red"}
