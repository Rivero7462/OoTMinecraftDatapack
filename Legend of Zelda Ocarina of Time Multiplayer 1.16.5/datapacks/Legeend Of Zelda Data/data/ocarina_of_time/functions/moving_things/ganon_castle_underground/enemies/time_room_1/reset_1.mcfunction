tag @a remove TimerRoom1
tag @a add HideDisplayScore
fill -428 17 1963 -408 18 1982 minecraft:air replace minecraft:light_blue_concrete
fill -422 18 1969 -420 18 1971 minecraft:light_blue_concrete
fill -416 18 1972 -414 18 1974 minecraft:light_blue_concrete
kill @e[type=armor_stand,tag=IceBlock]
effect give @a minecraft:wither 1 2 true
scoreboard players set @a MiniGameTime 0
fill -420 15 1973 -420 15 1973 minecraft:air
tp @a -430 20 1974 -90 ~
