execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill -569 85 -820 -569 83 -820 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill -568 85 -819 -568 83 -819 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill -569 85 -818 -569 83 -818 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill -570 85 -819 -570 85 -819 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill -568 84 -820 -570 84 -818 minecraft:air
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @a -569 83 -819 180 ~
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" I've been waiting for you, "},{"selector":"@p"},{"text":"!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" This is the "},{"text":"Sacred Forest Meadow","color":"green"},{"text":". It's my secret place! I feel..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" This place will be very important for both of us someday. That's what I feel."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" If you play the ocarina with me, I can teach you to talk with the spirits in the forest."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" Would you like to play the ocarina with me?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" OK, try to follow along with the melody I will play. Are you ready?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] if entity @a[scores={click=12}] run stopsound @a music
execute unless entity @s[tag=Part2] if entity @a[scores={click=12}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=12}] run tag @s add Wait
execute unless entity @s[tag=Part2] if entity @a[scores={click=12}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" Please don't forget this song! Do you promise?"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tag @s remove Wait
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" When you want to hear my voice, play "},{"text":"Saria's Song","color":"green"},{"text":". You can talk with me anytime..."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @p ["",{"text":"You've learned "},{"text":"Saria's Song","color":"green"},{"text":"!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6

execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=7..}] run scoreboard players set @s lifetime 7
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=1..}] run scoreboard players set @s text 1
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run tag @a add OwlSaria
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run function ocarina_of_time:music/lost_woods
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run fill -570 85 -818 -568 83 -820 minecraft:air replace minecraft:barrier
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run tag @a add LostWoodsOwl2
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run fill -572 70 -711 -572 70 -711 minecraft:redstone_block
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run scoreboard players set @s text 1

execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run tag @a remove LearnSariaOcarina
execute if entity @s[tag=Part2] if entity @a[scores={click=6..}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=31..}] run tag @e[type=area_effect_cloud,tag=Songs] add SariaSong
execute if entity @s[scores={timer=31..}] run advancement grant @a only minecraft:_ocarina/saria_song
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] run stopsound @a
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] run tellraw @p ["",{"text":"Saria:","color":"gold"},{"text":" Great! Great!"}]
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump

execute if entity @s[scores={timer=1}] run tag @a add NoTeleport
execute if entity @s[scores={timer=1}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=1}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @s[scores={timer=8}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.19
execute if entity @s[scores={timer=16}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=30}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @s[scores={timer=38}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.19
execute if entity @s[scores={timer=46}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=77}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @s[scores={timer=85}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.19
execute if entity @s[scores={timer=93}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=107}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 .95
execute if entity @s[scores={timer=115}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.19
execute if entity @s[scores={timer=123}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33