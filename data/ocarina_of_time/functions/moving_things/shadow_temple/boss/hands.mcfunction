execute unless entity @s[tag=LeftSquish] unless entity @s[tag=LeftShake] unless entity @s[tag=RightSquish] unless entity @s[tag=RightShake] unless entity @a[y=20.01,dy=0] run effect clear @a minecraft:levitation

#Rotate
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[tag=BongoHand1] positioned ^6 ^ ^ if entity @a[distance=..10] as @e[type=armor_stand,tag=BongoHand] run tp @s ^ ^ ^ ~-6 ~

execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[tag=BongoHand1,tag=Left] unless entity @s[tag=Right] positioned ^6 ^ ^ as @e[type=armor_stand,tag=BongoHand] run tp @s ^ ^ ^ ~6 ~
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[tag=BongoHand1,tag=Left] unless entity @s[tag=Right] positioned ^6 ^ ^ as @e[type=armor_stand,tag=BongoEye] run tp @s ^ ^ ^ ~6 ~
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[tag=BongoHand1,tag=Right] unless entity @s[tag=Left] positioned ^6 ^ ^ as @e[type=armor_stand,tag=BongoHand] run tp @s ^ ^ ^ ~-6 ~
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[tag=BongoHand1,tag=Right] unless entity @s[tag=Left] positioned ^6 ^ ^ as @e[type=armor_stand,tag=BongoEye] run tp @s ^ ^ ^ ~-6 ~

execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] unless entity @s[tag=Middle] run tag @s remove Left
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] unless entity @s[tag=Middle] run tag @s remove Right

execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] as @e[type=armor_stand,tag=BongoEye] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] run tag @e[type=armor_stand,tag=BongoHand] add Right
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] as @e[type=armor_stand,tag=BongoEye] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] run tag @e[type=armor_stand,tag=BongoHand] add Left
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] as @e[type=armor_stand,tag=BongoEye] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.5] run tag @e[type=armor_stand,tag=BongoHand] add Middle
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] as @e[type=armor_stand,tag=BongoEye] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..0.5] run tag @e[type=armor_stand,tag=BongoHand] remove Middle

execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] as @e[type=armor_stand,tag=BongoEye] positioned 1651 21 963 run tp @s ^ ^5 ^-15

#Drum
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] run scoreboard players add @s ArrowCount 1

execute if entity @s[scores={ArrowCount=1}] run tp @s[tag=BongoHand1] ~ ~-2.5 ~
execute if entity @s[scores={ArrowCount=2}] run scoreboard players set @a HoverJump 1
execute if entity @s[scores={ArrowCount=2}] at @a if entity @a[y=20.01,dy=0] unless block ~ ~-2 ~ minecraft:netherrack unless block ~ ~-1 ~ minecraft:netherrack run effect give @a minecraft:levitation 1 50 true
execute if entity @s[tag=BongoHand1,scores={ArrowCount=3}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 1
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] unless entity @s[tag=Action] if entity @s[scores={ArrowCount=5}] run tp @s[tag=BongoHand1] ~ 22 ~
execute if entity @s[scores={ArrowCount=5}] run scoreboard players add @s timer 1

execute if entity @s[scores={ArrowCount=9}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=10}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[tag=BongoHand2,scores={ArrowCount=11}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 .8
execute if entity @s[scores={ArrowCount=13}] run tp @s[tag=BongoHand2] ~ 22 ~

execute if entity @s[scores={ArrowCount=17}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=18}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[tag=BongoHand2,scores={ArrowCount=19}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 .8
execute if entity @s[scores={ArrowCount=21}] run tp @s[tag=BongoHand2] ~ 22 ~

execute if entity @s[scores={ArrowCount=25}] run tp @s[tag=BongoHand2] ~ ~.5 ~
execute if entity @s[scores={ArrowCount=26}] run tp @s[tag=BongoHand2] ~ ~-1.5 ~
execute if entity @s[tag=BongoHand2,scores={ArrowCount=27}] run playsound minecraft:block.note_block.basedrum hostile @a ~ ~ ~ 2 .8
execute if entity @s[scores={ArrowCount=29}] run tp @s[tag=BongoHand2] ~ 22 ~

execute if entity @s[scores={ArrowCount=25}] run tp @s[tag=BongoHand1] ~ ~1.5 ~
execute if entity @s[scores={ArrowCount=31..}] run scoreboard players set @s ArrowCount 0

#Sounds
execute if entity @s[tag=BongoHand2,scores={timer=2,ArrowCount=6}] run playsound minecraft:bongo_murmer hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=BongoHand2,scores={timer=4,ArrowCount=6}] run playsound minecraft:bongo_murmer hostile @a ~ ~ ~ 1.5 1

#Choose
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] run scoreboard players add @s BombchuCount 1
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!LeftSlam,scores={timer=5..,BombchuCount=1}] run tag @e[type=armor_stand,tag=BongoHand] add RightCut
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!RightCut,scores={timer=5..,BombchuCount=2}] run tag @e[type=armor_stand,tag=BongoHand] add LeftCut
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!LeftCut,scores={timer=5..,BombchuCount=3}] run tag @e[type=armor_stand,tag=BongoHand] add Clap
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!Clap,scores={timer=5..,BombchuCount=4}] run tag @e[type=armor_stand,tag=BongoHand] add RightSlap
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!RightSlap,scores={timer=5..,BombchuCount=5}] run tag @e[type=armor_stand,tag=BongoHand] add LeftSlap
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!LeftSlap,scores={timer=5..,BombchuCount=6}] run tag @e[type=armor_stand,tag=BongoHand] add RightPunch
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!RightPunch,scores={timer=5..,BombchuCount=7}] run tag @e[type=armor_stand,tag=BongoHand] add LeftPunch
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!LeftPunch,scores={timer=5..,BombchuCount=8}] run tag @e[type=armor_stand,tag=BongoHand] add RightSlam
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[tag=!Action,tag=!RightSlam,scores={timer=5..,BombchuCount=9}] run tag @e[type=armor_stand,tag=BongoHand] add LeftSlam
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[scores={timer=5..}] run tag @e[type=armor_stand,tag=BongoHand] add Action
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] if entity @s[scores={BombchuCount=9..}] as @e[type=armor_stand,tag=BongoHand] run scoreboard players set @s BombchuCount 0

#Start
execute if entity @s[scores={lifetime=1}] store result score @s text run data get entity @s Rotation[0]
execute if entity @a[scores={ResetHealth=1..}] run scoreboard players set @s lifetime 100

#Right Cut
execute if entity @s[tag=RightCut] run scoreboard players add @s lifetime 1
execute if entity @s[tag=RightCut,scores={lifetime=3}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=RightCut,scores={lifetime=28}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.3 1
execute if entity @s[tag=RightCut,scores={lifetime=2}] run tp @s[tag=BongoHand2] ~ 23 ~
execute as @s[tag=BongoHand2,tag=RightCut,scores={lifetime=3..18}] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.28] at @s run tp @s[tag=BongoHand2] ^-1.5 ^ ^1.5
execute as @s[tag=BongoHand2,tag=RightCut,scores={lifetime=3..18}] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.28] at @s run tp @s[tag=BongoHand2] ^-1 ^ ^
execute if entity @s[tag=RightCut,scores={lifetime=28..50}] run tp @s[tag=BongoHand2] ^1.5 ^ ^
execute if entity @s[tag=BongoHand2,tag=RightCut,scores={lifetime=28..50}] if entity @a[distance=..3] at @a if entity @a[y=22.7,dy=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute if entity @s[tag=RightCut,scores={lifetime=60}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[tag=RightCut,scores={lifetime=61..65}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=RightCut,scores={lifetime=66..}] run scoreboard players set @s lifetime 9000

#Left Cut
execute if entity @s[tag=LeftCut] run scoreboard players add @s lifetime 1
execute if entity @s[tag=LeftCut,scores={lifetime=3}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=LeftCut,scores={lifetime=28}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.3 1
execute if entity @s[tag=LeftCut,scores={lifetime=2}] run tp @s[tag=BongoHand1] ~ 23 ~
execute as @s[tag=BongoHand1,tag=LeftCut,scores={lifetime=3..18}] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.28] at @s run tp @s[tag=BongoHand1] ^1.5 ^ ^1.5
execute as @s[tag=BongoHand1,tag=LeftCut,scores={lifetime=3..18}] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 unless entity @s[distance=..1.28] at @s run tp @s[tag=BongoHand1] ^1 ^ ^
execute if entity @s[tag=LeftCut,scores={lifetime=28..50}] run tp @s[tag=BongoHand1] ^-1.5 ^ ^
execute if entity @s[tag=BongoHand1,tag=LeftCut,scores={lifetime=28..50}] if entity @a[distance=..3] at @a if entity @a[y=22.7,dy=0] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute if entity @s[tag=LeftCut,scores={lifetime=60}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[tag=LeftCut,scores={lifetime=61..65}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=LeftCut,scores={lifetime=66..}] run scoreboard players set @s lifetime 9000

#Clap
execute if entity @s[tag=Clap] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Clap,scores={lifetime=2}] run data merge entity @s[tag=BongoHand1] {Pose:{Head:[0f,0f,-90f]}}
execute if entity @s[tag=Clap,scores={lifetime=2}] run data merge entity @s[tag=BongoHand2] {Pose:{Head:[0f,0f,90f]}}
execute if entity @s[tag=Clap,scores={lifetime=3}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=Clap,scores={lifetime=28}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=Clap,scores={lifetime=3}] run tp @s[tag=BongoHand2] ^6 ^ ^
execute if entity @s[tag=Clap,scores={lifetime=3}] run tp @s[tag=BongoHand1] ^-6 ^ ^
execute as @s[tag=BongoHand1,tag=Clap,scores={lifetime=4..18}] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.28] at @s run tp @s[tag=BongoHand1] ^ ^ ^1.5
execute as @s[tag=BongoHand1,tag=Clap,scores={lifetime=4..18}] at @s anchored eyes facing entity @p eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..1.28] at @s run tp @e[type=armor_stand,tag=BongoHand2] ^24 ^ ^1.5
execute if entity @s[tag=Clap,scores={lifetime=28..34}] run tp @s[tag=BongoHand2] ^-1.5 ^ ^
execute if entity @s[tag=Clap,scores={lifetime=28..34}] run tp @s[tag=BongoHand1] ^1.5 ^ ^
execute if entity @s[tag=Clap,scores={lifetime=28..34}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute if entity @s[tag=Clap,scores={lifetime=34}] run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand2,tag=Clap,scores={lifetime=60}] run summon minecraft:zombie ~ ~ ~ {Tags:["BongoBongo","BongoDrop"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/bongo_both",Silent:1,NoAI:1b}
execute if entity @s[tag=Clap,scores={lifetime=60}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=Clap,scores={lifetime=60}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[tag=Clap,scores={lifetime=60}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[tag=Clap,scores={lifetime=61..65}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=Clap,scores={lifetime=61..65}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=Clap,scores={lifetime=66..}] run scoreboard players set @s lifetime 9000

#Right Slap
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap] run scoreboard players add @s lifetime 1
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=2}] run data merge entity @s[tag=BongoHand2] {Pose:{Head:[-90f,0f,90f]}}
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=3..10}] facing entity @p feet rotated ~ 0 run tp @s[tag=BongoHand2] ~ 22 ~ ~ ~
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=11}] run tp @s[tag=BongoHand2] ~ 22 ~ ~-20 ~
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=12}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=12..33}] run tp @s[tag=BongoHand2] ^ ^ ^1 ~2 ~
execute if entity @s[tag=BongoHand2,tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=50}] run summon minecraft:zombie ~ ~ ~ {Tags:["BongoBongo","BongoDrop"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/bongo_arrows",Silent:1,NoAI:1b}
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=50}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=50}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=51..55}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=!RightShake,tag=!RightSquish,tag=RightSlap,scores={lifetime=56..}] run scoreboard players set @s lifetime 9000
#Choose
execute if entity @s[tag=BongoHand2,tag=RightSlap,scores={lifetime=12..33}] if entity @a[distance=..3] run team join Rock @e[type=ravager,tag=HandHealth2]
execute if entity @s[tag=BongoHand2,tag=RightSlap,scores={lifetime=12..33,BombchuCount=1..4}] if entity @a[distance=..3] run tag @e[type=armor_stand,tag=BongoHand] add RightSquish
execute if entity @s[tag=BongoHand2,tag=RightSlap,scores={lifetime=12..33,BombchuCount=5..9}] if entity @a[distance=..3] run tag @e[type=armor_stand,tag=BongoHand] add RightShake
execute if entity @s[tag=RightSlap,scores={lifetime=12..33}] if entity @a[distance=..3] run tag @e[type=armor_stand,tag=BongoHand] remove RightSlap
#Right Squish
execute if entity @s[tag=RightSquish] run scoreboard players add @s lifetime 1
execute if entity @s[tag=RightSquish] unless entity @s[scores={lifetime=34..}] run scoreboard players set @s lifetime 34
execute if entity @s[tag=RightSquish,scores={lifetime=34}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=RightSquish,scores={lifetime=34}] run playsound minecraft:entity.player.attack.nodamage hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=RightSquish,scores={lifetime=34}] run effect give @a minecraft:levitation 3 0 true
execute if entity @s[tag=RightSquish,scores={lifetime=34}] run data merge entity @s[tag=BongoHand2] {Pose:{Head:[0f,0f,90f]}}
execute if entity @s[tag=RightSquish,scores={lifetime=34}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:70}}]}
execute if entity @s[tag=BongoHand2,tag=RightSquish,scores={lifetime=34..95}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^-1.7 ^1.4 ^
execute if entity @s[tag=BongoHand2,tag=RightSquish,scores={lifetime=34}] run effect give @a minecraft:wither 4 1 true
execute if entity @s[tag=RightSquish,scores={lifetime=96}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:66}}]}
execute if entity @s[tag=RightSquish,scores={lifetime=96}] run team leave @e[type=ravager,tag=HandHealth2]
execute if entity @s[tag=RightSquish,scores={lifetime=96}] run effect clear @a minecraft:levitation
execute if entity @s[tag=RightSquish,scores={lifetime=96}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[tag=RightSquish,scores={lifetime=97..101}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=RightSquish,scores={lifetime=101}] run data merge entity @s[tag=BongoHand2] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=RightSquish,scores={lifetime=101}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=RightSquish,scores={lifetime=102..}] as @e[type=armor_stand,tag=BongoHand] run scoreboard players set @s lifetime 9000
#Right Shake
execute if entity @s[tag=RightShake] run scoreboard players add @s lifetime 1
execute if entity @s[tag=RightShake] unless entity @s[scores={lifetime=34..}] run scoreboard players set @s lifetime 34
execute if entity @s[tag=RightShake,scores={lifetime=34}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=RightShake,scores={lifetime=34}] run playsound minecraft:entity.player.attack.nodamage hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=RightShake,scores={lifetime=34}] run effect give @a minecraft:levitation 3 0 true
execute if entity @s[tag=RightShake,scores={lifetime=34}] run data merge entity @s[tag=BongoHand2] {Pose:{Head:[0f,0f,90f]}}
execute if entity @s[tag=RightShake,scores={lifetime=34}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:70}}]}
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=34}] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:resistance 1 1 true
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=34}] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=34..85}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^-1.7 ^1.4 ^
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=85..95}] at @a unless block ^ ^ ^-1.5 minecraft:soul_sand unless block ^ ^ ^-.5 minecraft:soul_sand facing entity @e[type=armor_stand,tag=BongoEye] feet rotated ~ 0 run tp @a ^ ^ ^-1.5 ~ ~
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=85}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=34..44}] run tp @s ~ ~.1 ~ ~-10 ~
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=45..54}] run tp @s ~ ~-.1 ~ ~10 ~
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=55..64}] run tp @s ~ ~.1 ~ ~-10 ~
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=65..74}] run tp @s ~ ~-.1 ~ ~10 ~
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=75..84}] run tp @s ~ ~.1 ~ ~-10 ~
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=34}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=45}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=55}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=65}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand2,tag=RightShake,scores={lifetime=75}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=RightShake,scores={lifetime=85}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:66}}]}
execute if entity @s[tag=RightShake,scores={lifetime=96}] run team leave @e[type=ravager,tag=HandHealth2]
execute if entity @s[tag=RightShake,scores={lifetime=96}] run effect clear @a minecraft:levitation
execute if entity @s[tag=RightShake,scores={lifetime=96}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[tag=RightShake,scores={lifetime=97..101}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=RightShake,scores={lifetime=101}] run data merge entity @s[tag=BongoHand2] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=RightShake,scores={lifetime=101}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=RightShake,scores={lifetime=102..}] as @e[type=armor_stand,tag=BongoHand] run scoreboard players set @s lifetime 9000

#Left Slap
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap] run scoreboard players add @s lifetime 1
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=2}] run data merge entity @s[tag=BongoHand1] {Pose:{Head:[-90f,0f,-90f]}}
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=2}] run tp @s[tag=BongoHand1] ~ ~1 ~ ~ ~
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=3..10}] facing entity @p feet rotated ~ 0 run tp @s[tag=BongoHand1] ~ 22 ~ ~ ~
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=11}] run tp @s[tag=BongoHand1] ~ 22 ~ ~20 ~
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=12}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=12..33}] run tp @s[tag=BongoHand1] ^ ^ ^1 ~-2 ~
execute if entity @s[tag=BongoHand1,tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=50}] run summon minecraft:zombie ~ ~ ~ {Tags:["BongoBongo","BongoDrop"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/bongo_magic",Silent:1,NoAI:1b}
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=50}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=50}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=51..55}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=!LeftShake,tag=!LeftSquish,tag=LeftSlap,scores={lifetime=56..}] run scoreboard players set @s lifetime 9000
#Choose
execute if entity @s[tag=BongoHand1,tag=LeftSlap,scores={lifetime=12..33}] if entity @a[distance=..3] run team join Rock @e[type=ravager,tag=HandHealth1]
execute if entity @s[tag=BongoHand1,tag=LeftSlap,scores={lifetime=12..33,BombchuCount=0..4}] if entity @a[distance=..3] run tag @e[type=armor_stand,tag=BongoHand] add LeftSquish
execute if entity @s[tag=BongoHand1,tag=LeftSlap,scores={lifetime=12..33,BombchuCount=5..}] if entity @a[distance=..3] run tag @e[type=armor_stand,tag=BongoHand] add LeftShake
execute if entity @s[tag=BongoHand1,tag=LeftSlap,scores={lifetime=12..33}] if entity @a[distance=..3] run tag @e[type=armor_stand,tag=BongoHand] remove LeftSlap
#Left Squish
execute if entity @s[tag=LeftSquish] run scoreboard players add @s lifetime 1
execute if entity @s[tag=LeftSquish] unless entity @s[scores={lifetime=34..}] run scoreboard players set @s lifetime 34
execute if entity @s[tag=LeftSquish,scores={lifetime=34}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=LeftSquish,scores={lifetime=34}] run playsound minecraft:entity.player.attack.nodamage hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=LeftSquish,scores={lifetime=34}] run effect give @a minecraft:levitation 3 0 true
execute if entity @s[tag=LeftSquish,scores={lifetime=34}] run data merge entity @s[tag=BongoHand1] {Pose:{Head:[0f,0f,-90f]}}
execute if entity @s[tag=LeftSquish,scores={lifetime=34}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:69}}]}
execute if entity @s[tag=BongoHand1,tag=LeftSquish,scores={lifetime=34..95}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^1.7 ^1.4 ^
execute if entity @s[tag=BongoHand1,tag=LeftSquish,scores={lifetime=34}] run effect give @a minecraft:wither 4 1 true
execute if entity @s[tag=LeftSquish,scores={lifetime=96}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:67}}]}
execute if entity @s[tag=LeftSquish,scores={lifetime=96}] run team leave @e[type=ravager,tag=HandHealth1]
execute if entity @s[tag=LeftSquish,scores={lifetime=96}] run effect clear @a minecraft:levitation
execute if entity @s[tag=LeftSquish,scores={lifetime=96}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[tag=LeftSquish,scores={lifetime=97..101}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=LeftSquish,scores={lifetime=101}] run data merge entity @s[tag=BongoHand1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=LeftSquish,scores={lifetime=101}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=LeftSquish,scores={lifetime=102..}] as @e[type=armor_stand,tag=BongoHand] run scoreboard players set @s lifetime 9000
#Left Shake
execute if entity @s[tag=LeftShake] run scoreboard players add @s lifetime 1
execute if entity @s[tag=LeftShake] unless entity @s[scores={lifetime=34..}] run scoreboard players set @s lifetime 34
execute if entity @s[tag=LeftShake,scores={lifetime=34}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=LeftShake,scores={lifetime=34}] run playsound minecraft:entity.player.attack.nodamage hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=LeftShake,scores={lifetime=34}] run effect give @a minecraft:levitation 3 0 true
execute if entity @s[tag=LeftShake,scores={lifetime=34}] run data merge entity @s[tag=BongoHand1] {Pose:{Head:[0f,0f,-90f]}}
execute if entity @s[tag=LeftShake,scores={lifetime=34}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:69}}]}
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=34}] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:resistance 1 1 true
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=34}] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=34..85}] unless entity @a[scores={ResetHealth=1..}] run tp @a ^1.7 ^1.4 ^
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=85..95}] at @a unless block ^ ^ ^-1.5 minecraft:soul_sand unless block ^ ^ ^-.5 minecraft:soul_sand facing entity @e[type=armor_stand,tag=BongoEye] feet rotated ~ 0 run tp @a ^ ^ ^-1.5 ~ ~
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=85}] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=34..44}] run tp @s ~ ~.1 ~ ~10 ~
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=45..54}] run tp @s ~ ~-.1 ~ ~-10 ~
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=55..64}] run tp @s ~ ~.1 ~ ~10 ~
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=65..74}] run tp @s ~ ~-.1 ~ ~-10 ~
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=75..84}] run tp @s ~ ~.1 ~ ~10 ~
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=34}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=45}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=55}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=65}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=BongoHand1,tag=LeftShake,scores={lifetime=75}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=LeftShake,scores={lifetime=85}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:67}}]}
execute if entity @s[tag=LeftShake,scores={lifetime=96}] run team leave @e[type=ravager,tag=HandHealth1]
execute if entity @s[tag=LeftShake,scores={lifetime=96}] run effect clear @a minecraft:levitation
execute if entity @s[tag=LeftShake,scores={lifetime=96}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[tag=LeftShake,scores={lifetime=97..101}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=LeftShake,scores={lifetime=101}] run data merge entity @s[tag=BongoHand1] {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[tag=LeftShake,scores={lifetime=101}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=LeftShake,scores={lifetime=102..}] as @e[type=armor_stand,tag=BongoHand] run scoreboard players set @s lifetime 9000

#Right Punch
execute if entity @s[tag=RightPunch] run scoreboard players add @s lifetime 1
execute if entity @s[tag=RightPunch,scores={lifetime=21}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=23}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=25}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=27}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=29}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=31}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=33}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=35}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=37}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=39}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=42}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=RightPunch,scores={lifetime=2}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:70}}]}
execute if entity @s[tag=RightPunch,scores={lifetime=2}] run tp @s[tag=BongoHand2] ~ 23 ~ ~ ~
execute if entity @s[tag=RightPunch,scores={lifetime=3..20}] facing entity @p feet rotated ~ 0 run tp @s[tag=BongoHand2] ~ ~ ~ ~ ~
execute if entity @s[tag=RightPunch,scores={lifetime=21..43}] run tp @s[tag=BongoHand2] ^ ^ ^1.2 ~ ~
execute if entity @s[tag=BongoHand2,tag=RightPunch,scores={lifetime=21..43}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute if entity @s[tag=RightPunch,scores={lifetime=2}] run data merge entity @e[type=ravager,tag=HandHealth2,limit=1] {Invulnerable:1b}
execute if entity @s[tag=RightPunch,scores={lifetime=65}] run data merge entity @e[type=ravager,tag=HandHealth2,limit=1] {Invulnerable:0b}
execute if entity @s[tag=RightPunch,scores={lifetime=60}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[tag=RightPunch,scores={lifetime=61..65}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=RightPunch,scores={lifetime=65}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:66}}]}
execute if entity @s[tag=RightPunch,scores={lifetime=66..}] run scoreboard players set @s lifetime 9000

#Left Punch
execute if entity @s[tag=LeftPunch] run scoreboard players add @s lifetime 1
execute if entity @s[tag=LeftPunch,scores={lifetime=21}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=23}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=25}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=27}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=29}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=31}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=33}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=35}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=37}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=39}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=42}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=LeftPunch,scores={lifetime=2}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:69}}]}
execute if entity @s[tag=LeftPunch,scores={lifetime=2}] run tp @s[tag=BongoHand1] ~ 23 ~ ~ ~
execute if entity @s[tag=LeftPunch,scores={lifetime=3..20}] facing entity @p feet rotated ~ 0 run tp @s[tag=BongoHand1] ~ ~ ~ ~ ~
execute if entity @s[tag=LeftPunch,scores={lifetime=21..43}] run tp @s[tag=BongoHand1] ^ ^ ^1.2 ~ ~
execute if entity @s[tag=BongoHand1,tag=LeftPunch,scores={lifetime=21..43}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 2 true
execute if entity @s[tag=LeftPunch,scores={lifetime=2}] run data merge entity @e[type=ravager,tag=HandHealth1,limit=1] {Invulnerable:1b}
execute if entity @s[tag=LeftPunch,scores={lifetime=65}] run data merge entity @e[type=ravager,tag=HandHealth1,limit=1] {Invulnerable:0b}
execute if entity @s[tag=LeftPunch,scores={lifetime=60}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[tag=LeftPunch,scores={lifetime=61..65}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=LeftPunch,scores={lifetime=65}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:67}}]}
execute if entity @s[tag=LeftPunch,scores={lifetime=66..}] run scoreboard players set @s lifetime 9000

#Right Slam
execute if entity @s[tag=RightSlam] run scoreboard players add @s lifetime 1
execute if entity @s[tag=RightSlam,scores={lifetime=1}] run tp @s[tag=BongoHand2] ~ 25 ~
execute if entity @s[tag=RightSlam,scores={lifetime=3}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=RightSlam,scores={lifetime=2..20}] positioned ~ ~-4 ~ unless entity @a[distance=..1] at @s facing entity @p feet rotated ~ 0 run tp @s[tag=BongoHand2] ^ ^ ^1.5 ~ ~
execute if entity @s[tag=RightSlam,scores={lifetime=30..33}] run tp @s[tag=BongoHand2] ^ ^-1 ^ ~ ~
execute if entity @s[tag=RightSlam,scores={lifetime=30}] run data merge entity @e[type=ravager,tag=HandHealth2,limit=1] {Invulnerable:1b}
execute if entity @s[tag=RightSlam,scores={lifetime=36}] run data merge entity @e[type=ravager,tag=HandHealth2,limit=1] {Invulnerable:0b}
execute if entity @s[tag=RightSlam,scores={lifetime=33}] run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 1.5 .6
execute if entity @s[tag=BongoHand2,tag=RightSlam,scores={lifetime=30..35}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:resistance 1 1 true
execute if entity @s[tag=BongoHand2,tag=RightSlam,scores={lifetime=30..35}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[tag=RightSlam,scores={lifetime=60}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[tag=RightSlam,scores={lifetime=61..65}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=RightSlam,scores={lifetime=65..}] run scoreboard players set @s lifetime 9000

#Left Slam
execute if entity @s[tag=LeftSlam] run scoreboard players add @s lifetime 1
execute if entity @s[tag=LeftSlam,scores={lifetime=1}] run tp @s[tag=BongoHand1] ~ 25 ~
execute if entity @s[tag=LeftSlam,scores={lifetime=3}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[tag=LeftSlam,scores={lifetime=2..20}] positioned ~ ~-4 ~ unless entity @a[distance=..1] at @s facing entity @p feet rotated ~ 0 run tp @s[tag=BongoHand1] ^ ^ ^1.5 ~ ~
execute if entity @s[tag=LeftSlam,scores={lifetime=30..33}] run tp @s[tag=BongoHand1] ^ ^-1 ^ ~ ~
execute if entity @s[tag=LeftSlam,scores={lifetime=30}] run data merge entity @e[type=ravager,tag=HandHealth1,limit=1] {Invulnerable:1b}
execute if entity @s[tag=LeftSlam,scores={lifetime=36}] run data merge entity @e[type=ravager,tag=HandHealth1,limit=1] {Invulnerable:0b}
execute if entity @s[tag=LeftSlam,scores={lifetime=33}] run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 1.5 .6
execute if entity @s[tag=BongoHand1,tag=LeftSlam,scores={lifetime=30..35}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:resistance 1 1 true
execute if entity @s[tag=BongoHand1,tag=LeftSlam,scores={lifetime=30..35}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[tag=LeftSlam,scores={lifetime=60}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[tag=LeftSlam,scores={lifetime=61..65}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=LeftSlam,scores={lifetime=65..}] run scoreboard players set @s lifetime 9000

#Finish Attack
execute if entity @s[scores={lifetime=9000..}] as @e[type=armor_stand,tag=BongoHand] run function ocarina_of_time:moving_things/shadow_temple/boss/reset_attack

#Frozen
execute if entity @s[tag=Frozen] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Frozen,scores={lifetime=1}] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Frozen,scores={lifetime=1..}] run particle minecraft:soul_fire_flame ~ ~1.5 ~ 1.3 .8 1.3 0 2
execute at @s[tag=Frozen,scores={lifetime=1..5}] rotated ~180 0 run tp @e[type=armor_stand,tag=BongoHand,tag=!Frozen] ^10 ^ ^ facing entity @s
execute at @s[tag=Frozen,scores={lifetime=5}] as @e[type=armor_stand,tag=BongoHand,tag=!Frozen] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:69}}]}
execute at @s[tag=Frozen,scores={lifetime=10..19}] as @e[type=armor_stand,tag=BongoHand,tag=!Frozen] at @s run tp @s ^ ^ ^.7
execute at @s[tag=Frozen,scores={lifetime=19}] run playsound minecraft:block.glass.break ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Frozen,scores={lifetime=20}] store result entity @s[tag=!Frozen] Rotation[0] float 1 run scoreboard players get @s[tag=!Frozen] text
execute if entity @s[tag=Frozen,scores={lifetime=21..25}] as @e[type=armor_stand,tag=BongoHand1,tag=!Frozen] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=Frozen,scores={lifetime=21..25}] as @e[type=armor_stand,tag=BongoHand2,tag=!Frozen] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=Frozen,scores={lifetime=25..}] run scoreboard players set @s lifetime 9000

#Stun
execute unless entity @s[tag=BigAttack] if entity @s[tag=Stun] run scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=1}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=BigAttack] if entity @s[scores={GameTimer=1}] run tag @e[type=armor_stand,tag=BongoHand] remove Action
execute if entity @s[tag=BongoHand1,scores={GameTimer=2..}] rotated as @e[type=armor_stand,tag=BongoEye] positioned 1651 25 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=BongoHand2,scores={GameTimer=2..}] rotated as @e[type=armor_stand,tag=BongoEye] positioned 1651 25 963 run tp @s ^6 ^ ^-10
execute unless entity @s[tag=BigAttack] if entity @s[scores={GameTimer=2}] run scoreboard players set @s lifetime 9000
execute if entity @s[tag=BongoHand1,scores={GameTimer=3}] store result entity @s Rotation[0] float 1 run scoreboard players get @s text
execute if entity @s[tag=BongoHand2,scores={GameTimer=3}] store result entity @s Rotation[0] float 1 run scoreboard players get @s text
execute if entity @s[scores={GameTimer=1..}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ 1 .8 1 1 1
execute if entity @s[scores={GameTimer=1..}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={GameTimer=1..}] run data merge entity @e[type=ravager,tag=HandHealth,sort=nearest,limit=1] {Invulnerable:0b}
execute if entity @s[scores={GameTimer=170..}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:67}}]}
execute if entity @s[scores={GameTimer=170..}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:66}}]}
execute if entity @s[scores={GameTimer=170..}] run tp @s ~ 22 ~
execute if entity @s[scores={GameTimer=170..}] run tag @s remove Stun
execute unless entity @e[type=armor_stand,tag=BongoHand,tag=Stun] run scoreboard players set @s GameTimer 0

#Both Stun
execute store result score @s BlueRupee if entity @e[type=armor_stand,tag=BongoHand,tag=Stun]
execute if entity @s[scores={BlueRupee=1}] unless entity @s[tag=Action] run scoreboard players add @s timer 1
execute if entity @s[scores={BlueRupee=2}] unless entity @s[tag=Action] run tag @e[type=armor_stand,tag=BongoHand] remove Stun
execute if entity @s[scores={BlueRupee=2}] unless entity @s[tag=Action] as @e[type=armor_stand,tag=BongoHand] run function ocarina_of_time:moving_things/shadow_temple/boss/reset_attack
execute if entity @s[scores={BlueRupee=2}] unless entity @s[tag=Action] run tag @e[type=armor_stand,tag=BongoHand] add BigAttack
execute if entity @s[scores={BlueRupee=2}] unless entity @s[tag=Action] run tag @e[type=armor_stand,tag=BongoHand] add Action

#Right Hand Choice
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:69}}]}
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun] run scoreboard players add @s BombchuCount 1
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun,scores={timer=10..,BombchuCount=1..2}] as @e[type=armor_stand,tag=BongoHand2,tag=!Action,tag=!RightSlap] run tag @s add RightCut
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun,scores={timer=10..,BombchuCount=3..4}] as @e[type=armor_stand,tag=BongoHand2,tag=!Action,tag=!RightPunch] run tag @s add RightSlap
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun,scores={timer=10..,BombchuCount=5..6}] as @e[type=armor_stand,tag=BongoHand2,tag=!Action,tag=!RightSlam] run tag @s add RightPunch
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun,scores={timer=10..,BombchuCount=7..9}] as @e[type=armor_stand,tag=BongoHand2,tag=!Action,tag=!RightCut] run tag @s add RightSlam
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun,scores={timer=10..}] run tag @e[type=armor_stand,tag=BongoHand2] add Action
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand1,tag=Stun] if entity @s[scores={BombchuCount=9..}] as @s run scoreboard players set @s BombchuCount 0

#Left Hand Choice
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun] run data merge entity @s {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:70}}]}
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun] run scoreboard players add @s BombchuCount 1
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun,scores={timer=10..,BombchuCount=1..2}] as @e[type=armor_stand,tag=BongoHand1,tag=!Action,tag=!LeftSlap] run tag @s add LeftCut
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun,scores={timer=10..,BombchuCount=3..4}] as @e[type=armor_stand,tag=BongoHand1,tag=!Action,tag=!LeftPunch] run tag @s add LeftSlap
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun,scores={timer=10..,BombchuCount=5..6}] as @e[type=armor_stand,tag=BongoHand1,tag=!Action,tag=!LeftSlam] run tag @s add LeftPunch
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun,scores={timer=10..,BombchuCount=7..9}] as @e[type=armor_stand,tag=BongoHand1,tag=!Action,tag=!LeftCut] run tag @s add LeftSlam
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun,scores={timer=10..}] run tag @e[type=armor_stand,tag=BongoHand1] add Action
execute unless entity @s[tag=BigAttack] if entity @s[tag=BongoHand2,tag=Stun] if entity @s[scores={BombchuCount=9..}] as @s run scoreboard players set @s BombchuCount 0

#Big Attack
execute if entity @s[tag=BigAttack] run scoreboard players add @s BlueRupee2 1

execute if entity @s[scores={BlueRupee2=2..78}] at @e[type=ravager,tag=EyeHealth] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[scores={BlueRupee2=2..78}] if entity @a[distance=..3] unless entity @a[nbt={ActiveEffects:[{Id:7b}]}] run effect give @a minecraft:instant_damage 1 0 true
execute if entity @s[scores={BlueRupee2=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if entity @s[scores={BlueRupee2=2}] if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run data merge entity @e[type=armor_stand,tag=BongoEye,limit=1] {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:68}},{}]}
execute if entity @s[scores={BlueRupee2=2}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:69}}]}
execute if entity @s[scores={BlueRupee2=2}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:70}}]}
execute if entity @s[tag=BongoHand1,scores={BlueRupee2=2}] rotated as @e[type=armor_stand,tag=BongoEye] run tp @s ^ ^ ^ ~ ~
execute if entity @s[tag=BongoHand2,scores={BlueRupee2=2}] rotated as @e[type=armor_stand,tag=BongoEye] run tp @s ^ ^ ^ ~ ~
execute if entity @s[tag=BongoHand1,scores={BlueRupee2=3}] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[tag=BongoHand2,scores={BlueRupee2=3}] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[tag=BongoHand1,scores={BlueRupee2=5}] run tp @s ~ 22 ~
execute if entity @s[tag=BongoHand2,scores={BlueRupee2=5}] run tp @s ~ 22 ~
execute if entity @s[scores={BlueRupee2=40}] run playsound minecraft:ui.toast.in hostile @a ~ ~ ~ 1.5 1
execute if entity @s[scores={BlueRupee2=40..65}] as @e[type=armor_stand,tag=BongoEye] at @s run tp @s ^ ^ ^.5
execute if entity @s[scores={BlueRupee2=40..65}] run tp @s ^ ^ ^1
execute if entity @s[scores={BlueRupee2=80}] if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run data merge entity @e[type=armor_stand,tag=BongoEye,limit=1] {HandItems:[{id:cobblestone,Count:1b,tag:{CustomModelData:71}},{}]}
execute if entity @s[scores={BlueRupee2=80}] run data merge entity @s[tag=BongoHand1] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:67}}]}
execute if entity @s[scores={BlueRupee2=80}] run data merge entity @s[tag=BongoHand2] {ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:66}}]}
execute if entity @s[scores={BlueRupee2=80}] store result entity @s[tag=BongoHand1] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand1] text
execute if entity @s[scores={BlueRupee2=80}] store result entity @s[tag=BongoHand2] Rotation[0] float 1 run scoreboard players get @s[tag=BongoHand2] text
execute if entity @s[scores={BlueRupee2=80}] run tp @s[tag=BongoHand] ~ ~ ~ ~180 ~
execute if entity @s[scores={BlueRupee2=80}] as @e[type=armor_stand,tag=BongoEye] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[scores={BlueRupee2=80}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={BlueRupee2=81..83}] if entity @s[tag=BongoHand1] positioned 1651 ~ 963 run tp @s ^-6 ^ ^-10
execute if entity @s[scores={BlueRupee2=81..84}] if entity @s[tag=BongoHand2] positioned 1651 ~ 963 run tp @s ^6 ^ ^-10
execute if entity @s[scores={BlueRupee2=81..84}] as @e[type=armor_stand,tag=BongoEye] positioned 1651 21 963 run tp @s ^ ^6 ^-15
execute if entity @s[scores={BlueRupee2=84}] run tp @s[tag=BongoHand1] ~ ~1.5 ~
execute if entity @s[scores={BlueRupee2=85..90}] run scoreboard players set @s lifetime 9000

#Big Stun
execute if entity @s[tag=BigStun] run tag @s remove BigAttack
execute if entity @s[tag=BigStun] unless entity @s[scores={BlueRupee2=79..}] run scoreboard players set @s BlueRupee2 100
execute if entity @s[tag=BigStun] run scoreboard players add @s BlueRupee2 1

execute if entity @s[scores={BlueRupee2=101}] run tag @e[type=ravager,tag=EyeHealth] remove Resist
execute if entity @s[scores={BlueRupee2=101}] run effect clear @e[type=ravager,tag=EyeHealth] minecraft:resistance
execute if entity @s[scores={BlueRupee2=101..199}] run tp @e[type=armor_stand,tag=BongoEye] 1651 24 963
execute if entity @s[tag=BongoHand1,scores={BlueRupee2=101..159}] rotated as @e[type=armor_stand,tag=BongoEye] at @e[type=armor_stand,tag=BongoEye] run tp @s ^-6 ^-3 ^5
execute if entity @s[tag=BongoHand2,scores={BlueRupee2=101..159}] rotated as @e[type=armor_stand,tag=BongoEye] at @e[type=armor_stand,tag=BongoEye] run tp @s ^6 ^-3 ^5

execute if entity @s[scores={BlueRupee2=160}] as @e[type=ravager,tag=HandHealth] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={BlueRupee2=160}] run tp @s[tag=BongoHand] ~ ~ ~ ~180 ~
execute if entity @s[scores={BlueRupee2=160}] as @e[type=armor_stand,tag=BongoEye] run tp @s ~ ~ ~ ~180 ~
execute if entity @s[scores={BlueRupee2=160..}] run scoreboard players set @s BlueRupee2 79
