#Limbs
execute rotated ~ 0 run tp @e[type=zombie,tag=TailHealth] ^ ^-1.9 ^-2.7 ~ 0
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=BigStun] unless entity @s[tag=Final,scores={time=2..}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonTail] ^ ^-1.7 ^-1.8 ~ 0
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=BigStun] unless entity @s[tag=Final,scores={time=2..}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonRightArm] ^1.1 ^.1 ^ ~ 0
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=BigStun] unless entity @s[tag=Final,scores={time=2..}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonLeftArm] ^-1.1 ^.1 ^ ~ 0
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=BigStun] unless entity @s[tag=Final,scores={time=2..}] rotated ~ 0 run tp @e[type=zombie,tag=GanonHead] ^ ^.5 ^1.3 ~ 0

#Far
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2,scores={lifetime=1..20}] unless entity @a[distance=..7] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:118}}]}
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2,scores={lifetime=1..20}] unless entity @a[distance=..7] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2,scores={lifetime=1..20}] unless entity @a[distance=..7] run tag @s remove Cooldown
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2,scores={lifetime=1..20}] unless entity @a[distance=..7] run tag @s remove Lost2
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2,scores={lifetime=1..20}] unless entity @a[distance=..7] run tag @s remove Close
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2,scores={lifetime=1..20}] unless entity @a[distance=..7] run scoreboard players set @s lifetime 0

#Right
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=Close] unless entity @a[distance=..5] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 unless entity @s[distance=...25] at @s run function ocarina_of_time:moving_things/final_platform/boss/direction/right
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=Close] unless entity @a[distance=..8] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 unless entity @s[distance=...25] at @s run function ocarina_of_time:moving_things/final_platform/boss/direction/right

#Left
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=Close] unless entity @a[distance=..5] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 unless entity @s[distance=...25] at @s run function ocarina_of_time:moving_things/final_platform/boss/direction/left
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=Close] unless entity @a[distance=..8] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 unless entity @s[distance=...25] at @s run function ocarina_of_time:moving_things/final_platform/boss/direction/left

#Foward
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=Close] unless entity @a[distance=..5] positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 if entity @s[distance=...25] at @s if block ^ ^-2 ^1 minecraft:air if block ^-.4 ^-2 ^ minecraft:air if block ^.4 ^-2 ^ minecraft:air if block ^-.4 ^-2 ^1 minecraft:air if block ^.4 ^-2 ^1 minecraft:air run tp @s ^ ^ ^.1 ~ 0
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=ShakeHead] unless entity @s[tag=Close] unless entity @a[distance=..8] positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 if entity @s[distance=...25] at @s if block ^ ^-2 ^1 minecraft:air if block ^-.4 ^-2 ^ minecraft:air if block ^.4 ^-2 ^ minecraft:air if block ^-.4 ^-2 ^1 minecraft:air if block ^.4 ^-2 ^1 minecraft:air run tp @s ^ ^ ^.1 ~ 0

#Walls
execute if block ^ ^-4 ^2 minecraft:stone if block ^ ^-1 ^2 minecraft:red_nether_bricks run tag @s add SwingRight
execute if block ^ ^-4 ^2 minecraft:polished_diorite if block ^ ^-1 ^2 minecraft:red_nether_bricks run tag @s add SwingRight
execute if block ^ ^-4 ^2 minecraft:granite if block ^ ^-1 ^2 minecraft:red_nether_bricks run tag @s add SwingRight
execute if block ^ ^-4 ^2 minecraft:polished_granite if block ^ ^-1 ^2 minecraft:red_nether_bricks run tag @s add SwingRight
execute if block ^ ^-4 ^2 minecraft:diorite if block ^ ^-1 ^2 minecraft:red_nether_bricks run tag @s add SwingRight
execute if block ^ ^-4 ^2 minecraft:polished_andesite if block ^ ^-1 ^2 minecraft:red_nether_bricks run tag @s add SwingRight

#Close
execute if entity @a[distance=..5] run tag @s add Close
execute if entity @s[tag=Close] unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=SwingLeft] run scoreboard players add @s lifetime 1
execute positioned ~ ~-2 ~ unless entity @a[distance=..1] unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2] if entity @s[scores={lifetime=1..10}] at @s facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.05 ~ 0
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=SwingLeft] unless entity @s[tag=Lost2] if entity @s[scores={lifetime=11}] run tag @s add SwingRight

#Swing 1
execute if entity @s[tag=SwingRight] run function ocarina_of_time:moving_things/final_platform/boss/right_swing
execute if entity @s[tag=SwingRight] run function ocarina_of_time:moving_things/final_platform/boss/right_swing

#Swing 2
execute if entity @s[tag=SwingLeft] run function ocarina_of_time:moving_things/final_platform/boss/left_swing
execute if entity @s[tag=SwingLeft] run function ocarina_of_time:moving_things/final_platform/boss/left_swing

#Lost/Turn Around
execute unless entity @s[tag=ShakeHead] unless entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=Lost2] positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 unless entity @s[distance=..1.4142] run tag @s add Lost
execute if entity @s[tag=Lost] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Lost] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] run tag @s add Lost2
execute if entity @s[tag=Lost] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] run tag @s remove Lost

execute if entity @s[tag=Lost2,scores={lifetime=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:123}}]}
execute if entity @s[tag=Lost2,scores={lifetime=15}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:124}}]}
execute if entity @s[tag=Lost2,scores={lifetime=30}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:123}}]}

execute if entity @s[tag=Lost2,scores={lifetime=41}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:118}}]}
execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=41..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/right2
execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=41..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/left2

execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=55..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/right2
execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=55..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/left2

execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=70..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/right2
execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=70..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/left2

execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=80..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/right2
execute positioned ^ ^-2 ^1 unless entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=80..}] run function ocarina_of_time:moving_things/final_platform/boss/direction/left2

execute positioned ^ ^-2 ^1 if entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=41..}] if block ^ ^-2 ^-.5 minecraft:air if block ^-.4 ^-2 ^-.5 minecraft:air if block ^.4 ^-2 ^-.5 minecraft:air run tp @s ^ ^ ^-.5
execute positioned ^ ^-2 ^1 if entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=41..}] unless block ^ ^-2 ^-.5 minecraft:air run function ocarina_of_time:moving_things/final_platform/boss/spot
execute positioned ^ ^-2 ^1 if entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=41..}] unless block ^.4 ^-2 ^-.5 minecraft:air run function ocarina_of_time:moving_things/final_platform/boss/spot
execute positioned ^ ^-2 ^1 if entity @a[distance=..2] at @s if entity @s[tag=Lost2,scores={lifetime=41..}] unless block ^-.4 ^-2 ^-.5 minecraft:air run function ocarina_of_time:moving_things/final_platform/boss/spot

execute if entity @s[tag=Lost2,scores={lifetime=80..}] positioned ^ ^ ^1 facing entity @p eyes positioned ^ ^ ^-1 if entity @s[distance=...6] run function ocarina_of_time:moving_things/final_platform/boss/spot

#Shake Head
execute unless entity @s[tag=Stun] unless entity @s[tag=SwingRight] unless entity @s[tag=SwingLeft] if entity @s[tag=ShakeHead] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=12}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:123}}]}
execute if entity @s[scores={GameTimer=14}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:124}}]}
execute if entity @s[scores={GameTimer=16}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:123}}]}
execute if entity @s[scores={GameTimer=18}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:124}}]}
execute if entity @s[scores={GameTimer=20}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:118}}]}
execute if entity @s[scores={GameTimer=30..}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={GameTimer=30..}] run tag @s remove ShakeHead
execute if entity @s[scores={GameTimer=30..}] run scoreboard players set @s GameTimer 0

#Stun
execute if entity @s[tag=Stun] run tag @s remove ShakeHead
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[tag=Stun,scores={time=1}] run tag @s remove Lost
execute if entity @s[tag=Stun,scores={time=1}] run tag @s remove Lost2
execute if entity @s[tag=Stun,scores={time=1}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Stun,scores={time=1}] run scoreboard players set @s timer 0
execute if entity @s[tag=Stun,scores={time=1}] run tag @s remove SwingRight
execute if entity @s[tag=Stun,scores={time=1}] run tag @s remove SwingLeft
execute if entity @s[tag=Stun,scores={time=1}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {Pose:{RightArm:[-130f,-30f,30f]}}
execute if entity @s[tag=Stun,scores={time=1}] run data merge entity @e[type=armor_stand,tag=GanonLeftArm,limit=1] {Pose:{LeftArm:[-130f,30f,-30f]}}
execute if entity @s[tag=Stun,scores={time=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:122}}]}
execute if entity @s[tag=Stun,tag=Cooldown,scores={time=1..59}] run scoreboard players set @s time 60

execute if entity @s[tag=Stun,scores={time=70..}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {Pose:{RightArm:[-70f,0f,10f]}}
execute if entity @s[tag=Stun,scores={time=70..}] run data merge entity @e[type=armor_stand,tag=GanonLeftArm,limit=1] {Pose:{LeftArm:[-50f,-10f,-10f]}}
execute if entity @s[tag=Stun,scores={time=70..}] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:118}}]}
execute if entity @s[tag=Stun,scores={time=70..}] run function ocarina_of_time:moving_things/final_platform/boss/reset

#Tail Invulnerability
execute if entity @s[tag=Lost] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=Cooldown] run data merge entity @e[type=zombie,tag=TailHealth,limit=1] {Invulnerable:0b}
execute if entity @s[tag=Lost2] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=Cooldown] run data merge entity @e[type=zombie,tag=TailHealth,limit=1] {Invulnerable:0b}
execute if entity @s[tag=Stun] unless entity @s[tag=Final] unless entity @s[tag=BigStun] unless entity @s[tag=Cooldown] run data merge entity @e[type=zombie,tag=TailHealth,limit=1] {Invulnerable:0b}

execute if entity @s[tag=BigStun] unless entity @s[tag=Stun] unless entity @s[tag=Lost] unless entity @s[tag=Lost2] run data merge entity @e[type=zombie,tag=TailHealth,limit=1] {Invulnerable:1b}
execute if entity @s[tag=Cooldown] run data merge entity @e[type=zombie,tag=TailHealth,limit=1] {Invulnerable:1b}
execute if entity @s[tag=Close] unless entity @s[tag=Stun] unless entity @s[tag=Lost] unless entity @s[tag=Lost2] run data merge entity @e[type=zombie,tag=TailHealth,limit=1] {Invulnerable:1b}

#Big Stun
execute if entity @s[tag=BigStun,tag=Stun] run scoreboard players set @s time 0
execute if entity @s[tag=BigStun] run tag @s remove Stun
execute if entity @s[tag=BigStun] run scoreboard players add @s time 1
execute if entity @s[tag=BigStun,scores={time=1..}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=BigStun,scores={time=1..}] run scoreboard players set @s timer 0
execute if entity @s[tag=BigStun,scores={time=1..}] run tag @s remove Lost
execute if entity @s[tag=BigStun,scores={time=1..}] run tag @s remove Lost2
execute if entity @s[tag=BigStun,scores={time=1..}] run tag @s remove SwingRight
execute if entity @s[tag=BigStun,scores={time=1..}] run tag @s remove SwingLeft
execute if entity @s[tag=BigStun,scores={time=1}] run data merge entity @e[type=zombie,tag=GanonHead,limit=1] {Invulnerable:1b}
execute if entity @s[tag=BigStun,scores={time=1}] run scoreboard players set @e[type=armor_stand,tag=PrincessZelda5] text 2
execute if entity @s[tag=BigStun,scores={time=1}] run function ocarina_of_time:moving_things/final_platform/boss/fire_wall/remove
execute if entity @s[tag=BigStun,scores={time=1}] run tp @s ~ ~-1.5 ~
execute if entity @s[tag=BigStun,scores={time=1}] rotated ~ 0 run tp @e[type=zombie,tag=GanonHead] ^ ^-.8 ^2.5 ~ 0
execute if entity @s[tag=BigStun,scores={time=1}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonTail] ^ ^-1.8 ^-2.5 ~ 0
execute if entity @s[tag=BigStun,scores={time=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:125}}]}
execute if entity @s[tag=BigStun,scores={time=1}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {HandItems:[{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:126}}]}
execute if entity @s[tag=BigStun,scores={time=1}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {Pose:{LeftArm:[-70f,0f,-10f]}}
execute if entity @s[tag=BigStun,scores={time=1}] run data merge entity @e[type=armor_stand,tag=GanonLeftArm,limit=1] {Pose:{LeftArm:[-70f,0f,0f]}}
execute if entity @s[tag=BigStun,scores={time=1..10}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonRightArm] ^1.1 ^-1.1 ^1.8 ~ 0
execute if entity @s[tag=BigStun,scores={time=1..10}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonLeftArm] ^-1.1 ^-.3 ^.8 ~ 0
execute if entity @s[tag=BigStun,scores={time=10}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"selector":"@p"},{"text":"! The Master Sword is here! Hurry up!"}]
execute if entity @s[tag=BigStun,scores={time=10}] as @p at @s facing entity @e[tag=PrincessZelda5] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0

execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=Halfway,tag=BigStun,scores={time=300..}] run tag @e[type=zombie,tag=GanonHead] remove Final
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=300..}] run data merge entity @e[type=zombie,tag=GanonHead,limit=1] {Invulnerable:0b}
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=300..}] run data merge entity @e[type=zombie,tag=TailHealth,limit=1] {Invulnerable:0b}
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=300..}] run function ocarina_of_time:moving_things/final_platform/boss/fire_wall/add
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=320..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:118}}]}
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=320..}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {HandItems:[{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:120}},{}]}
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=320..}] run tp @s ~ ~1.5 ~
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=320..}] run data merge entity @e[type=armor_stand,tag=GanonLeftArm,limit=1] {Pose:{LeftArm:[-50f,-10f,-10f]}}
execute positioned -601 52 278 if entity @a[distance=..18] at @s if entity @s[tag=BigStun,scores={time=320..}] run function ocarina_of_time:moving_things/final_platform/boss/reset

#Final Stun
execute if entity @s[tag=Final,tag=Stun] run scoreboard players set @s time 0
execute if entity @s[tag=Final] run tag @s remove Stun
execute if entity @s[tag=Final] run scoreboard players add @s time 1
execute if entity @s[tag=Final,scores={time=1..}] run tag @s remove Lost
execute if entity @s[tag=Final,scores={time=1..}] run tag @s remove Lost2
execute if entity @s[tag=Final,scores={time=1..}] run tag @s remove SwingRight
execute if entity @s[tag=Final,scores={time=1..}] run tag @s remove SwingLeft
execute if entity @s[tag=Final,scores={time=1..}] run scoreboard players set @s lifetime 0
execute if entity @s[tag=Final,scores={time=1..}] run scoreboard players set @s timer 0
execute if entity @s[tag=Final,scores={time=1}] run function ocarina_of_time:moving_things/final_platform/boss/fire_wall/remove
execute if entity @s[tag=Final,scores={time=1}] run tp @s -601 53.2 276 -90 0
execute if entity @s[tag=Final,scores={time=1..10}] run tp @a -594 52 276 90 0
execute if entity @s[tag=Final,scores={time=1}] run tp @e[type=armor_stand,tag=PrincessZelda5] -594 52 270 45 0
execute if entity @s[tag=Final,scores={time=1}] run data merge entity @e[type=armor_stand,tag=PrincessZelda5,limit=1] {Pose:{LeftArm:[-90f,0f,0f],RightArm:[-90f,0f,0f]}}

execute if entity @s[tag=Final,scores={time=3..10}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:125}}]}
execute if entity @s[tag=Final,scores={time=3..10}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {HandItems:[{},{id:"minecraft:cobblestone",Count:1b,tag:{CustomModelData:126}}]}
execute if entity @s[tag=Final,scores={time=3..10}] run data merge entity @e[type=armor_stand,tag=GanonRightArm,limit=1] {Pose:{LeftArm:[-70f,0f,-10f]}}
execute if entity @s[tag=Final,scores={time=3..10}] run data merge entity @e[type=armor_stand,tag=GanonLeftArm,limit=1] {Pose:{LeftArm:[-70f,0f,0f]}}
execute if entity @s[tag=Final,scores={time=3..10}] rotated ~ 0 run tp @e[type=zombie,tag=GanonHead] ^ ^-.8 ^2.5 -90 0
execute if entity @s[tag=Final,scores={time=3..10}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonTail] ^ ^-1.8 ^-2.5 -90 0
execute if entity @s[tag=Final,scores={time=3..10}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonRightArm] ^1.1 ^-1.1 ^1.8 -90 0
execute if entity @s[tag=Final,scores={time=3..10}] rotated ~ 0 run tp @e[type=armor_stand,tag=GanonLeftArm] ^-1.1 ^-.3 ^.8 -90 0

execute if entity @s[tag=Final,scores={time=10}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 2
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^1 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^2 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^3 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^4 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^5 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^6 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^7 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^8 0.2 0.2 0.2 1 1
execute if entity @s[tag=Final,scores={time=10..120}] at @e[type=armor_stand,tag=PrincessZelda5] run particle minecraft:composter ^ ^1.3 ^9 0.2 0.2 0.2 1 1

execute if entity @s[tag=Final,scores={time=50}] as @a at @s facing entity @e[tag=PrincessZelda5] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
execute if entity @s[tag=Final,scores={time=70}] run tellraw @a ["",{"text":"Princess Zelda: ","color":"gold"},{"text":"I'm using my power to hold the Evil King! You use your sword and deliver the final blow!"}]
execute if entity @s[tag=Final,scores={time=120}] run data merge entity @e[type=armor_stand,tag=PrincessZelda5,limit=1] {Pose:{Head:[40f,0f,0f],LeftArm:[-20f,0f,10f],RightArm:[-20f,0f,-10f]}}
execute if entity @s[tag=Final,scores={time=120..}] run tag @e[type=zombie,tag=GanonHead] remove Resist
execute if entity @s[tag=Final,scores={time=120..}] run effect clear @e[type=zombie,tag=GanonHead] resistance
execute if entity @s[tag=Final,scores={time=120..}] unless entity @a[nbt={SelectedItem:{tag:{display:{Name:"\"Master Sword\""}}}}] run data merge entity @e[type=zombie,tag=GanonHead,limit=1] {Invulnerable:1b}
execute if entity @s[tag=Final,scores={time=120..}] if entity @a[nbt={SelectedItem:{tag:{display:{Name:"\"Master Sword\""}}}}] run data merge entity @e[type=zombie,tag=GanonHead,limit=1] {Invulnerable:0b}

#Sounds
execute if entity @s[tag=Stun,scores={time=1}] run playsound minecraft:entity.ravager.roar hostile @a ~ ~ ~ 2 2
execute if entity @s[scores={GameTimer=1}] run playsound minecraft:item.flintandsteel.use hostile @a ~ ~ ~ 1 .5
