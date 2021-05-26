scoreboard players add @s lifetime 1
execute if entity @s[tag=West,scores={timer=217}] run scoreboard players set @s lifetime 310
execute if entity @s[tag=East,scores={timer=217}] run scoreboard players set @s lifetime 881

execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1}] run tp @s -567 75 -749.0 90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=2..309}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=310}] run tp @s -575.8 75 -749.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=311..450}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=451}] run tp @s -580.0 75 -749.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=460..487}] run tp @s ~ ~ ~ ~-6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=488}] run tp @s ~ ~ ~ -90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=489..880}] run tp @s ~.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=881}] run tp @s -568.3 75 -749.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=882..1020}] run tp @s ~.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1021}] run tp @s -564.0 75 -749.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1030..1057}] run tp @s ~ ~ ~ ~-6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1058}] run tp @s ~ ~ ~ 90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1059..1140}] run tp @s ~-.03 ~ ~


execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1140..}] run scoreboard players set @s lifetime 0
