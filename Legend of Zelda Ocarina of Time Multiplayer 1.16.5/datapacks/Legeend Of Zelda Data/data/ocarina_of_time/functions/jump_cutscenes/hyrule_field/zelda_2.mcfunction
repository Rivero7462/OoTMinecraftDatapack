time set day

execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run tag @e[type=area_effect_cloud,tag=Progress] add ZeldaOcarina
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run data merge entity @s {Rotation:[-90f]}
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run tp @s 985 22 1949
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run tag @a remove NewOcarina
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run clear @a minecraft:carrot_on_a_stick{OcarinaSaria:1b}
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run advancement grant @a only minecraft:_ocarina/zelda_ocarina
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run tag @a add ZeldaOcarina
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run tag @a add StopStalchildSpawn
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run stopsound @a music
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run tp @a 981 23 1949 -90 ~
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=PlaySong] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=PlaySong] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"You found the "},{"text":"Ocarina of Time","color":"red"},{"text":"! This is the Royal Family's hidden treasure that Zelda left behind. It glows with a mystical light..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run function ocarina_of_time:music/temple_of_time
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"selector":"@p"},{"text":"...can you hear me? It's me, Zelda..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"selector":"@p"},{"text":", when you hold this ocarina in your hand..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I won't be around anymore..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"I wanted to wait for you, but I couldn't delay any longer..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"At least I could leave you the ocarina and "},{"text":"this melody","color":"aqua"},{"text":"..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run data merge entity @s {Rotation:[90f]}
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"This song","color":"aqua"},{"text":" opens the Door of Time..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run stopsound @a music
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=PlaySong] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=60..}] run tag @e[type=area_effect_cloud,tag=Songs] add Time
execute if entity @s[scores={timer=60..}] run advancement grant @a only minecraft:_ocarina/time
execute if entity @s[scores={timer=60..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={timer=60..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run stopsound @a
execute if entity @s[scores={timer=60..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run tellraw @a ["",{"text":"You've learned the "},{"text":"Song of Time","color":"aqua"},{"text":"!"}]
execute if entity @s[scores={timer=60..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump

execute if entity @s[scores={timer=1}] run tag @a add NoTeleport
execute if entity @s[scores={timer=1}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=1}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=11}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .8
execute if entity @s[scores={timer=27}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @s[scores={timer=37}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=47}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .8
execute if entity @s[scores={timer=63}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @s[scores={timer=83}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=93}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .8
execute if entity @s[scores={timer=109}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @s[scores={timer=119}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=129}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .8
execute if entity @s[scores={timer=145}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Zelda: ","color":"gold"},{"text":"Now, "},{"selector":"@p"},{"text":". Play this melody in front of the altar in the "},{"text":"Temple of Time","color":"aqua"},{"text":". You must protect the Triforce!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2

execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run tag @a remove StopStalchildSpawn
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run tp @a 974.0 67 1925 0 ~
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=15..}] run scoreboard players set @s lifetime 15
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=5..}] run scoreboard players set @s text 5
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run tag @a remove NewOcarina2
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run tag @s remove PlaySong
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run scoreboard players set @s timer 0
execute if entity @s[tag=Part2] if entity @a[scores={click=2..}] run scoreboard objectives remove click
