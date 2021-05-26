tp @e[type=armor_stand,tag=Ganondorf5] -634 169 885.5 0 ~
tp @e[type=armor_stand,tag=Ganondorf6] -634 169 884.8 0 ~
effect give @a minecraft:regeneration 3 255 true
experience set @a 24 levels
tp @e[type=armor_stand,tag=PrincessZelda3] -649.4 173 883.44
tag @e[type=armor_stand,tag=PrincessZelda3] remove Stop
scoreboard players set @e[type=armor_stand,tag=PrincessZelda3] lifetime 25
tag @e[type=armor_stand,tag=PrincessZelda4] remove Stop
tp @e[type=armor_stand,tag=PrincessZelda4] -636 39 892
scoreboard players reset @e[type=armor_stand,tag=PrincessZelda4] lifetime
clone -634 156 886 -631 159 889 -628 157 892
fill -653 39 883 -653 42 880 minecraft:iron_bars
fill -634 151 872 -636 154 872 minecraft:iron_bars
fill -641 31 892 -643 34 892 minecraft:iron_bars
fill -648 141 884 -648 144 886 minecraft:iron_bars
fill -632 24 881 -632 27 883 minecraft:iron_bars
fill -643 25 887 -641 24 885 minecraft:air
fill -636 130 898 -634 133 898 minecraft:iron_bars
fill -643 17 872 -641 20 872 minecraft:iron_bars
fill -626 10 869 -626 13 871 minecraft:iron_bars
fill -622 18 937 -622 22 941 minecraft:iron_bars replace minecraft:air
fill -584 27 937 -584 31 941 minecraft:iron_bars replace minecraft:air
tag @a add Meteors
tag @a add Escape1
tag @a remove Escape2
tag @a remove Escape3
tag @a remove Escape4
tp @a -635 173 885 90 ~
scoreboard players set @a MiniGameTime 3000
