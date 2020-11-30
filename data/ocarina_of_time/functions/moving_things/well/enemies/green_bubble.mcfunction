#Flame
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~ ~1.8 ~-.5 0 1 .1 1 0 force @a
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~ ~1.8 ~.5 0 1 .1 1 0 force @a
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~.5 ~1.8 ~ 0 1 .1 1 0 force @a
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~-.5 ~1.8 ~ 0 1 .1 1 0 force @a
scoreboard players add @s ArrowCount 1
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=1}] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=211..}] run scoreboard players set @s ArrowCount 0

#Motion
execute if entity @s[scores={lifetime=1}] run tp @s -32 60 1355 -90 ~
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=2..130}] run tp @s ~.3 ~ ~ -90 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=131..265}] run tp @s ~ ~ ~-.3 180 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=266..394}] run tp @s ~-.3 ~ ~ 90 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=395..523}] run tp @s ~ ~ ~.3 0 0

execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=523..}] run scoreboard players set @s lifetime 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] unless entity @s[scores={ArrowCount=141..211}] run kill @s
execute if entity @e[type=snowball,distance=..2] if entity @s[tag=Stun] run kill @s
