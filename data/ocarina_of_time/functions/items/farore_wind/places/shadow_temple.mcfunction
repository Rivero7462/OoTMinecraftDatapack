execute if entity @s[scores={timer=1}] run tag @a add InShadowTemple
execute if entity @s[scores={timer=1}] run tag @a add InDungeon
execute if entity @s[scores={timer=1}] run spawnpoint @a 1694 73 940
execute if entity @s[scores={timer=1}] run tp @a 1692 73 940

execute if entity @s[scores={timer=19}] run tag @s add StopTime
execute if entity @s[scores={timer=19}] run fill 1571 63 901 1698 67 890 minecraft:air
execute if entity @s[scores={timer=19}] run fill 1698 63 901 1793 67 890 minecraft:air
execute if entity @s[scores={timer=19}] run clone 1773 59 872 1793 67 883 1773 59 889
execute if entity @s[scores={timer=19}] run function ocarina_of_time:music/shadow_temple
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/shadow_temple/loot_reset
execute if entity @s[scores={timer=19}] run function ocarina_of_time:teleports/shadow_temple/enemies
