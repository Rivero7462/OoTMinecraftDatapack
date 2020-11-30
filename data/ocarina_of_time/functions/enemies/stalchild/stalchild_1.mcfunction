scoreboard players add @s lifetime 1

#Too far
execute at @a unless entity @s[distance=..14] run tp @s ~ ~-20 ~
execute at @a unless entity @s[distance=..14] run playsound minecraft:block.bamboo_sapling.break hostile @a ~ ~ ~ 1 .5
execute at @a unless entity @s[distance=..14] run scoreboard players remove @e[type=area_effect_cloud,tag=StalchildSpawn] timer 1
execute at @a unless entity @s[distance=..14] run kill @s

#Appear
execute if entity @s[scores={lifetime=1}] at @a run spreadplayers ~ ~ 5 5 under 80 true @s

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[tag=Stun] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~.5 ~ .3 .1 .3 1 1
execute if entity @s[scores={time=110..}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Slingshot
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:resistance 1 1 true
execute if entity @e[type=snowball,distance=..2] run effect give @s minecraft:instant_health 1 0 true

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run data merge entity @s {ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:16777215}}}]}
execute if entity @s[type=wither_skeleton] if entity @a[distance=..3] run effect clear @a minecraft:wither

#Sound
execute if entity @s[scores={lifetime=1}] run playsound minecraft:block.bamboo_sapling.break hostile @a ~ ~ ~ 1 .5
execute if entity @s[nbt={HurtTime:10s}] at @s run playsound minecraft:entity.witch.hurt hostile @a ~ ~ ~ 1 2
execute if entity @a[distance=..1] unless entity @s[tag=CoolDown] run playsound minecraft:entity.witch.celebrate hostile @a ~ ~ ~ 1 2
execute if entity @a[distance=..1] run tag @s add CoolDown
execute if entity @s[tag=CoolDown] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=20..}] run tag @s remove CoolDown
execute if entity @s[scores={timer=20..}] run scoreboard players set @s timer 0
execute unless entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=5}] run playsound minecraft:block.gravel.break hostile @a ~ ~ ~ .2 1.2
execute if entity @s[scores={GameTimer=17}] run playsound minecraft:block.gravel.break hostile @a ~ ~ ~ .2 1.1
execute if entity @s[scores={GameTimer=25..}] run scoreboard players set @s GameTimer 0

#Death
execute unless entity @a[scores={time=13001..23000}] run function ocarina_of_time:enemies/stalchild/stalchild_2
execute if block ~ ~ ~ minecraft:water run playsound minecraft:entity.witch.hurt hostile @a ~ ~ ~ 1 2
execute if block ~ ~ ~ minecraft:water run function ocarina_of_time:enemies/stalchild/stalchild_2
