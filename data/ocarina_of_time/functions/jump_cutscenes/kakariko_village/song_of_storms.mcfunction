execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1569 49 1936 1569 49 1936 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1568 49 1935 1568 49 1935 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1570 49 1935 1570 49 1935 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1569 49 1934 1569 49 1934 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1569 51 1934 1569 51 1934 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1570 51 1935 1570 51 1935 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1569 51 1936 1569 51 1936 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1568 51 1935 1568 51 1935 minecraft:barrier
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run fill 1571 43 1937 1571 43 1937 minecraft:gold_block
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run tp @a 1569 48.5 1935
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=Wait] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"Grrrrrrrrr!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"I'll never forget what happened on that day seven years ago! Grrrrrrrrr!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"It's all that ocarina kid's fault! Next time he comes around here, I'm gonna mess him up!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"What?! You've got an ocarina!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"What the heck!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"That reminds me of that time seven years ago!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"Back then a mean kid came here and played a "},{"text":"strange song","color":"light_purple"},{"text":". It messed up this windmill!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=14}] run stopsound @a music
execute if entity @a[scores={click=14}] run tag @s add PlaySong
execute if entity @a[scores={click=14}] run tag @s add Wait
execute if entity @a[scores={click=14}] run scoreboard players set @a click 15

execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute if entity @s[tag=PlaySong] as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

execute if entity @s[tag=PlaySong] run scoreboard players add @s timer 1

execute if entity @s[scores={timer=31..}] run tag @e[type=area_effect_cloud,tag=Songs] add Storms
execute if entity @s[scores={timer=31..}] run advancement grant @a only minecraft:_ocarina/storms
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run stopsound @a
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tellraw @a ["",{"text":"You've learned the "},{"text":"Song of Storms","color":"light_purple"},{"text":"!"}]
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill 1568 49 1934 1570 51 1936 minecraft:air replace minecraft:barrier
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @a remove NoTeleport
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @s remove PlaySong
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @s remove Wait
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run scoreboard players set @s text 1
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @a remove LearnStorms
execute if entity @s[scores={timer=31..}] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run scoreboard objectives remove click

execute if entity @s[scores={timer=1}] run tag @a add NoTeleport
execute if entity @s[scores={timer=1}] run tag @a remove NoOcarina
execute if entity @s[scores={timer=1}] as @a at @s run tellraw @a ["",{"text":"Guru-Guru: ","color":"gold"},{"text":"I'll never forget "},{"text":"this song","color":"light_purple"},{"text":"!"}]
execute if entity @s[scores={timer=1}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .79
execute if entity @s[scores={timer=5}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .95
execute if entity @s[scores={timer=9}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 1.59
execute if entity @s[scores={timer=17}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .79
execute if entity @s[scores={timer=21}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .95
execute if entity @s[scores={timer=25}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 1.59
execute if entity @s[scores={timer=40}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .79
execute if entity @s[scores={timer=44}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .95
execute if entity @s[scores={timer=48}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 1.59
execute if entity @s[scores={timer=56}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .79
execute if entity @s[scores={timer=60}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 .95
execute if entity @s[scores={timer=64}] as @a at @s run playsound minecraft:block.note_block.pling music @a ~ ~ ~ 1 1.59
