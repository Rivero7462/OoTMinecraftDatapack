scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run fill 2009 102 1459 2009 102 1459 minecraft:barrier
execute if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["DodongoRock"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={lifetime=2}] run tp @e[type=area_effect_cloud,tag=DodongoRock] @p
execute if entity @s[scores={lifetime=3..30}] run tp @a 2009 103 1459 -172 53

execute if entity @s[scores={lifetime=31}] run fill 2010 91 1449 2010 91 1449 minecraft:gold_block
execute if entity @s[scores={lifetime=31}] run tp @a @e[type=area_effect_cloud,tag=DodongoRock,limit=1]
execute if entity @s[scores={lifetime=31}] run kill @e[type=area_effect_cloud,tag=DodongoRock]
execute if entity @s[scores={lifetime=31}] run fill 2009 102 1459 2009 102 1459 minecraft:air
execute if entity @s[scores={lifetime=31}] run tag @a remove DodongoBoulder
execute if entity @s[scores={lifetime=31..}] run scoreboard players set @s lifetime 0
