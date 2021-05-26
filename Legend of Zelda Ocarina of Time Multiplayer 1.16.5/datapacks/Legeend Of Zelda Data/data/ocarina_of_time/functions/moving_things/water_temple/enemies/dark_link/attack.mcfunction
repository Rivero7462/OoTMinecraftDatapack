execute if entity @s[tag=Appear] run summon minecraft:zombie ~ ~ ~ {Tags:["DarkLink","Fire","Invisible","Resist"],Health:61,Attributes:[{Name:generic.max_health,Base:61},{Name:generic.movement_speed,Base:0}],Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/nothing"}
execute if entity @s[tag=Appear] run tag @s remove Wait
execute if entity @s[tag=Appear] run scoreboard objectives add DarkLink minecraft.custom:minecraft.damage_taken
execute if entity @s[tag=Appear] run function ocarina_of_time:music/mini_boss
execute if entity @s[tag=Appear] run data merge entity @s {NoGravity:1b}
execute if entity @s[tag=Appear] run tag @s remove Appear
tp @e[type=zombie,tag=DarkLink] @s

#Randomizer
scoreboard players add @s GameTimer 1
execute if entity @s[scores={GameTimer=50..}] run scoreboard players set @s GameTimer 0
#Approach
execute unless entity @a[distance=..3] unless entity @s[tag=Back] unless entity @s[tag=Fall] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice
execute unless entity @a[distance=..3] unless entity @s[tag=Back] if entity @s[scores={GameTimer=1..25}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.1 ~15 0
execute unless entity @a[distance=..3] unless entity @s[tag=Back] if entity @s[scores={GameTimer=26..50}] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.1 ~-10 0

#Near
#Shield
execute unless entity @a[distance=..2] if entity @a[distance=..4] if entity @s[scores={GameTimer=1..11}] unless entity @s[tag=Fall] unless entity @s[tag=Protect] unless entity @s[tag=Vulnerable] unless entity @s[tag=Jump] unless entity @s[tag=OnSword] unless entity @s[tag=Forward] unless entity @s[tag=Swing] run tag @s add Protect

execute if entity @s[tag=Protect] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] at @a run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @s[tag=Protect] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run tag @s add Protect2
execute if entity @s[tag=Protect2] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Protect2,scores={lifetime=1}] run data merge entity @s {Pose:{RightArm:[-90f,-30f,90f]}}
execute if entity @s[tag=Protect2,scores={lifetime=4..60}] run scoreboard players set @s lifetime 61

#Vulnerable
execute unless entity @a[distance=..2] if entity @a[distance=..4] if entity @s[scores={GameTimer=12..20}] unless entity @s[tag=Protect] unless entity @s[tag=Vulnerable] unless entity @s[tag=Jump] unless entity @s[tag=OnSword] unless entity @s[tag=Forward] unless entity @s[tag=Swing] run tag @s add Vulnerable
execute if entity @s[tag=Vulnerable] unless entity @s[tag=Fall] run tag @e[type=zombie,tag=DarkLink] remove Resist
execute if entity @s[tag=Vulnerable] unless entity @s[tag=Fall] run effect clear @e[type=zombie,tag=DarkLink] minecraft:resistance
execute if entity @s[tag=Vulnerable] unless entity @s[tag=Fall] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 1
execute if entity @s[tag=Vulnerable] unless entity @s[tag=Fall] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run tag @s add Fall
#Fall
execute if entity @s[tag=Fall] run scoreboard players add @s timer 1
execute if entity @s[tag=Fall,scores={timer=1}] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice
execute if entity @s[tag=Fall,scores={timer=1}] run tag @s add Fall
execute if entity @s[tag=Fall,scores={timer=1..5}] run tag @e[type=zombie,tag=DarkLink] add Resist
execute if entity @s[tag=Fall,scores={timer=1..5}] run tp @s ^ ^.1 ^-.15 ~ 0
execute if entity @s[tag=Fall,scores={timer=6..20}] run tp @s ^ ^-.4 ^-.15 ~ 0
execute if entity @s[tag=Fall,scores={timer=21}] run tp @s ~ ~-5 ~
execute if entity @s[tag=Fall,scores={timer=30..}] unless entity @a[x=1122,y=66,z=3069,dx=24,dz=6] unless entity @a[x=1120,y=66,z=3110,dx=28,dz=6] at @a rotated ~ 0 if block ^ ^ ^-3 minecraft:air run tp @s ^ ^ ^-3
execute if entity @s[tag=Fall,scores={timer=30..}] unless block ^ ^ ^-3 minecraft:air run tp @s 1134 65 3095
execute if entity @s[tag=Fall,scores={timer=30..}] if entity @a[x=1122,y=66,z=3069,dx=24,dz=6] run tp @s 1134 65 3095
execute if entity @s[tag=Fall,scores={timer=30..}] if entity @a[x=1120,y=66,z=3110,dx=28,dz=6] run tp @s 1134 65 3095
execute if entity @s[tag=Fall,scores={timer=30..}] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice
execute if entity @s[scores={timer=30..}] run scoreboard players set @s timer 0

#Sword Jump
#Master
execute unless entity @a[distance=..2] if entity @a[distance=..4] if entity @s[scores={GameTimer=21..32}] unless entity @s[tag=Fall] unless entity @s[tag=Protect] unless entity @s[tag=Vulnerable] unless entity @s[tag=Jump] unless entity @s[tag=OnSword] unless entity @s[tag=Forward] unless entity @s[tag=Swing] run tag @s add Jump
execute if entity @s[tag=Jump] if entity @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] run tag @e[type=zombie,tag=DarkLink] add Resist
execute if entity @s[tag=Jump] if entity @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run tag @s add OnSword
execute if entity @s[tag=Jump] if entity @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] at @a run summon minecraft:area_effect_cloud ~ 65 ~ {Tags:["DarkLinkSword"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
#Goron
execute if entity @s[tag=Jump] unless entity @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] run tag @e[type=zombie,tag=DarkLink] remove Resist
execute if entity @s[tag=Jump] unless entity @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] run effect clear @e[type=zombie,tag=DarkLink] minecraft:resistance
execute if entity @s[tag=Jump] unless entity @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b}}] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run tag @s add Fall

execute if entity @s[tag=OnSword] run scoreboard players add @s lifetime 1
execute at @a if entity @s[tag=OnSword,scores={lifetime=1}] rotated as @a run tp @e[type=area_effect_cloud,tag=DarkLinkSword] ~ 65 ~ ~ 0
execute if entity @s[tag=OnSword,scores={lifetime=1}] run data merge entity @s {ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1,tag:{CustomModelData:13}}]}
execute if entity @s[tag=OnSword,scores={lifetime=1}] run gamemode spectator @a
execute if entity @s[tag=OnSword,scores={lifetime=2..40}] run tag @s remove Forward
execute if entity @s[tag=OnSword,scores={lifetime=2..40}] facing entity @p feet rotated ~ 0 at @a run tp @s ^.5 ^1.4 ^1.1 ~140 0
execute if entity @s[tag=OnSword,scores={lifetime=2..40}] at @e[type=area_effect_cloud,tag=DarkLinkSword] run tp @a ~ ~ ~ ~ ~
execute if entity @s[tag=OnSword,scores={lifetime=41..}] run tag @s remove Jump
execute if entity @s[tag=OnSword,scores={lifetime=41..}] run data merge entity @s {ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1,tag:{CustomModelData:7}}]}
execute if entity @s[tag=OnSword,scores={lifetime=41..}] run gamemode adventure @a
execute if entity @s[tag=OnSword,scores={lifetime=41..}] run effect give @a minecraft:wither 1 1 true
execute if entity @s[tag=OnSword,scores={lifetime=41..}] run kill @e[type=area_effect_cloud,tag=DarkLinkSword]
execute if entity @s[tag=OnSword,scores={lifetime=41..}] run tag @s add Back

#Attack
execute unless entity @a[distance=..2] if entity @a[distance=..4] if entity @s[scores={GameTimer=33..48}] unless entity @s[tag=Fall] unless entity @s[tag=Protect] unless entity @s[tag=Vulnerable] unless entity @s[tag=Jump] unless entity @s[tag=OnSword] unless entity @s[tag=Forward] unless entity @s[tag=Swing] run tag @s add Swing
execute unless entity @s[tag=Fall] if entity @s[tag=Swing] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run tag @s add Slash
execute unless entity @s[tag=Fall] if entity @s[tag=Swing] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run playsound minecraft:block.iron_trapdoor.open hostile @a ~ ~ ~ 3 2
execute unless entity @s[tag=Fall] if entity @s[tag=Swing] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice

#Walk
execute unless entity @a[distance=..2] if entity @a[distance=..4] if entity @s[scores={GameTimer=49}] unless entity @s[tag=OnSword] unless entity @s[tag=Forward] run tag @s add Forward


#Close
#Back Jump
execute if entity @a[distance=..2] unless entity @s[tag=Back] unless entity @s[tag=Fall] unless entity @s[tag=Fall] unless entity @s[scores={lifetime=1..}] unless entity @s[scores={GameTimer=1..}] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice
execute if entity @a[distance=..2] if entity @s[scores={GameTimer=1..15}] unless entity @s[scores={lifetime=1..}] unless entity @s[tag=OnSword] unless entity @s[tag=Forward] unless entity @s[tag=Fall] run tag @s add Back
execute if entity @s[tag=Back] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Back,scores={lifetime=1}] run data merge entity @e[type=zombie,tag=DarkLink,limit=1] {Invulnerable:1b}
execute if entity @s[tag=Back,scores={lifetime=1..6}] facing entity @a feet rotated ~ 0 run tp @s ^ ^.2 ^-.4 ~ 0
execute if entity @s[tag=Back,scores={lifetime=7..8}] run tp @s ~ 65 ~ ~ 0
execute if entity @s[tag=Back,scores={lifetime=9}] run data merge entity @e[type=zombie,tag=DarkLink,limit=1] {Invulnerable:0b}
execute if entity @s[tag=Back,scores={lifetime=9..40}] run scoreboard players set @s lifetime 61
execute if entity @s[tag=Back,scores={lifetime=41..50}] run tag @s remove OnSword
execute if entity @s[tag=Back,scores={lifetime=41..50}] run scoreboard players set @s lifetime 0

execute unless entity @s[tag=Fall] if entity @s[scores={lifetime=61..}] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice
execute unless entity @s[tag=Fall] if entity @s[scores={lifetime=61..}] run scoreboard players set @s lifetime 0

#Walk
execute if entity @a[distance=..2] if entity @s[scores={GameTimer=16..50}] unless entity @s[scores={lifetime=1..}] unless entity @s[tag=OnSword] unless entity @s[tag=Back] run tag @s add Forward
execute if entity @s[tag=Forward] unless entity @s[tag=Fall] facing entity @p feet rotated ~ 0 run tp @s ^ ^ ^.1 ~ 0
execute if entity @s[tag=Forward] unless entity @s[tag=Fall] rotated as @s run tp @e[type=zombie,tag=DarkLink] ^ ^ ^.1 ~ 0
execute if entity @s[tag=Forward] unless entity @s[tag=Fall] unless entity @a[distance=..3] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice

#Sword Attack
execute if entity @a[scores={DarkLink=1..}] run tag @s add Slash
execute if entity @s[tag=Slash] run scoreboard players set @a DarkLink 0
execute if entity @s[tag=Slash] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run data merge entity @s {Pose:{LeftArm:[40f,0f,-20f]}}
execute if entity @s[scores={time=2}] run data merge entity @s {Pose:{LeftArm:[60f,0f,-35f]}}
execute if entity @s[scores={time=3}] run data merge entity @s {Pose:{LeftArm:[80f,0f,-45f]}}
execute if entity @s[scores={time=4}] run data merge entity @s {Pose:{LeftArm:[40f,10f,-80f]}}
execute if entity @s[scores={time=5}] run data merge entity @s {Pose:{LeftArm:[-20f,0f,-90f]}}

execute if entity @s[scores={time=6}] run data merge entity @s {Pose:{LeftArm:[-10f,0f,-80f]}}
execute if entity @s[scores={time=7}] run data merge entity @s {Pose:{LeftArm:[-20f,0f,-60f]}}
execute if entity @s[scores={time=8}] run data merge entity @s {Pose:{LeftArm:[-30f,0f,-40f]}}
execute if entity @s[scores={time=9}] run data merge entity @s {Pose:{LeftArm:[-10f,0f,-20f]}}
execute if entity @s[scores={time=10}] run data merge entity @s {Pose:{LeftArm:[10f,0f,-5f]}}
execute if entity @s[scores={time=11}] run data merge entity @s {Pose:{LeftArm:[25f,0f,-15f]}}
execute if entity @s[scores={time=12}] run data merge entity @s {Pose:{LeftArm:[30f,0f,-20f]}}
execute if entity @s[scores={time=13..}] run tag @s remove Slash
execute if entity @s[scores={time=13..}] run scoreboard players set @s time 0

#Spectator Glitch
execute if entity @s[scores={lifetime=1..60}] unless entity @s[tag=OnSword] unless entity @s[tag=Protect2] unless entity @s[tag=Back] run gamemode adventure @a
execute if entity @s[scores={lifetime=1..60}] unless entity @s[tag=OnSword] unless entity @s[tag=Protect2] unless entity @s[tag=Back] run tp @s ~ 65 ~
execute if entity @s[scores={lifetime=1..60}] unless entity @s[tag=OnSword] unless entity @s[tag=Protect2] unless entity @s[tag=Back] run data merge entity @s {ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1,tag:{CustomModelData:7}}]}
execute if entity @s[scores={lifetime=1..60}] unless entity @s[tag=OnSword] unless entity @s[tag=Protect2] unless entity @s[tag=Back] run effect give @a minecraft:wither 1 1 true
execute if entity @s[scores={lifetime=1..60}] unless entity @s[tag=OnSword] unless entity @s[tag=Protect2] unless entity @s[tag=Back] run kill @e[type=area_effect_cloud,tag=DarkLinkSword]
execute if entity @s[scores={lifetime=1..60}] unless entity @s[tag=OnSword] unless entity @s[tag=Protect2] unless entity @s[tag=Back] run scoreboard players set @s lifetime 61

#Dead
execute unless entity @e[type=zombie,tag=DarkLink] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/finish

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=1}] run tag @e[type=zombie,tag=DarkLink] remove Resist
execute if entity @s[scores={ArrowCount=1}] run tp @s ~ 65 ~
execute if entity @s[scores={ArrowCount=1}] run effect clear @e[type=zombie,tag=DarkLink] minecraft:resistance
execute if entity @s[scores={ArrowCount=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .4 .1 .4 1 1
execute if entity @s[scores={ArrowCount=1..110}] run function ocarina_of_time:moving_things/water_temple/enemies/dark_link/reset_choice
execute if entity @s[scores={ArrowCount=110..}] run tag @e[type=zombie,tag=DarkLink] add Resist
execute if entity @s[scores={ArrowCount=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s ArrowCount 0
execute if entity @s[tag=Stun] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run tag @s add Fall
execute if entity @s[tag=Stun] if entity @e[type=zombie,tag=DarkLink,nbt={HurtTime:10s}] run scoreboard players set @s ArrowCount 110

#Arrows
execute as @e[type=arrow] at @s unless entity @s[tag=Stun] if entity @s[distance=..4] run kill @s

#Sounds
execute if entity @s[tag=OnSword,scores={lifetime=1}] run playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 1
stopsound @a * minecraft:entity.player.attack.crit
stopsound @a * minecraft:entity.player.attack.sweep

execute unless entity @s[tag=Fall] if entity @s[y=54,dy=7] run tp @s ~ 65 ~
