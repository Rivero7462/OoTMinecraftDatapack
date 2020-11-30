execute if block ~ ~ ~ minecraft:chiseled_red_sandstone run tp @s -27 127 763

#Shoot
execute if entity @e[type=area_effect_cloud,tag=TwinrovaSpot,tag=!Cooldown,distance=..1] unless entity @e[type=zombie,tag=Kotake,tag=Shoot] run tag @s add Shoot
execute if entity @s[tag=Shoot] run scoreboard players add @s timer 1
execute if entity @s[tag=Shoot,scores={timer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Shoot,scores={timer=1}] run tag @e[type=zombie,tag=Kotake] add Hover
execute if entity @s[tag=Shoot,scores={timer=1..50}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Shoot,scores={timer=1..50}] run particle minecraft:flame ^-1.5 ^1.5 ^.5 .2 .2 .2 0 5
execute if entity @s[tag=Shoot,scores={timer=50}] positioned ^-1.5 ^1.5 ^.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Twinrova","FireBeam"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=Shoot,scores={timer=51..300}] unless entity @e[type=area_effect_cloud,tag=FireBeam,tag=Boom] positioned ^-1.5 ^1.5 ^.5 facing entity @e[type=area_effect_cloud,tag=FireBeam] feet run function ocarina_of_time:moving_things/spirit_temple/boss/fire
execute if entity @s[tag=Shoot,scores={timer=301..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset

execute if entity @s[tag=Shoot,scores={timer=51..300}] as @a[tag=ReflectFire] at @s anchored eyes facing entity @e[type=zombie,tag=Koume] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1] at @a positioned ^ ^1 ^2 run function ocarina_of_time:moving_things/spirit_temple/boss/fire
execute if entity @s[tag=Shoot,scores={timer=51..300}] as @a[tag=ReflectFire] at @s anchored eyes facing entity @e[type=zombie,tag=Koume] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1] run tag @e[type=area_effect_cloud,tag=FireBeam] add Boom
execute if entity @s[tag=Shoot,scores={timer=51..300}] as @a[tag=ReflectFire] at @s anchored eyes facing entity @e[type=zombie,tag=Koume] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1] run tag @a remove ReflectFire

#Hover
execute if entity @s[tag=Hover] run scoreboard players add @s timer 1
execute if entity @s[tag=Hover,scores={timer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Hover] unless entity @e[type=zombie,tag=Kotake,distance=..5] facing entity @e[type=zombie,tag=Kotake] feet rotated ~ 0 run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[tag=Hover] if entity @e[type=zombie,tag=Kotake,distance=..4] facing entity @e[type=zombie,tag=Kotake] feet rotated ~180 0 run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[tag=Hover] if entity @e[type=zombie,tag=Kotake,distance=..5] unless entity @e[type=zombie,tag=Kotake,distance=..4] facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute if entity @s[tag=Hover,scores={timer=301..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset

#Move
scoreboard players add @s time 1
execute if entity @s[scores={time=4..}] run scoreboard players set @s time 0

execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] unless entity @e[type=zombie,tag=Kotake,tag=Shoot] run scoreboard players add @s lifetime 1
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Kotake,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s if block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^.2 ~-1 ~
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Kotake,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s if block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^.2 ~1 ~
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Kotake,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s unless block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^.2 ~-1 ~
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Kotake,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s unless block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^.2 ~1 ~
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] if entity @s[scores={lifetime=1}] facing entity @e[type=area_effect_cloud,tag=TwinrovaSpot,tag=!Cooldown,sort=random] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] if entity @s[scores={lifetime=50,time=3}] run tag @s add Shoot
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] if entity @s[scores={lifetime=2..}] run tp @s ^ ^ ^.3 ~ 0
execute unless entity @e[type=zombie,tag=Kotake,tag=Finish] if entity @s[scores={lifetime=100..}] run tag @s add Shoot

#Hurt
execute if entity @s[tag=Hurt] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run tag @s remove Hover
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={GameTimer=1..25}] run particle minecraft:soul_fire_flame ~ ~1 ~ .3 .5 .3 0 10
execute if entity @s[scores={GameTimer=26}] run scoreboard players add @e[type=zombie,tag=Kotake] ArrowCount 1
execute if entity @s[scores={GameTimer=26..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset

#Sounds
execute if entity @s[tag=Shoot,scores={timer=1}] at @a run playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Shoot,scores={timer=50}] at @a run playsound minecraft:entity.witch.death hostile @a ~ ~ ~ 2 2
execute if entity @s[tag=Shoot,scores={timer=55}] at @a run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 .7
execute if entity @s[scores={GameTimer=1}] at @a run playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 5 2
execute if entity @s[scores={GameTimer=10}] run stopsound @a hostile minecraft:entity.bee.loop_aggressive
