tag @a remove OcarinaMinigame
fill -567 72 -660 -569 74 -662 minecraft:air
scoreboard players set @s lifetime 0
scoreboard players set @s GameTimer 0
tp @s -564.0 66 -657.0 135 ~
tp @e[type=armor_stand,tag=SkullKid3] -567 66 -656 170 ~
execute unless entity @s[tag=Prize1] unless entity @s[tag=Prize2] unless entity @s[tag=Prize3] run data merge entity @s {Tags:["SkullKid2"]}
execute if entity @s[tag=Prize1] unless entity @s[tag=Prize2] unless entity @s[tag=Prize3] run data merge entity @s {Tags:["SkullKid2","Prize1"]}
execute if entity @s[tag=Prize2] unless entity @s[tag=Prize3] run data merge entity @s {Tags:["SkullKid2","Prize1","Prize2"]}
execute if entity @s[tag=Prize3] run data merge entity @s {Tags:["SkullKid2","Prize1","Prize2","Prize3"]}
