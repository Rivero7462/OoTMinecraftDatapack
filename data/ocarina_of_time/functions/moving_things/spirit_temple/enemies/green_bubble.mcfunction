#Flame
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~ ~1.8 ~-.5 0 1 .1 1 0 force @a
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~ ~1.8 ~.5 0 1 .1 1 0 force @a
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~.5 ~1.8 ~ 0 1 .1 1 0 force @a
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=141..}] run particle entity_effect ~-.5 ~1.8 ~ 0 1 .1 1 0 force @a
scoreboard players add @s ArrowCount 1
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=1}] run data merge entity @s {NoAI:0b,Invulnerable:0b}
execute unless entity @s[tag=Stun] if entity @s[scores={ArrowCount=211..}] run scoreboard players set @s ArrowCount 0

#Motion
execute if entity @s[scores={lifetime=1}] run tp @s -78 86 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=2..15}] run tp @s ~.1 ~.2 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=16..24}] run tp @s ~-.2 ~.05 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=25..40}] run tp @s ~-.1 ~-.1 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=41..60}] run tp @s ~.15 ~-.15 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=61..70}] run tp @s ~ ~-.2 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=71..90}] run tp @s ~-.2 ~.05 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=91..100}] run tp @s ~.1 ~.2 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=101..115}] run tp @s ~.2 ~.05 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=116..125}] run tp @s ~-.2 ~.05 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=125..135}] run tp @s ~-.2 ~-.05 851 0 0
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=136..150}] run tp @s ~.2 ~-.1 851 0 0

execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=150..}] run scoreboard players set @s lifetime 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] unless entity @s[scores={ArrowCount=141..211}] run kill @s
execute if entity @e[type=snowball,distance=..2] if entity @s[tag=Stun] run kill @s
