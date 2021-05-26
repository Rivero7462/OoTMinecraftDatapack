scoreboard players add @s lifetime 1
execute if entity @s[tag=West,scores={timer=217}] run scoreboard players set @s lifetime 278
execute if entity @s[tag=East,scores={timer=217}] run scoreboard players set @s lifetime 778

execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1}] run tp @s -569 75 -743.0 90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=2..277}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=278}] run tp @s -576.8 75 -743.0 90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=279..370}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=379..406}] run tp @s ~ ~ ~ ~6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=407}] run tp @s ~ ~ ~ -90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=408..777}] run tp @s ~.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=778}] run tp @s -568.4 75 -743.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=779..927}] run tp @s ~.03 ~ ~

execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=928}] run tp @s -564.0 75 -743.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=937..964}] run tp @s ~ ~ ~ ~6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=965}] run tp @s -564.0 75 -743.0 90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=966..1110}] run tp @s ~-.03 ~ ~


execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1110..}] run scoreboard players set @s lifetime 0
