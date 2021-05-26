#Randomizer
scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=7..}] run scoreboard players set @s ArrowCount 0

#Rotation
data modify entity @s Rotation[1] set value 0f
execute if block ~ ~-.2 ~ minecraft:air facing entity @p feet rotated ~ 0 run tp @s ~ ~-.2 ~ ~ 0
execute unless block ~ ~-.2 ~ minecraft:air facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

#Far Choices
execute unless entity @s[tag=Stun] unless entity @s[tag=CloseAction] unless entity @a[distance=..5] run tag @s add FarAction
execute unless entity @s[tag=Stun] if entity @s[tag=FarAction] run scoreboard players add @s timer 1
execute unless entity @s[tag=Stun] if entity @s[tag=FarAction] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Stun] unless entity @s[tag=CloseAction] if entity @s[scores={timer=1}] run tag @s add Block

#Walk
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1,ArrowCount=0..2}] run tag @s add WalkForward
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1,ArrowCount=0..2}] run tag @s add WalkForward
execute unless entity @s[tag=Stun] if entity @s[tag=WalkForward,scores={timer=2}] run scoreboard players add @s ArrowCount 1
execute unless entity @s[tag=Stun] if entity @s[tag=WalkForward,scores={timer=2..49}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=WalkForward,scores={timer=51..}] run function ocarina_of_time:enemies/stalfos/reset

#Strafe Right
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1,ArrowCount=3..4}] run tag @s add StrafeRight
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1,ArrowCount=3..4}] run tag @s add StrafeRight
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={timer=1..25}] facing entity @p feet rotated ~ 0 if block ^.6 ^ ^ minecraft:air if block ^.6 ^ ^-.4 minecraft:air if block ^.6 ^ ^.4 minecraft:air run tp @s ^.2 ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={timer=1..25}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^ minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={timer=1..25}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={timer=1..25}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={timer=26..}] run function ocarina_of_time:enemies/stalfos/reset

#Strafe Left
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1,ArrowCount=5..6}] run tag @s add StrafeLeft
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1,ArrowCount=5..6}] run tag @s add StrafeLeft
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={timer=1..25}] facing entity @p feet rotated ~ 0 if block ^-.6 ^ ^ minecraft:air if block ^-.6 ^ ^-.4 minecraft:air if block ^-.6 ^ ^.4 minecraft:air run tp @s ^-.2 ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={timer=1..25}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^ minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={timer=1..25}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={timer=1..25}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={timer=26..}] run function ocarina_of_time:enemies/stalfos/reset

#Close Choices
#Choices
execute unless entity @s[tag=Stun] unless entity @s[tag=FarAction] if entity @a[distance=..5] run tag @s add CloseAction
execute unless entity @s[tag=Stun] if entity @s[tag=CloseAction] run scoreboard players add @s lifetime 1
execute unless entity @s[tag=Stun] if entity @s[tag=CloseAction] run scoreboard players set @s timer 0

#Walk
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=0..1}] run tag @s add WalkForward
execute unless entity @s[tag=Stun] if entity @s[tag=WalkForward,scores={lifetime=2..49}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=WalkForward,scores={lifetime=50..}] run function ocarina_of_time:enemies/stalfos/reset

#Wait
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=2}] run tag @s add Wait
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=2}] run tag @s add Block
execute unless entity @s[tag=Stun] if entity @s[tag=Wait,scores={lifetime=1}] run data merge entity @s {NoAI:1b}
execute unless entity @s[tag=Stun] if entity @s[tag=Wait,scores={lifetime=45}] run data merge entity @s {NoAI:0b}
execute unless entity @s[tag=Stun] if entity @s[tag=Wait,scores={lifetime=50..}] run function ocarina_of_time:enemies/stalfos/reset

#Jump Attack
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=3}] run tag @s add JumpAttack
execute unless entity @s[tag=Stun] if entity @s[tag=JumpAttack,scores={lifetime=2}] run scoreboard players add @s ArrowCount 1
execute unless entity @s[tag=Stun] if entity @s[tag=JumpAttack,scores={lifetime=1..15}] facing entity @p feet rotated ~ 0 if block ^ ^ ^.6 minecraft:air if block ^.4 ^ ^.6 minecraft:air if block ^-.4 ^ ^.6 minecraft:air run tp @s ^ ^.1 ^.2 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=JumpAttack,scores={lifetime=30..}] run function ocarina_of_time:enemies/stalfos/reset

#Back Jump
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=4}] run tag @s add BackJump
execute unless entity @s[tag=Stun] if entity @s[tag=BackJump,scores={lifetime=1..13}] facing entity @p feet rotated ~ 0 if block ^ ^ ^-.6 minecraft:air if block ^.4 ^ ^-.6 minecraft:air if block ^-.4 ^ ^-.6 minecraft:air run tp @s ^ ^.1 ^-.4 ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=BackJump,scores={lifetime=25..}] run function ocarina_of_time:enemies/stalfos/reset

#Strafe Right
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=5}] run tag @s add StrafeRight
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=5}] run tag @s add Block
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 if block ^.6 ^ ^ minecraft:air if block ^.6 ^ ^-.4 minecraft:air if block ^.6 ^ ^.4 minecraft:air run tp @s ^.2 ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^ minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 unless block ^.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeRight,scores={lifetime=26..}] run function ocarina_of_time:enemies/stalfos/reset

#Strafe Left
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=6}] run tag @s add StrafeLeft
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=6}] run tag @s add Block
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 if block ^-.6 ^ ^ minecraft:air if block ^-.6 ^ ^-.4 minecraft:air if block ^-.6 ^ ^.4 minecraft:air run tp @s ^-.2 ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^ minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^-.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={lifetime=1..25}] facing entity @p feet rotated ~ 0 unless block ^-.6 ^ ^.4 minecraft:air run tp @s ^ ^ ^ ~ 0
execute unless entity @s[tag=Stun] if entity @s[tag=StrafeLeft,scores={lifetime=26..}] run function ocarina_of_time:enemies/stalfos/reset

#Shield
#Open
execute unless entity @s[tag=Block] run data merge entity @e[type=armor_stand,tag=StalfosShield,limit=1,sort=nearest] {Pose:{LeftArm:[90f,0f,0f]}}
execute unless entity @s[tag=Block] as @e[type=armor_stand,tag=StalfosShield,limit=1,sort=nearest] facing entity @p feet rotated ~ 0 run tp @s ^.3 ^ ^.7 ~ 0
execute unless entity @s[tag=Block] run data merge entity @s {Invulnerable:0b}
#Block
execute if entity @s[tag=Block] run data merge entity @e[type=armor_stand,tag=StalfosShield,limit=1,sort=nearest] {Pose:{LeftArm:[135f,90f,45f]}}
execute if entity @s[tag=Block] as @e[type=armor_stand,tag=StalfosShield,limit=1,sort=nearest] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.3 ~ 0
execute if entity @s[tag=Block] run data merge entity @s {Invulnerable:1b}

#Hurt
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players add @s ArrowCount 1

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1 ~ .1 .3 .1 1 1
execute if entity @s[scores={GameTimer=111..}] run tag @s remove Stun
execute if entity @s[scores={GameTimer=10..110},nbt={HurtTime:10s}] run tag @s remove Stun
execute if entity @s[scores={GameTimer=111..}] run scoreboard players set @s GameTimer 0
execute if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s GameTimer 0

#Arrow
execute positioned ~ ~1 ~ if entity @e[type=arrow,distance=..1.5] unless entity @s[tag=Block] run tag @s add Stun

#Sounds
execute unless entity @s[tag=Stun] if entity @s[scores={timer=1,ArrowCount=0..2}] run playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 1 1.1
execute unless entity @s[tag=Stun] if entity @s[scores={lifetime=1,ArrowCount=0..1}] run playsound minecraft:entity.ravager.celebrate hostile @a ~ ~ ~ 1 1.1
execute unless entity @s[tag=Stun] if entity @s[tag=JumpAttack,scores={lifetime=15}] run playsound minecraft:entity.player.attack.strong hostile @a ~ ~ ~ 1 1
