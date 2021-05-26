execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 469 32 1349 469 32 1349 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 469 30 1349 469 30 1349 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 468 32 1348 468 32 1348 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 468 30 1348 468 30 1348 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 467 32 1349 467 32 1349 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 467 30 1349 467 30 1349 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 468 32 1350 468 32 1350 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run fill 468 30 1350 468 30 1350 minecraft:barrier
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run tag @a remove MeetEpona2
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run tp @a 468 30 1349
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[tag=Wait] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" Oh, cute ocarina! Are you going to play this song with that ocarina?"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Malon:","color":"gold"},{"text":" OK? This is "},{"text":"the song","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=3}] run tag @s add PlaySong
execute if entity @a[scores={click=3}] run tag @a add Wait
execute if entity @a[scores={click=3}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tellraw @a ["",{"text":"You've learned "},{"text":"Epona's Song","color":"red"},{"text":"!"}]
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run fill 469 30 1348 467 32 1350 minecraft:air
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @a remove ScaredEpona
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @s add stoptext
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @a remove NoTeleport
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run scoreboard players set @e[type=armor_stand,tag=Malon3] text 3
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @a remove Wait
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run scoreboard players set @s timer 0
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @a remove MeetEpona2Start

execute if entity @s[tag=PlaySong] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=41..}] run tag @e[type=area_effect_cloud,tag=Songs] add Epona
execute if entity @s[scores={timer=41..}] run advancement grant @a only minecraft:_ocarina/epona_song

execute if entity @s[scores={timer=1}] run tag @a add NoTeleport
execute if entity @s[scores={timer=1}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=1}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=7}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=13}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=29}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=35}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=41}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=71}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=77}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=83}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=99}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=105}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=111}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2