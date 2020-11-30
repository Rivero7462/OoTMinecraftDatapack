kill @e[type=zombie,tag=Guay]
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tag @a add StopTime
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run time set day
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 407 48 414 407 48 414 minecraft:gold_block
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 408 55 393 408 55 393 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 409 55 392 409 55 392 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 407 55 392 407 55 392 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 408 57 391 408 57 391 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 407 57 392 407 57 392 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 408 57 393 408 57 393 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill 409 57 392 409 57 392 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tp @a 408 55 392 0 ~
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run stopsound @a music
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tp @s 408 67 408
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 1

execute unless entity @s[tag=Part2] if entity @s[scores={timer=1..}] run scoreboard players add @s timer 1

#Sheik Appears
execute unless entity @s[tag=Part2] if entity @s[scores={timer=40..48}] run tp @s ~ ~ ~.2
execute unless entity @s[tag=Part2] if entity @s[scores={timer=49..59}] run tp @s ~ ~ ~-.3
execute unless entity @s[tag=Part2] if entity @s[scores={timer=60..70}] run tp @s ~ ~.1 ~-.3
execute unless entity @s[tag=Part2] if entity @s[scores={timer=76}] run data merge entity @s {Pose:{Head:[70f,0f,0f],RightArm:[-20f,0f,0f],LeftArm:[0f,0f,-90f],Body:[5f,0f,0f],RightLeg:[40f,0f,0f],LeftLeg:[-50f,0f,0f]}}
execute unless entity @s[tag=Part2] if entity @s[scores={timer=71..75}] run tp @s ~ ~ ~-.3
execute unless entity @s[tag=Part2] if entity @s[scores={timer=76..79}] run tp @s ~ ~-.2 ~-.2
execute unless entity @s[tag=Part2] if entity @s[scores={timer=80..84}] run tp @s ~ ~-.3 ~-.2
execute unless entity @s[tag=Part2] if entity @s[scores={timer=85..90}] run tp @s ~ ~-.4 ~-.1
execute unless entity @s[tag=Part2] if entity @s[scores={timer=91..96}] run tp @s ~ ~-.5 ~-.1
execute unless entity @s[tag=Part2] if entity @s[scores={timer=97..105}] run tp @s ~ ~-.6 ~-.1
execute unless entity @s[tag=Part2] if entity @s[scores={timer=106}] run tp @s 408 54.7 398
execute unless entity @s[tag=Part2] if entity @s[scores={timer=127}] run function ocarina_of_time:music/sheik
execute unless entity @s[tag=Part2] if entity @s[scores={timer=127}] run tp @s 408 55 398
execute unless entity @s[tag=Part2] if entity @s[scores={timer=127}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute unless entity @s[tag=Part2] if entity @s[scores={timer=142..157}] run tp @s ~ ~ ~-.2
execute unless entity @s[tag=Part2] if entity @s[scores={timer=157}] run scoreboard objectives add click minecraft.custom:minecraft.jump

#Owl
execute unless entity @s[tag=Part2] if entity @s[scores={timer=20}] run summon minecraft:armor_stand 391 76 459 {Tags:["OwlFly"],Rotation:[145f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute unless entity @s[tag=Part2] if entity @s[scores={timer=25..223}] as @e[type=armor_stand,tag=OwlFly] at @s run tp @s ^ ^ ^.6
execute unless entity @s[tag=Part2] if entity @s[scores={timer=90..144}] as @e[type=armor_stand,tag=OwlFly] at @s run tp @s ^ ^.06 ^ ~2 ~
execute unless entity @s[tag=Part2] if entity @s[scores={timer=224}] run kill @e[type=armor_stand,tag=OwlFly]
execute unless entity @s[tag=Part2] if entity @s[scores={timer=224}] run summon minecraft:armor_stand 419 81 390 {Tags:["OwlStand11"],Rotation:[55f],ArmorItems:[{},{},{},{id:infested_stone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}

execute if entity @s[tag=Part2] if entity @s[scores={timer=1}] run kill @e[type=armor_stand,tag=OwlStand11]
execute if entity @s[tag=Part2] if entity @s[scores={timer=1}] run summon minecraft:armor_stand 419 81 390 {Tags:["OwlFly"],Rotation:[26f],ArmorItems:[{},{},{},{id:infested_cobblestone,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Invisible:1b}
execute if entity @s[tag=Part2] if entity @s[scores={timer=1..127}] as @e[type=armor_stand,tag=OwlFly] at @s run tp @s ^ ^-.05 ^.6
execute if entity @s[tag=Part2] if entity @s[scores={timer=128}] run kill @e[type=armor_stand,tag=OwlFly]

execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Past, present, future..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The Master Sword is a ship with which you can sail upstream and downstream through times river..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The port for that ship is in the Temple of Time..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"To restore the Desert Colossus and enter the "},{"text":"Spirit Temple","color":"yellow"},{"text":", you must travel back through time's flow..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Listen to this "},{"text":"Requiem of Spirit","color":"yellow"},{"text":"... This melody will lead a child back to the desert."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute unless entity @s[tag=Part2] if entity @a[scores={click=10}] run stopsound @a music
execute unless entity @s[tag=Part2] if entity @a[scores={click=10}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=10}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

#After Song
execute if entity @s[tag=Part2] if entity @a[scores={click=0..1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run scoreboard players add @s timer 1
execute if entity @s[tag=Part2] if entity @s[scores={timer=64..90}] run particle minecraft:falling_dust sand 408 56 395 2 1 .2 1 100 normal
execute if entity @s[tag=Part2] if entity @s[scores={timer=64}] run tag @a add NoNightVision
execute if entity @s[tag=Part2] if entity @s[scores={timer=64}] run effect give @a minecraft:blindness 10 0 true
execute if entity @s[tag=Part2] if entity @s[scores={timer=60..125}] run tp @s ~ ~ ~.15
execute if entity @s[tag=Part2] if entity @s[scores={timer=126}] run tp @s 409 48 414

execute if entity @s[tag=Part2] if entity @s[scores={timer=127}] run function ocarina_of_time:music/gerudo_valley
execute if entity @s[tag=Part2] if entity @s[scores={timer=128}] run fill 409 55 393 407 57 391 minecraft:air replace minecraft:barrier

execute if entity @s[tag=Part2] if entity @s[scores={timer=129}] run tag @a remove NoNightVision
execute if entity @s[tag=Part2] if entity @s[scores={timer=129}] run effect clear @a minecraft:blindness
execute if entity @s[tag=Part2] if entity @s[scores={timer=129}] run tag @a remove StopTime
execute if entity @s[tag=Part2] if entity @s[scores={timer=129}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @s[scores={timer=129}] run tag @a remove LearnRequiem
execute if entity @s[tag=Part2] if entity @s[scores={timer=129}] run scoreboard objectives remove click
execute if entity @s[tag=Part2] if entity @s[scores={timer=129}] run scoreboard players set @s timer 0

#Song
execute if entity @s[tag=PlaySong] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=60..}] run tag @e[type=area_effect_cloud,tag=Songs] add Spirit
execute if entity @s[scores={lifetime=60..}] run advancement grant @a only minecraft:_ocarina/spirit
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run stopsound @a
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run tellraw @a ["",{"text":"You have learned the "},{"text":"Requiem of Spirit","color":"yellow"},{"text":"!"}]
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run scoreboard players set @a click 0
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=10}] run tag @a add NoTeleport
execute if entity @s[scores={lifetime=10}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=10}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=22}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=29}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=36}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=48}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=60}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8

execute if entity @s[scores={lifetime=90}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=102}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=109}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=116}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=128}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .95
execute if entity @s[scores={lifetime=140}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
