execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -569 85 -820 -569 85 -820 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -568 85 -821 -568 85 -821 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -569 85 -822 -569 85 -822 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -570 85 -821 -570 85 -821 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -569 83 -820 -569 83 -820 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -570 83 -821 -570 83 -821 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -568 83 -821 -568 83 -821 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tp @a -569 83 -821 180 30
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run stopsound @a music
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run fill -578 83 -824 -571 91 -826 minecraft:air replace minecraft:structure_void
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run tp @s -580 94.5 -821
execute unless entity @s[tag=Part2] unless entity @s[scores={timer=0..}] run scoreboard players set @s timer 1

execute unless entity @s[tag=Part2] if entity @s[scores={timer=1..}] run scoreboard players add @s timer 1

#Sheik Appears
execute if entity @s[scores={timer=30..34}] run tp @s ~.5 ~ ~
execute if entity @s[scores={timer=45}] run data merge entity @s {Pose:{Head:[70f,0f,0f],RightArm:[-20f,0f,0f],LeftArm:[0f,0f,-90f],Body:[5f,0f,0f],RightLeg:[40f,0f,0f],LeftLeg:[-50f,0f,0f]}}
execute if entity @s[x=-578,y=83,z=-821,dx=0,dz=0] unless entity @s[scores={timer=66..}] run tp @s -578 82.7 -821
execute if entity @s[scores={timer=66}] run data merge entity @s {Pose:{Head:[0f,0f,0f],RightArm:[0f,0f,0f],LeftArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f]}}
execute if entity @s[scores={timer=66}] run tp @s -578 83 -821
execute if entity @s[scores={timer=67..97}] run tp @s ~.2 ~ ~
execute if entity @s[scores={timer=85}] run function ocarina_of_time:music/sheik
execute if entity @s[scores={timer=85}] run scoreboard objectives add click minecraft.custom:minecraft.jump

execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"The flow of time is always cruel... Its speed seems different for each person, but no one can change it..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"A thing that doesn't change with time is a memory of younger days..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"In order to come back here again, play the "},{"text":"Minuet of Forest","color":"green"},{"text":"."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=6}] run stopsound @a music
execute unless entity @s[tag=Part2] if entity @a[scores={click=6}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=6}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"... I'll see you again..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run scoreboard players add @s timer 1
execute if entity @s[tag=Part2] if entity @s[scores={timer=1..15}] run tp @s ~-.15 ~ ~
execute if entity @s[tag=Part2] if entity @s[scores={timer=30}] at @a run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=30}] at @a run particle minecraft:crit -574 84 -821 .4 .7 .4 0 200 force
execute if entity @s[tag=Part2] if entity @s[scores={timer=30}] at @a run playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 2
execute if entity @s[tag=Part2] if entity @s[scores={timer=31}] run tp @s -581 79 -820

execute if entity @s[tag=Part2] if entity @s[scores={timer=40}] run function ocarina_of_time:music/lost_woods
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -570 83 -820 -568 85 -822 minecraft:air replace minecraft:barrier
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -581 78 -822 -581 78 -822 minecraft:gold_block

execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -577 83 -826 -576 89 -826 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -576 90 -826 -572 90 -826 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -572 91 -825 -576 91 -825 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -576 90 -824 -572 90 -824 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -571 90 -825 -571 90 -825 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -572 89 -825 -575 89 -825 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -575 88 -825 -575 83 -825 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -576 83 -824 -577 89 -824 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run fill -578 89 -825 -578 83 -825 minecraft:structure_void
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run tag @a remove LearnMinuet
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run scoreboard objectives remove click
execute if entity @s[tag=Part2] if entity @s[scores={timer=41}] run scoreboard players set @s timer 0

execute if entity @s[tag=PlaySong] run scoreboard players add @s lifetime 1

execute if entity @s[scores={lifetime=45..}] run tag @e[type=area_effect_cloud,tag=Songs] add Forest
execute if entity @s[scores={lifetime=45..}] run advancement grant @a only minecraft:_ocarina/forest
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run scoreboard players set @s timer 0
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run stopsound @a
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run tellraw @a ["",{"text":"You have learned the "},{"text":"Minuet of Forest","color":"green"}]
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute if entity @s[scores={lifetime=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run scoreboard players set @s lifetime 0

execute if entity @s[scores={lifetime=10}] run tag @a add NoTeleport
execute if entity @s[scores={lifetime=10}] run tag @a remove NoOcarina
execute if entity @s[scores={lifetime=10}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=15}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=20}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=35}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=40}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=45}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=70}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 .8
execute if entity @s[scores={lifetime=75}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={lifetime=80}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=95}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={lifetime=100}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={lifetime=105}] as @a at @s run playsound minecraft:block.note_block.harp music @s ~ ~ ~ 1 1.2
