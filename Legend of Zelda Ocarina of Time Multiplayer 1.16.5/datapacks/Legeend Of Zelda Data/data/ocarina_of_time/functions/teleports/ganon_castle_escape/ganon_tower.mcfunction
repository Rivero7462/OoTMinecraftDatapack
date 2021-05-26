scoreboard players add @s LoadZone 1

execute if entity @s[scores={LoadZone=1}] run tag @s add StopTime
execute if entity @s[scores={LoadZone=1}] run tag @s remove TimerRoom1
execute if entity @s[scores={LoadZone=1}] run scoreboard players set @a MiniGameTime 0

execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @e[type=armor_stand,tag=PrincessZelda3] timer
execute if entity @s[tag=!EscapeGanonTower,scores={LoadZone=15..}] run scoreboard players reset @e[type=armor_stand,tag=PrincessZelda3] lifetime
execute if entity @s[tag=!EscapeGanonTower,scores={LoadZone=15..}] run tp @e[type=armor_stand,tag=PrincessZelda3] -636 181 888 0 ~
execute if entity @s[scores={LoadZone=15..}] run tp @e[type=armor_stand,tag=Ganondorf5] -634 171.7 885.5 0 ~
execute if entity @s[scores={LoadZone=15..}] run tp @e[type=armor_stand,tag=Ganondorf6] -634 172.4 884.8 0 ~
execute if entity @s[scores={LoadZone=15..}] run clone -634 156 886 -631 159 889 -628 157 892
execute if entity @s[scores={LoadZone=15..}] run fill -653 39 883 -653 42 880 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -634 151 872 -636 154 872 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -641 31 892 -643 34 892 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -648 141 884 -648 144 886 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -632 24 881 -632 27 883 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -643 25 887 -641 24 885 minecraft:air
execute if entity @s[scores={LoadZone=15..}] run fill -636 130 898 -634 133 898 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -643 17 872 -641 20 872 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -626 10 869 -626 13 871 minecraft:iron_bars
execute if entity @s[scores={LoadZone=15..}] run fill -622 18 937 -622 22 941 minecraft:iron_bars replace minecraft:air
execute if entity @s[scores={LoadZone=15..}] run fill -584 27 937 -584 31 941 minecraft:iron_bars replace minecraft:air

execute if entity @s[scores={LoadZone=15..}] run scoreboard players set @e[tag=PrincessZelda4] lifetime 0
execute if entity @s[scores={LoadZone=15..}] run tp @e[tag=PrincessZelda4] -636 39 892

execute if entity @s[scores={LoadZone=15..}] run effect give @a minecraft:instant_health 1 10 true
execute if entity @s[scores={LoadZone=15..}] run spawnpoint @a -638 91 909
execute if entity @s[scores={LoadZone=15..}] run experience set @a 24 levels
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_other
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/remove_entities
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_castle_escape/loot_reset
execute if entity @s[scores={LoadZone=15..}] run function ocarina_of_time:teleports/ganon_castle_escape/enemies
execute if entity @s[scores={LoadZone=15..}] run tag @s add NoTeleport
execute if entity @s[tag=EscapeGanonTower,scores={LoadZone=15..}] run function ocarina_of_time:music/escape_ganon_castle
execute if entity @s[tag=EscapeGanonTower,scores={LoadZone=15..}] run tp @e[tag=PrincessZelda3] -649.4 173 883.44
execute if entity @s[tag=EscapeGanonTower,scores={LoadZone=15..}] run scoreboard players set @e[type=armor_stand,tag=PrincessZelda3] lifetime 26
execute if entity @s[tag=EscapeGanonTower,scores={LoadZone=15..}] run tag @s add Escape1
execute if entity @s[tag=EscapeGanonTower,scores={LoadZone=15..}] run tag @s add Meteors
execute if entity @s[tag=EscapeGanonTower,scores={LoadZone=15..}] run tag @s add TimerRoom1
execute if entity @s[tag=EscapeGanonTower,scores={LoadZone=15..}] run tp @s -635 173 890 115 ~
execute if entity @s[tag=!EscapeGanonTower,scores={LoadZone=15..}] run tp @s -635 173 890 0 ~
execute if entity @s[scores={LoadZone=15..}] run scoreboard players reset @s LoadZone
