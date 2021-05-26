scoreboard players add @s ArrowCount 1

execute if entity @s[scores={ArrowCount=1}] run fill 1702 25 1267 1702 25 1267 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 1703 25 1268 1703 25 1268 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 1704 25 1267 1704 25 1267 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run fill 1703 25 1266 1703 25 1266 minecraft:barrier
execute if entity @s[scores={ArrowCount=1}] run tp @a 1703 24.5 1267 120 -20

execute if entity @s[scores={ArrowCount=10..15}] run tp @s ^ ^.2 ^.5
execute if entity @s[scores={ArrowCount=16..20}] run tp @s ^ ^ ^.45
execute if entity @s[scores={ArrowCount=21..35}] run tp @s ^ ^-.2 ^.05
execute if entity @s[scores={ArrowCount=36}] run tp @s 1697 24.5 1269.0 -90 ~
execute if entity @s[scores={ArrowCount=36}] run playsound minecraft:ambient.underwater.enter hostile @a ~ ~ ~ 1 2

execute if entity @s[scores={ArrowCount=36..}] run fill 1702 25 1266 1704 25 1268 minecraft:air
execute if entity @s[scores={ArrowCount=60..}] run scoreboard players set @s lifetime 31
execute if entity @s[scores={ArrowCount=60..}] run tag @s add Attack
execute if entity @s[scores={ArrowCount=60..}] run fill 1701 17 1259 1701 17 1259 minecraft:gold_block
execute if entity @s[scores={ArrowCount=60..}] run scoreboard players set @s ArrowCount 0
