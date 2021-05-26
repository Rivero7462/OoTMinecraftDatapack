execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 840 88 409 840 88 409 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 840 88 411 840 88 411 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 839 88 410 839 88 410 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 841 88 410 841 88 410 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 840 90 411 840 90 411 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 841 90 410 841 90 410 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 840 90 409 840 90 409 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 839 90 410 839 90 410 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @a 840 88 410
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=Wait] unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" I am "},{"text":"Impa ","color":"red"},{"text":"of the Sheikah. I am responsible for protecting Princess Zelda. Everything is exactly as the princess foretold."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" You are a courageous boy... You are heading out on a big, new adventure, aren't you?"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" My role in the princess's dream was to teach a melody to the one from the forest."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" This is an ancient "},{"text":"melody passed down by the Royal Family","color":"blue"},{"text":"."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" I have played this song for Princess Zelda as a lullaby ever since she was a baby..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" There is mysterious power in these notes."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Now listen carefully..."}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute unless entity @s[tag=Part2] if entity @a[scores={click=14}] run stopsound @a music
execute unless entity @s[tag=Part2] if entity @a[scores={click=14}] run tag @a remove NoOcarina
execute unless entity @s[tag=Part2] if entity @a[scores={click=14}] run tag @s add PlaySong
execute unless entity @s[tag=Part2] if entity @a[scores={click=14}] run tag @s add Wait
execute unless entity @s[tag=Part2] if entity @a[scores={click=14}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" If the castle soldiers find you, there will be trouble. Let me lead you out of the castle."}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tag @s remove Wait
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2

execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run spawnpoint @a -560 67 -704
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run tp @s 843 75 410
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run scoreboard players set @s text 1
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run fill 839 88 409 841 90 411 minecraft:air
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run tag @a add MeetImpa2
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run tag @a remove StopTime
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run function ocarina_of_time:teleports/remove_teleports
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run tag @a add InHyruleField
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run function ocarina_of_time:music/hyrule_field
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run tp @a 975 67 1928
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run tag @a remove MeetImpa
execute if entity @s[tag=Part2] if entity @a[scores={click=3..}] run scoreboard objectives remove click

execute if entity @s[tag=PlaySong] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=36..}] run tag @e[type=area_effect_cloud,tag=Songs] add Lullaby
execute if entity @s[scores={timer=36..}] run advancement grant @a only minecraft:_ocarina/lullaby
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tag @s add Part2
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run stopsound @a
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tellraw @a ["",{"text":"You've learned "},{"text":"Zelda's Lullaby","color":"blue"},{"text":"!"}]
execute if entity @s[scores={timer=36..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run scoreboard objectives add click minecraft.custom:minecraft.jump

execute if entity @s[scores={timer=1}] run tag @a add NoTeleport
execute if entity @s[scores={timer=1}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=1}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=13}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=21}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=37}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=49}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=57}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=77}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=89}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=97}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=113}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.33
execute if entity @s[scores={timer=125}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.6
execute if entity @s[scores={timer=133}] as @a at @s run playsound minecraft:block.note_block.flute music @s ~ ~ ~ 1 1.2
execute if entity @s[scores={timer=300}] run tellraw @a {"text":"(Use the ocarina to play songs you learn)"}
