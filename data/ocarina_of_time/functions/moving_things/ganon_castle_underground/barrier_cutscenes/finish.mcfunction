scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=1}] run fill -492 21 1974 -492 21 1974 minecraft:gold_block
execute if entity @s[scores={lifetime=1}] run tag @a add NoOcarina
execute if entity @s[scores={lifetime=1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ResetPos"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[scores={lifetime=1}] run tp @e[type=area_effect_cloud,tag=ResetPos] @p

execute if entity @s[scores={lifetime=2}] run gamemode spectator @a
execute if entity @s[scores={lifetime=2}] run tp @a -491 38 2006 180 10

execute if entity @s[scores={lifetime=30}] as @e[type=giant,tag=Barrier] at @s run tp @s ~ ~-20 ~
execute if entity @s[scores={lifetime=32}] run kill @e[type=giant,tag=Barrier]

execute if entity @s[scores={lifetime=50..}] run gamemode adventure @a
execute if entity @s[scores={lifetime=50..}] run tp @a @e[type=area_effect_cloud,tag=ResetPos,limit=1]
execute if entity @s[scores={lifetime=50..}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=50..}] run tag @a remove RemoveBarrier
