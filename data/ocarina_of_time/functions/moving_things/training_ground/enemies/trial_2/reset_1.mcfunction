tag @a remove TimerRoom2
tag @a add HideDisplayScore
scoreboard players set @a MiniGameTime 0
execute unless block 460 33 918 minecraft:gold_block run fill 460 33 919 460 33 919 minecraft:air
execute as @e[type=zombie,tag=Stalfos1] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Stalfos1]
execute as @e[type=zombie,tag=Stalfos2] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Stalfos2]
tp @a 477 38 918 90 ~
