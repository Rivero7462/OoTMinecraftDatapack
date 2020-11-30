tag @a remove OcarinaMinigame
tag @e[type=armor_stand,tag=Frog1] remove BeginMinigame
tag @a remove NoTeleport
fill 1544 71 2294 1542 73 2292 minecraft:air replace minecraft:barrier
scoreboard players set @e[type=armor_stand,tag=Frog1] ArrowCount 0
scoreboard players set @e[type=armor_stand,tag=Frog1] GameTimer 0
scoreboard players set @e[type=armor_stand,tag=Frog1] lifetime 0
scoreboard players set @e[type=armor_stand,tag=Frog1] timer 0
scoreboard players set @e[type=armor_stand,tag=Frog1] BlueRupee 0
tag @a remove NoOcarina
tag @e[type=armor_stand,tag=Frog1] remove NoteChoice1
tag @e[type=armor_stand,tag=Frog1] remove NoteChoice2
tag @e[type=armor_stand,tag=Frog1] remove NoteChoice3
tag @e[type=armor_stand,tag=Frog1] remove NoteChoice4
tag @e[type=armor_stand,tag=Frog1] remove NoteChoice5
tag @e[type=armor_stand,tag=Frog1] remove Jump
tag @e[type=armor_stand,tag=Frog1] remove Jump1
tag @e[type=armor_stand,tag=Frog1] remove Jump2
tag @e[type=armor_stand,tag=Frog1] remove Jump3
tag @e[type=armor_stand,tag=Frog1] remove Jump4
tag @e[type=armor_stand,tag=Frog1] remove Jump5
execute as @e[type=armor_stand,tag=Frog1] unless entity @s[tag=Grow] run tp @s 1549 68.3 2294 0 ~
execute as @e[type=armor_stand,tag=Frog1] if entity @s[tag=Grow] run tp @s 1549 67.6 2294 0 ~
execute as @e[type=armor_stand,tag=Frog2] at @s run tp @s ~ 65 ~
execute as @e[type=armor_stand,tag=Frog3] at @s run tp @s ~ 65 ~
execute as @e[type=armor_stand,tag=Frog4] at @s run tp @s ~ 65 ~
execute as @e[type=armor_stand,tag=Frog5] at @s run tp @s ~ 65 ~
tag @a remove FrogMinigame
