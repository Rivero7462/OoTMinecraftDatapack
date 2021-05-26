execute unless entity @s[team=Rock] run team join Rock @s

#Switch Phase
execute unless entity @s[tag=Phase1] if entity @s[scores={time=2..}] run function ocarina_of_time:moving_things/fire_temple/boss/switch_phase
execute if entity @s[tag=Phase1,scores={time=3..}] run function ocarina_of_time:moving_things/fire_temple/boss/switch_phase



#Fake Outs
execute store result score @s ArrowCount run data get entity @s Health
execute if entity @s[tag=Ground,scores={ArrowCount=20..30}] run tag @s add Fake1
execute if entity @s[tag=Ground,scores={ArrowCount=10..20}] run tag @s add Fake2
execute if entity @s[tag=Ground,scores={ArrowCount=0..10}] run tag @s add Fake3
execute if entity @s[tag=Fake2] run tag @s remove Fake1
execute if entity @s[tag=Fake3] run tag @s remove Fake1
execute if entity @s[tag=Fake3] run tag @s remove Fake2
#Bubbles
execute as @e[type=area_effect_cloud,tag=AppearSpot] at @s run function ocarina_of_time:moving_things/fire_temple/boss/fake_out
scoreboard players add @s GameTimer 1
execute unless entity @s[tag=Phase1] if entity @s[tag=Phase2,scores={GameTimer=1}] run tag @e[type=area_effect_cloud,tag=DragonFloor3] add AppearSpot
execute unless entity @s[tag=Phase1] unless entity @s[tag=Phase2] if entity @s[scores={GameTimer=1}] run tag @e[type=area_effect_cloud,tag=DragonFloor,sort=random,limit=1] add AppearSpot
execute if entity @s[tag=Phase1] if entity @s[scores={GameTimer=1}] run tag @e[type=area_effect_cloud,tag=DragonFloor,sort=random,limit=1] add AppearSpot
execute unless entity @s[tag=Fly] if entity @s[tag=Fake1] if entity @s[scores={GameTimer=30}] run tag @e[type=area_effect_cloud,tag=DragonFloor,tag=!AppearSpot,sort=random,limit=1] add AppearSpot
execute unless entity @s[tag=Fly] if entity @s[tag=Fake2] if entity @s[scores={GameTimer=30}] run tag @e[type=area_effect_cloud,tag=DragonFloor,tag=!AppearSpot,sort=random,limit=1] add AppearSpot
execute unless entity @s[tag=Fly] if entity @s[tag=Fake2] if entity @s[scores={GameTimer=60}] run tag @e[type=area_effect_cloud,tag=DragonFloor,tag=!AppearSpot,sort=random,limit=1] add AppearSpot
execute unless entity @s[tag=Fly] if entity @s[tag=Fake3] if entity @s[scores={GameTimer=30}] run tag @e[type=area_effect_cloud,tag=DragonFloor,tag=!AppearSpot,sort=random,limit=1] add AppearSpot
execute unless entity @s[tag=Fly] if entity @s[tag=Fake3] if entity @s[scores={GameTimer=60}] run tag @e[type=area_effect_cloud,tag=DragonFloor,tag=!AppearSpot,sort=random,limit=1] add AppearSpot
execute unless entity @s[tag=Fly] if entity @s[tag=Fake3] if entity @s[scores={GameTimer=90}] run tag @e[type=area_effect_cloud,tag=DragonFloor,tag=!AppearSpot,sort=random,limit=1] add AppearSpot



#Choose Boulder or Fly
execute unless entity @s[tag=Phase1] if entity @s[tag=Phase2,scores={GameTimer=10}] run tag @s add Boulder
execute if entity @s[tag=Phase1] if entity @s[tag=Phase2,scores={GameTimer=10}] run tag @s add Fly
#Ground
execute unless entity @s[tag=Phase2] unless entity @s[tag=Fake1] unless entity @s[tag=Fake2] unless entity @s[tag=Fake3] if entity @s[scores={GameTimer=10}] run tag @s add Ground
execute unless entity @s[tag=Phase2] unless entity @s[tag=Fake2] unless entity @s[tag=Fake3] if entity @s[scores={GameTimer=40}] run tag @s add Ground
execute unless entity @s[tag=Phase2] unless entity @s[tag=Fake3] if entity @s[scores={GameTimer=70}] run tag @s add Ground
execute unless entity @s[tag=Phase2] if entity @s[scores={GameTimer=100}] run tag @s add Ground



#Ground Attack
execute if entity @s[tag=Ground] run scoreboard players add @s timer 1
execute if entity @s[tag=Ground,scores={timer=1}] at @e[type=area_effect_cloud,tag=AppearSpot,scores={timer=1..20}] run tp @s ~ ~-5 ~
execute if entity @s[tag=Ground,scores={timer=1}] at @e[type=area_effect_cloud,tag=AppearSpot,scores={timer=1..20}] run summon minecraft:armor_stand ~ ~-5 ~ {Tags:["Volvagia","VolvagiaGround"],Rotation:[-90f],ArmorItems:[{},{},{},{id:dead_tube_coral_fan,Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,Invisible:1b,Pose:{Head:[-110f,0f,180f]}}
execute if entity @s[tag=Ground,scores={timer=10}] run tp @s ~ 44.7 ~ facing entity @p
#Facing
execute if entity @s[tag=Ground,scores={timer=15..60}] facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
#Right
execute unless entity @s[tag=Stun] unless entity @s[tag=SpinAttack] if entity @s[tag=Ground,scores={timer=61..180}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^ ~-1 ~
#Left
execute unless entity @s[tag=Stun] unless entity @s[tag=SpinAttack] if entity @s[tag=Ground,scores={timer=61..180}] positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^ ~1 ~
#Fire Breath
execute unless entity @s[tag=Stun] unless entity @a[distance=..2] if entity @s[tag=Ground,scores={timer=81}] run tag @s add FireBreath
execute unless entity @s[tag=Stun] if entity @s[tag=Ground,tag=FireBreath,scores={timer=102..180}] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:moving_things/fire_temple/boss/fire_breath
#Spin Attack
execute unless entity @s[tag=Stun] if entity @a[distance=..2] if entity @s[tag=Ground,scores={timer=61}] run tag @s add SpinAttack
execute unless entity @s[tag=Stun] if entity @s[tag=Ground,tag=SpinAttack,scores={timer=61..110}] run tp @s ~ ~ ~ ~180 ~
execute unless entity @s[tag=Stun] if entity @s[tag=Ground,tag=SpinAttack,scores={timer=111}] run scoreboard players set @s timer 181
#Stun
execute if entity @s[tag=Ground,scores={timer=15}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Ground,scores={timer=15}] run tag @s add Resist
execute if entity @s[tag=Ground,scores={timer=60}] run data merge entity @s {Invulnerable:1b}
execute unless entity @s[tag=Stun] if entity @s[tag=Ground] if entity @a[nbt={SelectedItem:{tag:{Hammer:1b}}}] if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ .3 2
execute unless entity @s[tag=Stun] if entity @s[tag=Ground] if entity @a[nbt={SelectedItem:{tag:{Hammer:1b}}}] if entity @s[nbt={HurtTime:10s}] run tag @s add Stun
execute if entity @s[tag=Stun] unless entity @s[scores={timer=61..}] run scoreboard players set @e[type=armor_stand,tag=VolvagiaGround] timer 61
execute if entity @s[tag=Stun] unless entity @s[scores={timer=61..}] run scoreboard players set @s timer 61
#Damage
execute if entity @s[tag=Stun,scores={timer=62}] run tp @s ~ ~-.05 ~
execute if entity @s[tag=Stun,scores={timer=62}] as @e[type=armor_stand,tag=VolvagiaGround] at @s run tp @s ~ ~-.05 ~
execute if entity @s[tag=Stun,scores={timer=62..180}] run tag @s remove Resist
execute if entity @s[tag=Stun,scores={timer=62..180}] run effect clear @s minecraft:resistance
execute if entity @s[tag=Stun,scores={timer=62}] run data merge entity @s {Invulnerable:0b}
execute if entity @s[tag=Stun,scores={timer=62..180}] run particle minecraft:falling_dust lime_wool ^ ^1.5 ^1.4 .2 .2 .2 1 1
execute if entity @s[tag=Stun,scores={timer=62..180}] if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ .2 .7
execute if entity @s[tag=Stun,scores={timer=62..180}] if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s time 3
execute if entity @s[tag=Stun,scores={timer=62..180}] if entity @s[nbt={HurtTime:10s}] run scoreboard players set @e[type=armor_stand,tag=VolvagiaGround] timer 181
execute if entity @s[tag=Stun,scores={timer=62..180}] if entity @s[nbt={HurtTime:10s}] run scoreboard players set @s timer 181
#Disappear
execute if entity @s[tag=Ground,scores={timer=181}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Ground,scores={timer=181..183}] run tp @s ~ ~ ~ ~ -90
execute if entity @s[tag=Ground,scores={timer=184..200}] run tp @s ~ ~-.2 ~ ~ -90
execute if entity @s[tag=Ground,scores={timer=201}] run scoreboard players add @s time 1
execute if entity @s[tag=Ground,scores={timer=201}] run scoreboard players set @s timer 2000



#Fly Attacks
execute if entity @s[tag=Fly] run scoreboard players add @s timer 1
execute if entity @s[tag=Fly,scores={timer=1}] positioned as @e[type=area_effect_cloud,tag=AppearSpot,scores={timer=1..20}] run tp @s ~ ~-5 ~ ~ -90
execute if entity @s[tag=Fly,scores={timer=2}] run summon minecraft:zombie ^ ^ ^ {Tags:["Volvagia","VolvagiaBody"],Rotation:[0f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_tube_coral_fan,Count:1b,tag:{CustomModelData:2}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Fly,scores={timer=10..55}] run tp @s ~ ~.08 ~ ~ -90
#Rotate
execute if entity @s[tag=Fly,scores={timer=56..73}] run tp @s ^ ^-.08 ^.08 ~ ~5
#Straight
execute if entity @s[tag=Fly,scores={timer=74..145}] run tp @s ^ ^ ^.08
#Right
execute if entity @s[tag=Fly,scores={timer=146..350}] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~-3 ~
#Left
execute if entity @s[tag=Fly,scores={timer=146..350}] at @s positioned ^ ^ ^1 facing entity @p eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~3 ~
#Fire Breath
execute if entity @s[tag=Fly,scores={timer=146..350}] anchored eyes positioned ^ ^ ^ anchored feet run function ocarina_of_time:moving_things/fire_temple/boss/fire_breath_2
#Cooldown
execute if entity @s[tag=NoPain] run scoreboard players add @s PushBlock 1
execute if entity @s[scores={PushBlock=60..}] run tag @s remove NoPain
execute if entity @s[scores={PushBlock=60..}] run scoreboard players set @s PushBlock 0
#Return
execute if entity @s[tag=Fly,scores={timer=351}] run tag @e[type=area_effect_cloud,tag=DragonFloor,sort=furthest,limit=1] add Return
#Right
execute unless entity @s[tag=FlyDown] if entity @s[tag=Fly,scores={timer=351..}] at @s positioned ^ ^ ^1 facing entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return] eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~-3 ~
#Left
execute unless entity @s[tag=FlyDown] if entity @s[tag=Fly,scores={timer=351..}] at @s positioned ^ ^ ^1 facing entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return] eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~3 ~
#FlyDown
execute if entity @s[tag=Fly,scores={timer=351..}] positioned ~ ~1 ~ if entity @e[type=area_effect_cloud,tag=DragonFloor,tag=Return,distance=..1] run tag @s add FlyDown
execute if entity @s[tag=Fly,tag=FlyDown] unless entity @s[scores={timer=500..}] run scoreboard players set @s timer 700
execute if entity @s[tag=Fly,scores={timer=700}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Fly,scores={timer=700..750}] run tp @s ^ ^ ^.08 ~ ~5
execute if entity @s[tag=Fly,scores={timer=900}] run tag @s remove Phase1
execute if entity @s[tag=Fly,scores={timer=900}] run tag @s remove Phase2
execute if entity @s[tag=Fly,scores={timer=900}] run scoreboard players set @s time 0
execute if entity @s[tag=Fly,scores={timer=900}] run scoreboard players set @s timer 2000
#Invulnerable
execute unless entity @s[scores={ArrowCount=0..8}] if entity @a[nbt={SelectedItem:{tag:{FairyBow:1b}}}] if entity @s[tag=Fly,scores={timer=56..699}] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[scores={ArrowCount=0..8}] if entity @a[nbt={SelectedItem:{tag:{Hookshot:1b}}}] if entity @s[tag=Fly,scores={timer=56..699}] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[scores={ArrowCount=0..8}] unless entity @a[nbt={SelectedItem:{tag:{FairyBow:1b}}}] unless entity @a[nbt={SelectedItem:{tag:{Hookshot:1b}}}] if entity @s[tag=Fly,scores={timer=56..699}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={ArrowCount=0..8}] if entity @s[tag=Fly,scores={timer=56..699}] run data merge entity @s {Invulnerable:1b}



#Boulders
execute if entity @s[tag=Boulder] run scoreboard players add @s timer 1
execute if entity @s[tag=Boulder,scores={timer=1}] positioned as @e[type=area_effect_cloud,tag=DragonFloor3] run tp @s ~ ~-5 ~ 60 -90
execute if entity @s[tag=Boulder,scores={timer=2}] run summon minecraft:zombie ^ ^ ^ {Tags:["Volvagia","VolvagiaBody"],Rotation:[0f,90f],NoAI:1b,Invulnerable:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:dead_tube_coral_fan,Count:1b,tag:{CustomModelData:2}}],DeathLootTable:"ocarina_of_time:entities/nothing",Attributes:[{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
execute if entity @s[tag=Boulder,scores={timer=10..205}] run tp @s ~ ~.12 ~ ~ -90
#Rotate
execute if entity @s[tag=Boulder,scores={timer=206..223}] run tp @s ^ ^-.08 ^.08 ~ ~5
#Straight
execute if entity @s[tag=Boulder,scores={timer=224..295}] run tp @s ^ ^ ^.09
#Right
execute if entity @s[tag=Boulder,scores={timer=296..700}] at @s positioned ^ ^ ^1 facing entity @e[type=armor_stand,tag=DragonFollow] eyes positioned ^1 ^ ^ if entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~-3 ~
#Left
execute if entity @s[tag=Boulder,scores={timer=296..700}] at @s positioned ^ ^ ^1 facing entity @e[type=armor_stand,tag=DragonFollow] eyes positioned ^1 ^ ^ unless entity @s[distance=..1.4142] at @s run tp @s ^ ^ ^.08 ~3 ~
#Follow Dragon
execute if entity @s[tag=Boulder,scores={timer=380}] run tp @e[type=armor_stand,tag=DragonFollow] 3018 69 1960
execute if entity @s[tag=Boulder,scores={timer=430}] run tp @e[type=armor_stand,tag=DragonFollow] 3018 69 1952
execute if entity @s[tag=Boulder,scores={timer=520}] run tp @e[type=armor_stand,tag=DragonFollow] 3010 69 1952
execute if entity @s[tag=Boulder,scores={timer=610}] run tp @e[type=armor_stand,tag=DragonFollow] 3010 69 1960
#FlyDown
execute if entity @s[tag=Boulder,scores={timer=880}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[tag=Boulder,scores={timer=607..920}] run tp @s ^ ^ ^.08 ~ ~5
execute if entity @s[tag=Boulder,scores={timer=1050}] run tag @s add Phase1
execute if entity @s[tag=Boulder,scores={timer=1050}] run tag @s remove Phase2
execute if entity @s[tag=Boulder,scores={timer=1050}] run scoreboard players set @s time 0
execute if entity @s[tag=Boulder,scores={timer=1050}] run scoreboard players set @s timer 2000
#Falling Rocks
team join Rock @e[type=wither_skull,tag=Meteor]
execute if entity @s[tag=Boulder,scores={timer=320}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=350}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=380}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=410}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=440}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=470}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=500}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=530}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=560}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=590}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=620}] positioned ^ ^ ^2 run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=650}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=680}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=710}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=740}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=770}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=800}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=830}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=860}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=890}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=920}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=950}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
execute if entity @s[tag=Boulder,scores={timer=980}] positioned ^ ^1 ^ run summon minecraft:wither_skull ~ 69 ~ {Tags:["Meteor"],direction:[0.0,-0.1,0.0],power:[0.0,-0.1,0.0]}
#Invulnerable
execute unless entity @s[scores={ArrowCount=0..8}] if entity @a[nbt={SelectedItem:{tag:{FairyBow:1b}}}] if entity @s[tag=Boulder,scores={timer=20..880}] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[scores={ArrowCount=0..8}] if entity @a[nbt={SelectedItem:{tag:{Hookshot:1b}}}] if entity @s[tag=Boulder,scores={timer=20..880}] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[scores={ArrowCount=0..8}] unless entity @a[nbt={SelectedItem:{tag:{FairyBow:1b}}}] unless entity @a[nbt={SelectedItem:{tag:{Hookshot:1b}}}] if entity @s[tag=Boulder,scores={timer=20..880}] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={ArrowCount=0..8}] if entity @s[tag=Boulder,scores={timer=20..879}] run data merge entity @s {Invulnerable:1b}



#Reset Fly Boulder and Ground
execute if entity @s[scores={timer=2000}] run kill @e[type=zombie,tag=VolvagiaBody]
execute if entity @s[scores={timer=2000}] run kill @e[type=zombie,tag=VolvagiaTail]
execute if entity @s[scores={timer=2000}] run tag @s remove Resist
execute if entity @s[scores={timer=2000}] run tag @s remove Stun
execute if entity @s[scores={timer=2000}] run tag @s remove NoPain
execute if entity @s[scores={timer=2000}] run tag @s remove FireBreath
execute if entity @s[scores={timer=2000}] run tag @s remove SpinAttack
execute if entity @s[scores={timer=2000}] run tag @s remove Ground
execute if entity @s[scores={timer=2000}] run tag @s remove Boulder
execute if entity @s[scores={timer=2000}] run tag @s remove Fly
execute if entity @s[scores={timer=2000}] run tag @s remove FlyDown
execute if entity @s[scores={timer=2000}] run tag @e[type=area_effect_cloud,tag=DragonFloor] remove Return
execute if entity @s[scores={timer=2000}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={timer=2000}] run scoreboard players set @s timer 0



#Sounds
execute if entity @s[tag=Ground,scores={timer=10}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute unless entity @s[tag=Stun] if entity @a[distance=..2] if entity @s[tag=Ground,scores={timer=61}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute unless entity @s[tag=Stun] if entity @s[tag=Ground,tag=FireBreath,scores={timer=102}] run playsound minecraft:entity.blaze.burn hostile @a ~ ~ ~ 1 .5
execute if entity @s[tag=Fly,nbt={HurtTime:10s}] run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ .3 .7
execute if entity @s[tag=Boulder,nbt={HurtTime:10s}] run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ .3 .7
execute if entity @s[nbt={ActiveEffects:[{Id:6b}]}] run playsound minecraft:entity.ender_dragon.hurt hostile @a ~ ~ ~ .3 .7
execute if entity @s[tag=Fly,scores={timer=10}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Fly,scores={timer=700}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Boulder,scores={timer=10}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
execute if entity @s[tag=Boulder,scores={timer=880}] run playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ .2 2
