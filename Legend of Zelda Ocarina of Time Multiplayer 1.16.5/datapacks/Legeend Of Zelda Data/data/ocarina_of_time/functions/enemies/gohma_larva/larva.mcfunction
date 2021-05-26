execute if entity @a[y=50,dx=0,dy=10,dz=0] run tag @s add Fall

execute if entity @s[tag=Fall] run tp @s ~ ~-.5 ~
execute unless block ~ ~1 ~ minecraft:air run tag @s add Break

execute if entity @e[type=snowball,distance=..2] run kill @s
