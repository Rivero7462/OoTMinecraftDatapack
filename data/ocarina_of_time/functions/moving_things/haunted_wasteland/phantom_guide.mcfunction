execute unless entity @s[tag=Stop] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stop] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

#Stops
execute if entity @s[tag=Stop] run tp @s ~ ~ ~ ~10 ~
execute if entity @s[tag=Stop] positioned ~ ~-1 ~ if entity @a[distance=..10] run tag @s remove Stop

execute if entity @s[scores={lifetime=0}] run tag @s remove Stop
execute if entity @s[scores={lifetime=1}] run tellraw @a ["",{"text":"Phantom Guide: ","color":"gold"},{"text":"I'll be your guide on your way, but coming back, I won't play! I'll show you the only way to go, so follow me and don't be slow!"}]
execute if entity @s[scores={lifetime=1..2}] run tp @s 2006 59 244
execute if entity @s[scores={lifetime=3..49}] run tp @s ~.3 ~ ~
execute if entity @s[scores={lifetime=50}] run tag @s add Stop
execute if entity @s[scores={lifetime=50}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=52..147}] run tp @s ~.24 ~-.03 ~-.06
execute if entity @s[scores={lifetime=148}] run tag @s add Stop
execute if entity @s[scores={lifetime=148}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=150..222}] run tp @s ~ ~ ~-.3
execute if entity @s[scores={lifetime=223}] run tag @s add Stop
execute if entity @s[scores={lifetime=223}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=225..305}] run tp @s ~-.18 ~ ~-.18
execute if entity @s[scores={lifetime=306}] run tag @s add Stop
execute if entity @s[scores={lifetime=306}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=308..380}] run tp @s ~-.18 ~ ~-.18
execute if entity @s[scores={lifetime=381}] run tag @s add Stop
execute if entity @s[scores={lifetime=381}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=383..460}] run tp @s ~-.28 ~-.03 ~-.07
execute if entity @s[scores={lifetime=461}] run tag @s add Stop
execute if entity @s[scores={lifetime=461}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=463..534}] run tp @s ~-.24 ~ ~.12
execute if entity @s[scores={lifetime=535..574}] run tp @s ~-.26 ~ ~.05
execute if entity @s[scores={lifetime=575}] run tag @s add Stop
execute if entity @s[scores={lifetime=575}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=577..674}] run tp @s ~-.05 ~ ~-.23
execute if entity @s[scores={lifetime=675}] run tag @s add Stop
execute if entity @s[scores={lifetime=675}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=677..750}] run tp @s ~.21 ~ ~.1
execute if entity @s[scores={lifetime=751..792}] run tp @s ~.18 ~ ~.18
execute if entity @s[scores={lifetime=793}] run tag @s add Stop
execute if entity @s[scores={lifetime=793}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=795..820}] run tp @s ~-.15 ~ ~.17
execute if entity @s[scores={lifetime=821..891}] run tp @s ~-.21 ~ ~.05
execute if entity @s[scores={lifetime=892}] run tag @s add Stop
execute if entity @s[scores={lifetime=892}] run scoreboard players add @s lifetime 1
execute if entity @s[scores={lifetime=894..1200}] run tp @s ~ ~ ~-.3
execute if entity @s[scores={lifetime=1201}] run kill @s
