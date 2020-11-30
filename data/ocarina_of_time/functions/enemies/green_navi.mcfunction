scoreboard players add @s timer 1
execute as @s at @s if entity @s[scores={timer=1..4}] facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute as @s at @s if entity @s[scores={timer=5..10}] facing entity @p eyes rotated ~ 0 run tp @s ~ ~.02 ~ ~ 0
execute as @s at @s if entity @s[scores={timer=10..15}] facing entity @p eyes rotated ~ 0 run tp @s ~ ~-.02 ~ ~ 0

execute as @s if entity @s[scores={timer=16..}] run scoreboard players set @s timer 1
