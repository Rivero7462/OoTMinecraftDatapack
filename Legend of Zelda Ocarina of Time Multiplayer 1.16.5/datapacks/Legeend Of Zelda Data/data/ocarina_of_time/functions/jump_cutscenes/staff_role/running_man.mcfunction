scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run tp @s 462 30 1361
execute if entity @s[scores={timer=2..12}] run tp @s ^ ^ ^.4
execute if entity @s[scores={timer=13}] run tp @s ^ ^ ^ 0 ~
execute if entity @s[scores={timer=14..20}] run tp @s ^ ^ ^.4
execute if entity @s[scores={timer=21}] run tp @s ^ ^ ^ -90 ~
execute if entity @s[scores={timer=22..33}] run tp @s ^ ^ ^.4
execute if entity @s[scores={timer=34}] run tp @s ^ ^ ^ 180 ~
execute if entity @s[scores={timer=35..41}] run tp @s ^ ^ ^.4
execute if entity @s[scores={timer=42}] run tp @s ^ ^ ^ 90 ~
execute if entity @s[scores={timer=43}] run scoreboard players set @s timer 0
