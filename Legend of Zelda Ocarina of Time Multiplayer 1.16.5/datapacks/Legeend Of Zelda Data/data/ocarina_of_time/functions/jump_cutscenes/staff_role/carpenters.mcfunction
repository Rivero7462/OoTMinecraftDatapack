scoreboard players add @s timer 1

execute if entity @s[scores={timer=1..30}] run tp @s ~ ~ ~ ~.6 ~
execute if entity @s[scores={timer=31..90}] run tp @s ~ ~ ~ ~-.6 ~
execute if entity @s[scores={timer=91..120}] run tp @s ~ ~ ~ ~.6 ~
execute if entity @s[scores={timer=121}] run scoreboard players set @s timer 0
