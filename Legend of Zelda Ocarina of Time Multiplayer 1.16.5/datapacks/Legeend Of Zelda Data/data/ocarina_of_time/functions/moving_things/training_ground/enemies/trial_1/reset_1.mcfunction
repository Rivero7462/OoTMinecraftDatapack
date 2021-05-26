tag @a remove TimerRoom1
tag @a add HideDisplayScore
scoreboard players set @a MiniGameTime 0
execute unless block 536 34 918 minecraft:gold_block run fill 536 34 917 536 34 917 minecraft:air
execute as @e[type=zombie,tag=Beamos7] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Beamos7]
execute as @e[type=zombie,tag=Dinolfos1] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Dinolfos1]
execute as @e[type=zombie,tag=Dinolfos2] at @s run tp @s ~ ~-5 ~
kill @e[type=zombie,tag=Dinolfos2]
tp @a 523 38 918 -90 ~
