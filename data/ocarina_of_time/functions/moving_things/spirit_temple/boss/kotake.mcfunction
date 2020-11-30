execute if block ~ ~ ~ minecraft:chiseled_red_sandstone run tp @s -27 127 763

#Shoot
execute if entity @e[type=area_effect_cloud,tag=TwinrovaSpot,tag=!Cooldown,distance=..1] unless entity @e[type=zombie,tag=Koume,tag=Shoot] run tag @s add Shoot
execute if entity @s[tag=Shoot] run scoreboard players add @s timer 1
execute unless entity @s[tag=Finish] if entity @s[tag=Shoot,scores={timer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Shoot,scores={timer=1..50}] run tag @e[type=zombie,tag=Koume] add Hover
execute if entity @s[tag=Shoot,scores={timer=1..50}] facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Shoot,scores={timer=1..50}] run particle minecraft:soul_fire_flame ^-1.5 ^1.5 ^.5 .2 .2 .2 0 5
execute if entity @s[tag=Shoot,scores={timer=50}] positioned ^-1.5 ^1.5 ^.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Twinrova","IceBeam"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[tag=Shoot,scores={timer=51..300}] unless entity @e[type=area_effect_cloud,tag=IceBeam,tag=Boom] positioned ^-1.5 ^1.5 ^.5 facing entity @e[type=area_effect_cloud,tag=IceBeam] feet run function ocarina_of_time:moving_things/spirit_temple/boss/ice
execute if entity @s[tag=Shoot,scores={timer=301..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset

execute if entity @s[tag=Shoot,scores={timer=51..300}] as @a[tag=ReflectIce] at @s anchored eyes facing entity @e[type=zombie,tag=Kotake] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1] at @a positioned ^ ^1 ^2 run function ocarina_of_time:moving_things/spirit_temple/boss/ice
execute if entity @s[tag=Shoot,scores={timer=51..300}] as @a[tag=ReflectIce] at @s anchored eyes facing entity @e[type=zombie,tag=Kotake] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1] run tag @e[type=area_effect_cloud,tag=IceBeam] add Boom
execute if entity @s[tag=Shoot,scores={timer=51..300}] as @a[tag=ReflectIce] at @s anchored eyes facing entity @e[type=zombie,tag=Kotake] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1] run tag @a remove ReflectIce

#Hover
execute if entity @s[tag=Hover] run scoreboard players add @s timer 1
execute unless entity @s[tag=Finish] if entity @s[tag=Hover,scores={timer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Hover] unless entity @e[type=zombie,tag=Koume,distance=..5] facing entity @e[type=zombie,tag=Koume] feet rotated ~ 0 run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[tag=Hover] if entity @e[type=zombie,tag=Koume,distance=..4] facing entity @e[type=zombie,tag=Koume] feet rotated ~180 0 run tp @s ^ ^ ^.2 ~ 0
execute if entity @s[tag=Hover] if entity @e[type=zombie,tag=Koume,distance=..5] unless entity @e[type=zombie,tag=Koume,distance=..4] facing entity @a feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute if entity @s[tag=Hover,scores={timer=301..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset

#Move
scoreboard players add @s time 1
execute if entity @s[scores={time=4..}] run scoreboard players set @s time 0

execute unless entity @s[tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] unless entity @e[type=zombie,tag=Koume,tag=Shoot] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Koume,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s if block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^.2 ~-1 ~
execute unless entity @s[tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Koume,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s if block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^.2 ~1 ~
execute unless entity @s[tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Koume,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s unless block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^ ~-1 ~
execute unless entity @s[tag=Finish] unless entity @e[type=zombie,tag=Kotake,tag=Hurt] unless entity @s[tag=Hurt] unless entity @s[tag=Shoot] unless entity @s[tag=Hover] if entity @e[type=zombie,tag=Koume,tag=Shoot] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s unless block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^ ~1 ~
execute unless entity @s[tag=Finish] if entity @s[scores={lifetime=1}] facing entity @e[type=area_effect_cloud,tag=TwinrovaSpot,tag=!Cooldown,sort=random] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute unless entity @s[tag=Finish] if entity @s[scores={lifetime=60,time=3}] run tag @s add Shoot
execute unless entity @s[tag=Finish] if entity @s[scores={lifetime=2..}] run tp @s ^ ^ ^.3 ~ 0
execute unless entity @s[tag=Finish] if entity @s[scores={lifetime=110..}] run tag @s add Shoot

#Hurt
execute if entity @s[tag=Hurt] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] run tag @s remove Hover
execute if entity @s[scores={GameTimer=1}] run scoreboard players set @s timer 0
execute if entity @s[scores={GameTimer=1..25}] run particle minecraft:flame ~ ~1 ~ .3 .5 .3 0 10
execute if entity @s[scores={GameTimer=26}] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={GameTimer=26..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset

#Sounds
execute if entity @s[tag=Shoot,scores={timer=1}] at @a run playsound minecraft:item.trident.riptide_3 hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Shoot,scores={timer=50}] at @a run playsound minecraft:entity.witch.death hostile @a ~ ~ ~ 2 2
execute if entity @s[tag=Shoot,scores={timer=55}] at @a run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 .7
execute if entity @s[scores={GameTimer=1}] at @a run playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 5 2
execute if entity @s[scores={GameTimer=10}] run stopsound @a hostile minecraft:entity.bee.loop_aggressive

#Finish
execute if entity @s[scores={ArrowCount=4..}] run scoreboard players set @e[type=zombie,tag=Koume] lifetime 0
execute if entity @s[scores={ArrowCount=4..}] run function ocarina_of_time:moving_things/spirit_temple/boss/reset
execute if entity @s[scores={ArrowCount=4..}] as @e[type=zombie,tag=Koume] run function ocarina_of_time:moving_things/spirit_temple/boss/reset
execute if entity @s[scores={ArrowCount=4..}] run tag @s add Finish

#Final Spin
execute if entity @s[tag=Finish] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Finish] unless entity @s[scores={lifetime=205..}] run scoreboard players set @s lifetime 205

execute if entity @s[tag=Finish,scores={lifetime=205}] run tp @s -33 127 763 180 0
execute if entity @s[tag=Finish,scores={lifetime=205}] run tp @e[type=zombie,tag=Koume] -21 127 763 0 0
execute if entity @s[tag=Finish,scores={lifetime=205}] run tp @a -27 123 773 180 -20
execute if entity @s[tag=Finish,scores={lifetime=205}] run tellraw @a ["",{"text":"Koume: ","color":"gold"},{"text":"OK, let's get serious now, Kotake!","color":"white"}]
execute if entity @s[tag=Finish,scores={lifetime=240}] run tellraw @a ["",{"text":"Kotake: ","color":"gold"},{"text":"Oh, OK, Koume.","color":"white"}]
execute if entity @s[tag=Finish,scores={lifetime=290}] run tellraw @a ["",{"text":"Kotake & Kotake: ","color":"gold"},{"text":"Kotake and Koume's Double Dynamite Attack!"}]

execute if entity @s[tag=Finish,scores={lifetime=206..220}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~4 ~
execute if entity @s[tag=Finish,scores={lifetime=206..220}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^9 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=221..230}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~7 ~
execute if entity @s[tag=Finish,scores={lifetime=221..230}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^8 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=231..240}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~10 ~
execute if entity @s[tag=Finish,scores={lifetime=231..240}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^7 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=241..250}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~13 ~
execute if entity @s[tag=Finish,scores={lifetime=241..250}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^6 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=251..260}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~16 ~
execute if entity @s[tag=Finish,scores={lifetime=251..260}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^5 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=261..270}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~19 ~
execute if entity @s[tag=Finish,scores={lifetime=261..270}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^4 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=271..280}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~22 ~
execute if entity @s[tag=Finish,scores={lifetime=271..280}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^3 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=281..290}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~26 ~
execute if entity @s[tag=Finish,scores={lifetime=281..290}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^2 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=290..340}] as @e[type=zombie,tag=Koume] at @s run tp @s ^ ^ ^ ~30 ~
execute if entity @s[tag=Finish,scores={lifetime=290..340}] as @e[type=zombie,tag=Koume] at @s positioned -27 127 763 run tp @s ^1 ^ ^

execute if entity @s[tag=Finish,scores={lifetime=206..220}] run tp @s ^ ^ ^ ~4 ~
execute if entity @s[tag=Finish,scores={lifetime=206..220}] positioned -27 127 763 run tp @s ^9 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=221..230}] run tp @s ^ ^ ^ ~7 ~
execute if entity @s[tag=Finish,scores={lifetime=221..230}] positioned -27 127 763 run tp @s ^8 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=231..240}] run tp @s ^ ^ ^ ~10 ~
execute if entity @s[tag=Finish,scores={lifetime=231..240}] positioned -27 127 763 run tp @s ^7 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=241..250}] run tp @s ^ ^ ^ ~13 ~
execute if entity @s[tag=Finish,scores={lifetime=241..250}] positioned -27 127 763 run tp @s ^6 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=251..260}] run tp @s ^ ^ ^ ~16 ~
execute if entity @s[tag=Finish,scores={lifetime=251..260}] positioned -27 127 763 run tp @s ^5 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=261..270}] run tp @s ^ ^ ^ ~19 ~
execute if entity @s[tag=Finish,scores={lifetime=261..270}] positioned -27 127 763 run tp @s ^4 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=271..280}] run tp @s ^ ^ ^ ~22 ~
execute if entity @s[tag=Finish,scores={lifetime=271..280}] positioned -27 127 763 run tp @s ^3 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=281..290}] run tp @s ^ ^ ^ ~26 ~
execute if entity @s[tag=Finish,scores={lifetime=281..290}] positioned -27 127 763 run tp @s ^2 ^ ^
execute if entity @s[tag=Finish,scores={lifetime=290..340}] run tp @s ^ ^ ^ ~30 ~
execute if entity @s[tag=Finish,scores={lifetime=290..340}] positioned -27 127 763 run tp @s ^1 ^ ^

execute if entity @s[tag=Finish,scores={lifetime=340}] run playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 .5
execute if entity @s[tag=Finish,scores={lifetime=340}] run particle minecraft:soul_fire_flame -27 128 763 1 1 1 0 100 normal
execute if entity @s[tag=Finish,scores={lifetime=340}] run particle minecraft:flame -27 128 763 1 1 1 0 100 normal
execute if entity @s[tag=Finish,scores={lifetime=341}] as @e[type=area_effect_cloud,tag=TwinrovaSpot] at @s run tp @s ~ ~1 ~
execute if entity @s[tag=Finish,scores={lifetime=341}] run summon minecraft:ravager -27 128 763 {Tags:["Twinrova","TwinrovaHealth","Invisible"],Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,DeathLootTable:"ocarina_of_time:entities/nothing",Health:80,Attributes:[{Name:"generic.max_health",Base:80}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Finish,scores={lifetime=341}] run summon minecraft:armor_stand -27 128 763 {Tags:["Twinrova","TwinrovaBody"],Invisible:1b,NoGravity:1b,HandItems:[{id:white_stained_glass_pane,Count:1b,tag:{CustomModelData:19}},{}],Pose:{RightArm:[0f,0f,0f]}}
execute if entity @s[tag=Finish,scores={lifetime=341}] run fill -26 117 763 -26 117 763 minecraft:gold_block
execute if entity @s[tag=Finish,scores={lifetime=341}] run tp @s ~ ~-10 ~
execute if entity @s[tag=Finish,scores={lifetime=341}] run tp @e[type=zombie,tag=Koume] ~ ~-10 ~
execute if entity @s[tag=Finish,scores={lifetime=341}] run kill @e[type=zombie,tag=Koume]
execute if entity @s[tag=Finish,scores={lifetime=341}] run kill @s
