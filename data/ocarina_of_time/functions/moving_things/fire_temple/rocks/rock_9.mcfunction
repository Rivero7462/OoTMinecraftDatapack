scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3020 108.75 1982.0

execute at @s if entity @s[scores={timer=2..70}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=71..116}] run tp @s ~.15 ~ ~-.15

execute at @s if entity @s[scores={timer=136..181}] run tp @s ~-.15 ~ ~.15
execute at @s if entity @s[scores={timer=182..250}] run tp @s ~-.3 ~ ~

execute at @s if entity @s[scores={timer=270..}] run scoreboard players set @s timer 0
