scoreboard players add @s lifetime 1
execute if entity @s[tag=East,scores={timer=217}] run scoreboard players set @s lifetime 104
execute if entity @s[tag=West,scores={timer=217}] run scoreboard players set @s lifetime 482

execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=1}] run tp @s -574 75 -755.0 -90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=2..103}] run tp @s ~.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=104}] run tp @s -570.5 75 -755.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=105..187}] run tp @s ~.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=188}] run tp @s -568.0 75 -755.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=197..224}] run tp @s ~ ~ ~ ~6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=225}] run tp @s ~ ~ ~ 90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=226..481}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=482}] run tp @s -575.6 75 -755.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=483..625}] run tp @s ~-.03 ~ ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=626}] run tp @s -580.0 75 -755.0
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=635..662}] run tp @s ~ ~ ~ ~6.4 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=663}] run tp @s ~ ~ ~ -90 ~
execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=664..882}] run tp @s ~.03 ~ ~

execute unless entity @s[tag=Attack] if entity @s[scores={lifetime=882..}] run scoreboard players set @s lifetime 0
