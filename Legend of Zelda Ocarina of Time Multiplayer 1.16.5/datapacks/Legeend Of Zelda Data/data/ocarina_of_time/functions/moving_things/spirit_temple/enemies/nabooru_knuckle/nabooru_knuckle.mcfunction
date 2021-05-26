execute at @e[type=zombie,tag=NabooruKnuckle] rotated as @e[type=zombie,tag=NabooruKnuckle] run tp @s ^-.27 ^.5 ^.05 ~ 0
execute unless entity @e[type=zombie,tag=NabooruKnuckle] run tag @a add KillNabooru
execute unless entity @e[type=zombie,tag=NabooruKnuckle] run function ocarina_of_time:moving_things/spirit_temple/enemies/nabooru_knuckle/reset
execute unless entity @e[type=zombie,tag=NabooruKnuckle] run tag @s add FakeNabooruKnuckle
execute unless entity @e[type=zombie,tag=NabooruKnuckle] run tag @s remove NabooruKnuckle

#Attack
execute if entity @s[tag=Attack] unless entity @s[tag=Action] as @e[type=zombie,tag=NabooruKnuckle,nbt={HurtTime:10s}] at @s facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^1 ~ 0

#Rotation
execute as @e[type=zombie,tag=NabooruKnuckle] run data modify entity @s Rotation[1] set value 0f

#Approach
execute if entity @s[tag=Attack] unless entity @s[tag=Action] as @e[type=zombie,tag=NabooruKnuckle] at @s facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.05 ~ 0

#Choose Attack
execute if entity @s[tag=Attack] run scoreboard players add @s timer 1
execute if entity @s[tag=Attack] unless entity @s[tag=Action] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={timer=2..}] run scoreboard players set @s timer 0
execute unless entity @s[tag=Action] if entity @s[scores={timer=0,GameTimer=10..}] if entity @a[distance=..2.5] run tag @s add Swing
execute unless entity @s[tag=Action] if entity @s[scores={timer=1,GameTimer=10..}] if entity @a[distance=..2.5] run tag @s add Slash
execute unless entity @s[tag=Action] if entity @s[scores={GameTimer=10..}] if entity @a[distance=..2.5] run tag @s add Action

#Wall
execute if block ^ ^ ^1 minecraft:stone_brick_wall run playsound minecraft:block.metal.break hostile @a ~ ~ ~ 1.5 .5
execute if block ^ ^ ^1 minecraft:stone_brick_wall run tag @s add Swing
execute if block ^ ^ ^1 minecraft:stone_brick_wall run tag @s add Action
execute if block ^ ^ ^1 minecraft:chiseled_stone_bricks run playsound minecraft:block.metal.break hostile @a ~ ~ ~ 1.5 .5
execute if block ^ ^ ^1 minecraft:chiseled_stone_bricks run tag @s add Swing
execute if block ^ ^ ^1 minecraft:chiseled_stone_bricks run tag @s add Action

#Swing
execute if entity @s[tag=Swing] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Swing,scores={lifetime=1..}] if block ^ ^ ^1 minecraft:stone_brick_wall run fill ^ ^ ^1 ^ ^4 ^1 minecraft:air replace minecraft:stone_brick_wall
execute if entity @s[tag=Swing,scores={lifetime=1..}] if block ^ ^ ^1 minecraft:chiseled_stone_bricks run fill ^ ^ ^1 ^ ^2 ^1 minecraft:air replace minecraft:chiseled_stone_bricks
execute if entity @s[tag=Swing,scores={lifetime=1..3}] as @e[type=zombie,tag=NabooruKnuckle] at @s run tp @s ^ ^ ^.05 ~-8 0
execute if entity @s[tag=Swing,scores={lifetime=10..21}] as @e[type=zombie,tag=NabooruKnuckle] at @s run tp @s ~ ~ ~ ~8 ~
execute if entity @s[tag=Swing,scores={lifetime=26..40}] as @e[type=zombie,tag=NabooruKnuckle] at @s run tp @s ^ ^ ^.05 ~-8 0
execute if entity @s[tag=Swing,scores={lifetime=41..43}] as @e[type=zombie,tag=NabooruKnuckle] at @s run tp @s ~ ~ ~ ~18 ~
execute if entity @s[tag=Swing,scores={lifetime=1}] run data merge entity @s {Pose:{RightArm:[-90f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=2}] run data merge entity @s {Pose:{RightArm:[-100f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=3}] run data merge entity @s {Pose:{RightArm:[-110f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=4}] run data merge entity @s {Pose:{RightArm:[-120f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=5}] run data merge entity @s {Pose:{RightArm:[-130f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=10}] run data merge entity @s {Pose:{RightArm:[-100f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=11}] run data merge entity @s {Pose:{RightArm:[-85f,-35f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=12}] run data merge entity @s {Pose:{RightArm:[-70f,-30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=13}] run data merge entity @s {Pose:{RightArm:[-55f,-25f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=14}] run data merge entity @s {Pose:{RightArm:[-40f,-20f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=15}] run data merge entity @s {Pose:{RightArm:[-25f,-15f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=16}] run data merge entity @s {Pose:{RightArm:[-10f,-10f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=17}] run data merge entity @s {Pose:{RightArm:[5f,-5f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=18}] run data merge entity @s {Pose:{RightArm:[20f,0f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=19}] run data merge entity @s {Pose:{RightArm:[35f,5f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=20}] run data merge entity @s {Pose:{RightArm:[50f,10f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=21}] run data merge entity @s {Pose:{RightArm:[65f,15f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=22}] run data merge entity @s {Pose:{RightArm:[70f,30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=23}] run data merge entity @s {Pose:{RightArm:[70f,30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=24}] run data merge entity @s {Pose:{RightArm:[70f,20f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=25}] run data merge entity @s {Pose:{RightArm:[70f,10f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=26}] run data merge entity @s {Pose:{RightArm:[70f,0f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=27}] run data merge entity @s {Pose:{RightArm:[70f,-10f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=28}] run data merge entity @s {Pose:{RightArm:[55f,-20f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=29}] run data merge entity @s {Pose:{RightArm:[40f,-30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=30}] run data merge entity @s {Pose:{RightArm:[25f,-30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=31}] run data merge entity @s {Pose:{RightArm:[10f,-30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=32}] run data merge entity @s {Pose:{RightArm:[-5f,-30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=33}] run data merge entity @s {Pose:{RightArm:[-20f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=34}] run data merge entity @s {Pose:{RightArm:[-35f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=35}] run data merge entity @s {Pose:{RightArm:[-50f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=36}] run data merge entity @s {Pose:{RightArm:[-65f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=37}] run data merge entity @s {Pose:{RightArm:[-80f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=38}] run data merge entity @s {Pose:{RightArm:[-95f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=38}] run data merge entity @s {Pose:{RightArm:[-110f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=39}] run data merge entity @s {Pose:{RightArm:[-130f,-20f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=40}] run data merge entity @s {Pose:{RightArm:[-120f,-30f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=41}] run data merge entity @s {Pose:{RightArm:[-110f,-35f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=42}] run data merge entity @s {Pose:{RightArm:[-100f,-40f,90f]}}
execute if entity @s[tag=Swing,scores={lifetime=50..}] run function ocarina_of_time:moving_things/spirit_temple/enemies/nabooru_knuckle/reset

#Slash
execute if entity @s[tag=Slash] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Slash,scores={lifetime=1..20}] as @e[type=zombie,tag=NabooruKnuckle] at @s facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.05 ~ 0
execute if entity @s[tag=Slash,scores={lifetime=1}] run data merge entity @s {Pose:{RightArm:[-90f,-40f,90f]}}
execute if entity @s[tag=Slash,scores={lifetime=2}] run data merge entity @s {Pose:{RightArm:[-95f,-37f,85f]}}
execute if entity @s[tag=Slash,scores={lifetime=3}] run data merge entity @s {Pose:{RightArm:[-100f,-35f,80f]}}
execute if entity @s[tag=Slash,scores={lifetime=4}] run data merge entity @s {Pose:{RightArm:[-105f,-32f,75f]}}
execute if entity @s[tag=Slash,scores={lifetime=5}] run data merge entity @s {Pose:{RightArm:[-109f,-30f,70f]}}
execute if entity @s[tag=Slash,scores={lifetime=6}] run data merge entity @s {Pose:{RightArm:[-112f,-28f,65f]}}
execute if entity @s[tag=Slash,scores={lifetime=7}] run data merge entity @s {Pose:{RightArm:[-115f,-25f,60f]}}
execute if entity @s[tag=Slash,scores={lifetime=8}] run data merge entity @s {Pose:{RightArm:[-128f,-22f,55f]}}
execute if entity @s[tag=Slash,scores={lifetime=9}] run data merge entity @s {Pose:{RightArm:[-121f,-20f,50f]}}
execute if entity @s[tag=Slash,scores={lifetime=10}] run data merge entity @s {Pose:{RightArm:[-124f,-18f,45f]}}
execute if entity @s[tag=Slash,scores={lifetime=11}] run data merge entity @s {Pose:{RightArm:[-127f,-15f,40f]}}
execute if entity @s[tag=Slash,scores={lifetime=12}] run data merge entity @s {Pose:{RightArm:[-130f,-13f,30f]}}
execute if entity @s[tag=Slash,scores={lifetime=13}] run data merge entity @s {Pose:{RightArm:[-133f,-10f,20f]}}
execute if entity @s[tag=Slash,scores={lifetime=14}] run data merge entity @s {Pose:{RightArm:[-136f,-5f,10f]}}
execute if entity @s[tag=Slash,scores={lifetime=15}] run data merge entity @s {Pose:{RightArm:[-140f,0f,0f]}}

execute if entity @s[tag=Slash,scores={lifetime=16}] run data merge entity @s {Pose:{RightArm:[-120f,0f,0f]}}
execute if entity @s[tag=Slash,scores={lifetime=17}] run data merge entity @s {Pose:{RightArm:[-100f,0f,0f]}}
execute if entity @s[tag=Slash,scores={lifetime=18}] run data merge entity @s {Pose:{RightArm:[-80f,-5f,0f]}}
execute if entity @s[tag=Slash,scores={lifetime=19}] run data merge entity @s {Pose:{RightArm:[-60f,-10f,0f]}}
execute if entity @s[tag=Slash,scores={lifetime=20}] run data merge entity @s {Pose:{RightArm:[-40f,-10f,0f]}}
execute if entity @s[tag=Slash,scores={lifetime=21}] run data merge entity @s {Pose:{RightArm:[-20f,-10f,0f]}}
execute if entity @s[tag=Slash,scores={lifetime=22}] run data merge entity @s {Pose:{RightArm:[10f,-10f,0f]}}
execute if entity @s[tag=Slash,scores={lifetime=40..}] run function ocarina_of_time:moving_things/spirit_temple/enemies/nabooru_knuckle/reset

#Damage
execute unless entity @s[tag=Cooldown] if entity @s[tag=Swing,scores={lifetime=13..20}] positioned ^ ^ ^1 if entity @a[distance=..2] run effect give @a minecraft:instant_damage 1 0 true
execute unless entity @s[tag=Cooldown] if entity @s[tag=Swing,scores={lifetime=13..20}] positioned ^ ^ ^1 if entity @a[distance=..2] run tag @s add Cooldown
execute unless entity @s[tag=Cooldown] if entity @s[tag=Swing,scores={lifetime=26..30}] positioned ^ ^ ^1 if entity @a[distance=..2] run effect give @a minecraft:instant_damage 1 0 true
execute unless entity @s[tag=Cooldown] if entity @s[tag=Swing,scores={lifetime=26..30}] positioned ^ ^ ^1 if entity @a[distance=..2] run tag @s add Cooldown

execute unless entity @s[tag=Cooldown] if entity @s[tag=Slash,scores={lifetime=16..20}] positioned ^ ^ ^1 if entity @a[distance=..2] run effect give @a minecraft:instant_damage 1 0 true
execute unless entity @s[tag=Cooldown] if entity @s[tag=Slash,scores={lifetime=16..20}] positioned ^ ^ ^1 if entity @a[distance=..2] run tag @s add Cooldown

#Cooldown
execute if entity @s[tag=Cooldown] run scoreboard players add @s time 1
execute if entity @s[scores={time=20..}] run tag @s remove Cooldown
execute if entity @s[scores={time=20..}] run scoreboard players set @s time 0

#Sounds
execute if entity @s[tag=Swing,scores={lifetime=10}] run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=Swing,scores={lifetime=30}] run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 .7
execute if entity @s[tag=Slash,scores={lifetime=14}] run playsound minecraft:entity.ravager.attack hostile @a ~ ~ ~ 1 .7
