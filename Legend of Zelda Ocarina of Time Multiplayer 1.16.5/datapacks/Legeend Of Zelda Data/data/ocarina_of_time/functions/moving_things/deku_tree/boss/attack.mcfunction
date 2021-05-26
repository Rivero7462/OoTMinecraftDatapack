#Startup
scoreboard players add @s timer 1

execute if entity @s[scores={timer=1}] run stopsound @a music
execute if entity @s[scores={timer=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={timer=1}] run tp @a 1421 12 -661 -90 -50
execute if entity @s[scores={timer=1}] run tp @s 1427 27 -661 -90 -90
execute if entity @s[scores={timer=2..80}] run tp @a 1421 12 -661
execute if entity @s[scores={timer=2}] run data merge entity @s {NoAI:0b}

execute if entity @s[scores={timer=5}] run tp @s ~ ~ ~ 90 90

execute if entity @s[scores={timer=5..40}] run data modify entity @s Rotation[1] set value 90f
execute if entity @s[scores={timer=40}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={timer=41..43}] run tp @s ~ ~.3 ~ ~ ~-20
execute if entity @s[scores={timer=53..55}] run tp @s ~ ~-.3 ~ ~ ~20
execute if entity @s[scores={timer=80}] run function ocarina_of_time:music/boss

#Title
execute if entity @s[scores={timer=41}] run title @a times 5 50 5
execute if entity @s[scores={timer=41}] run title @a subtitle "Parasitic Armored Arachnid"
execute if entity @s[scores={timer=41}] run title @a title "Gohma"

#Attack
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=0}] run data modify entity @s Rotation[1] set value 90f
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] unless entity @s[scores={lifetime=1..117}] facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^.1 ~ 90

#Shield
execute if entity @a[distance=..1] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute if entity @a[distance=..1] unless entity @s[tag=Stun] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] run effect give @a minecraft:wither 1 1 true

execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=35}] if entity @a[distance=..3] if entity @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b}}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=35}] if entity @a[distance=..3] if entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] run playsound minecraft:item.shield.block ambient @a ~ ~ ~ 1 1
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=31..35}] unless entity @a[nbt={ActiveEffects:[{Id:20b}]}] if entity @a[distance=..2] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run effect give @a minecraft:wither 1 1 true
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=31..35}] if entity @a[distance=..2] unless entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] run scoreboard players set @s lifetime 117

#Lunge
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] at @a if entity @s[distance=..4] run tag @s add Lunge
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[tag=Lunge] run scoreboard players add @s lifetime 1

execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=4..5}] run tp @s ~ ~.2 ~ ~ ~-20
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=6..30}] facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^ ~ 50
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=6..30}] at @a unless entity @s[distance=..8] run scoreboard players set @s lifetime 117
#Lunge 2
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=31..35}] facing entity @p eyes rotated ~ 0 run tp @s ^ ^ ^.6 ~ 90
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=36}] run data merge entity @s {NoAI:1b}
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=36..117}] run data modify entity @s Rotation[1] set value 90f
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=36..117}] if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.2 ~

execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=117..120}] if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.2 ~
execute unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=120..}] run tag @s remove Lunge
execute unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=120..}] run scoreboard players set @s lifetime 0

#Particles
execute unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=10..35}] run particle minecraft:dust 1 0 0 1 ^ ^1.7 ^-.9 .1 .1 .1 1 1 force
execute unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=10..35}] positioned ^ ^1.7 ^-.9 if entity @e[type=snowball,distance=..1] run tag @s add Stun
execute unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=36..100}] run particle minecraft:dust 1 0 0 1 ^ ^.8 ^-1.2 .1 .1 .1 1 1 force
execute unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=36..100}] positioned ^ ^.8 ^-1.2 if entity @e[type=snowball,distance=..1] run tag @s add Stun
execute if entity @s[scores={GameTimer=300..360}] run particle minecraft:dust 1 0 0 1 ^ ^1 ^1 .2 .2 .2 1 1 force
execute if entity @s[scores={GameTimer=300..360}] positioned ^ ^1 ^1 if entity @e[type=snowball,distance=..2] run tag @s add Fall
execute if entity @s[scores={GameTimer=300..360}] positioned ^ ^1 ^1 if entity @e[type=snowball,distance=..2] run tag @s add Stun

#Stun
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run scoreboard players set @s time 70
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run tag @s remove Lunge
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run scoreboard players set @s lifetime 0
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run scoreboard players set @s GameTimer 0
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run tag @s remove Climb2
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run data merge entity @s {NoAI:0b}
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run data merge entity @s {Invulnerable:0b}
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] if entity @s[tag=Stun2] run tag @s add Stun
execute if entity @s[tag=Stun2] run tag @s remove Stun2

#Stun
execute if entity @s[tag=Stun] run scoreboard players add @s time 1
execute if entity @s[scores={time=1}] run tag @s remove Lunge
execute if entity @s[scores={time=1}] run kill @e[type=snowball]
execute if entity @s[scores={time=1}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={time=1}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={time=1}] run tag @s remove Climb2
execute if entity @s[scores={time=2}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={time=2}] unless entity @s[tag=Fall] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={time=1..110}] run particle minecraft:falling_dust blue_wool ~ ~1.5 ~ .6 .3 .6 1 1
execute if entity @s[scores={time=1..110}] run data modify entity @s Rotation[1] set value 90f
execute if entity @s[scores={time=110..}] run data merge entity @s {Invulnerable:1b,NoAI:1b}
execute if entity @s[scores={time=110..}] run tag @s remove Stun
execute unless entity @s[tag=Stun] run scoreboard players set @s time 0

#Climb 1
execute if entity @s[nbt={HurtTime:10s}] run tag @s add Climb
execute if entity @s[tag=Stun,nbt={HurtTime:10s},scores={time=3..79}] run scoreboard players set @s time 80
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=0}] if entity @s[tag=Climb] unless block ^ ^1 ^-.5 #ocarina_of_time:gohma if block ~ ~-.1 ~ minecraft:air run tp @s ~ ~-.2 ~
execute unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=0}] if entity @s[tag=Climb] unless block ^ ^1 ^-.5 #ocarina_of_time:gohma unless block ~ ~-.1 ~ minecraft:air run tp @s ^ ^.2 ^

#Climb 2
execute unless entity @s[tag=Stun] unless entity @s[tag=Lunge] unless entity @s[scores={timer=1..80}] unless entity @s[scores={lifetime=1..117}] if block ^ ^1 ^-.5 #ocarina_of_time:gohma run tag @s add Climb2
execute unless entity @s[tag=Stun] unless entity @s[tag=Lunge] if entity @s[tag=Climb] unless entity @s[scores={timer=1..80}] unless entity @s[scores={lifetime=1..117}] if block ^ ^1 ^-.5 #ocarina_of_time:gohma run tp @s ^ ^-.1 ^
execute if entity @s[tag=Climb2] run scoreboard players add @s GameTimer 1

execute if entity @s[scores={GameTimer=1}] run tag @s remove Climb
execute if entity @s[scores={GameTimer=1}] run tp @s ^ ^-.8 ^ ~ 0
execute if entity @s[scores={GameTimer=2..75}] run tp @s ~ ~.2 ~ ~ 0
execute if entity @s[scores={GameTimer=76}] facing entity @e[type=area_effect_cloud,tag=GohmaSpot,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~180 -90
execute if entity @s[scores={GameTimer=77..299}] run tp @s ^ ^.15 ^ ~ -90
execute if entity @s[scores={GameTimer=77..299}] if entity @e[type=area_effect_cloud,tag=GohmaSpot,distance=..1] run scoreboard players set @s GameTimer 300
execute if entity @s[scores={GameTimer=370}] run summon minecraft:armor_stand ^ ^-2.1 ^ {Tags:["LarvaEgg","LarvaEgg4","Fall"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:brain_coral_block,Count:1b}]}
execute if entity @s[scores={GameTimer=390}] run summon minecraft:armor_stand ^ ^-2 ^ {Tags:["LarvaEgg","LarvaEgg5","Fall"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:brain_coral_block,Count:1b}]}
execute if entity @s[scores={GameTimer=410}] run summon minecraft:armor_stand ^ ^-2.2 ^ {Tags:["LarvaEgg","LarvaEgg6","Fall"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:brain_coral_block,Count:1b}]}
execute if entity @s[scores={GameTimer=410..}] unless entity @e[type=zombie,tag=LarvaEgg4] unless entity @e[type=zombie,tag=LarvaEgg5] unless entity @e[type=zombie,tag=LarvaEgg6] unless entity @e[type=zombie,tag=LarvaHealth4] unless entity @e[type=zombie,tag=LarvaHealth5] unless entity @e[type=zombie,tag=LarvaHealth6] run tag @s add Fall

#Fall
execute if entity @s[tag=Fall] run scoreboard players add @s ArrowCount 1
execute if entity @s[scores={ArrowCount=1}] run scoreboard players set @s GameTimer 0
execute if entity @s[scores={ArrowCount=1}] run tag @s remove Climb2
execute if entity @s[scores={ArrowCount=1}] run data modify entity @s Rotation[1] set value 90f
execute if entity @s[scores={ArrowCount=1}] run data merge entity @s {NoAI:0b}
execute if entity @s[scores={ArrowCount=5..40}] run data modify entity @s Rotation[1] set value 90f
execute if entity @s[scores={ArrowCount=40}] run data merge entity @s {NoAI:1b}
execute if entity @s[scores={ArrowCount=40}] if entity @s[tag=Stun] run data merge entity @s {Invulnerable:0b}
execute if entity @s[scores={ArrowCount=40..}] run tag @s remove Fall
execute if entity @s[scores={ArrowCount=40..}] run scoreboard players set @s lifetime 0
execute if entity @s[scores={ArrowCount=40..}] run scoreboard players set @s ArrowCount 0

#Sounds
execute if entity @s[scores={timer=30}] run playsound minecraft:block.bamboo.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={timer=43}] run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 2 1.2
execute if entity @s[scores={timer=110..}] run scoreboard players set @s timer 90
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Stun] if entity @s[scores={lifetime=0}] if entity @s[scores={timer=100}] at @s run playsound minecraft:block.bamboo.fall hostile @a ~ ~ ~ 1 .5
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=31}] at @s run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 2 1.2

execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=55}] run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 1.5
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=74}] run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 1.5
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=93}] run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 1.5
execute unless entity @s[tag=Fall] unless entity @s[tag=Climb2] unless entity @s[tag=Climb] unless entity @s[tag=Stun] unless entity @s[scores={timer=1..80}] if entity @s[scores={lifetime=112}] run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 1.5
execute if entity @s[scores={time=1}] at @a run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 1 2
execute if entity @s[scores={time=15}] run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={time=45}] run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1 .6
execute if entity @s[scores={time=75}] run playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1 .6
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 2 1.5

execute if entity @s[scores={GameTimer=1}] run playsound minecraft:block.bamboo.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=20}] run playsound minecraft:block.bamboo.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=40}] run playsound minecraft:block.bamboo.fall hostile @a ~ ~ ~ 1 .5
execute if entity @s[scores={GameTimer=60}] run playsound minecraft:block.bamboo.fall hostile @a ~ ~ ~ 1 .5

execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=80}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .5
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=84}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .7
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=97}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .6
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=102}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .8
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=110}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .5
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=114}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .7
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=127}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .6
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=132}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .8
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=140}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .5
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=144}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .7
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=157}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .6
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=162}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .8
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=170}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .5
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=174}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .7
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=187}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .6
execute unless entity @s[tag=Looking] if entity @s[scores={GameTimer=192}] at @a run playsound minecraft:block.bamboo_sapling.place hostile @a ~ ~ ~ .5 .8
