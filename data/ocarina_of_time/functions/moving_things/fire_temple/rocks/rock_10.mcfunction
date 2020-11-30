scoreboard players add @s timer 1

execute at @s if entity @s[scores={timer=1}] run tp @s 3030 150.75 1945

execute at @s if entity @s[scores={timer=2..10}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=11..60}] run tp @s ~.15 ~ ~.15
execute at @s if entity @s[scores={timer=61..85}] run tp @s ~ ~ ~.3
execute at @s if entity @s[scores={timer=86..130}] run tp @s ~-.15 ~ ~.15
execute at @s if entity @s[scores={timer=131..145}] run tp @s ~-.3 ~ ~

execute at @s if entity @s[scores={timer=165..179}] run tp @s ~.3 ~ ~
execute at @s if entity @s[scores={timer=180..224}] run tp @s ~.15 ~ ~-.15
execute at @s if entity @s[scores={timer=225..249}] run tp @s ~ ~ ~-.3
execute at @s if entity @s[scores={timer=250..299}] run tp @s ~-.15 ~ ~-.15
execute at @s if entity @s[scores={timer=300..308}] run tp @s ~-.3 ~ ~

execute at @s if entity @s[scores={timer=328..}] run scoreboard players set @s timer 0
