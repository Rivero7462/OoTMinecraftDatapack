#Start
execute if entity @s[nbt={Inventory:[{tag:{OcarinaSong:1b}}]}] run stopsound @s record
#Time
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run playsound minecraft:music_disc.wait record @s ~ ~ ~ 1 1 1
#Shadow
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/shadow
#Suns
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run function ocarina_of_time:items/ocarina/normal_songs/sun
#Forest
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/forest
#Spirit
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/spirit
#Epona
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/epona
#Fire
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/fire
#Saria
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] unless entity @a[x=-614,y=77,z=-667,dx=1,dz=1] run function ocarina_of_time:items/ocarina/normal_songs/saria
#Light
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/light
#Storms
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/ocarina/normal_songs/storms
#Water
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run function ocarina_of_time:items/ocarina/teleports/water
#Zelda
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run playsound minecraft:music_disc.mall record @s ~ ~ ~ 1 1 1
#Scarecrow
execute if entity @s[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] run function ocarina_of_time:items/ocarina/normal_songs/scarecrow
#Finish
execute if entity @s[nbt={Inventory:[{tag:{OcarinaSong:1b}}]}] run function ocarina_of_time:items/ocarina/ocarina_3

#Minigame
#Wrong
execute if entity @a[tag=FrogMinigame] if entity @s[nbt={Inventory:[{tag:{Note:1b}}]}] run function ocarina_of_time:items/ocarina/frog_minigame/wrong
execute if entity @s[nbt={Inventory:[{tag:{Note:1b}}]}] run function ocarina_of_time:items/ocarina/minigame/wrong
#Note 1
execute if entity @s[nbt={Inventory:[{tag:{CorrectNote:1b,Note1:1b}}]}] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.33
#Note 2
execute if entity @s[nbt={Inventory:[{tag:{CorrectNote:1b,Note2:1b}}]}] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.6
#Note 3
execute if entity @s[nbt={Inventory:[{tag:{CorrectNote:1b,Note3:1b}}]}] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.2
#Note 4
execute if entity @s[nbt={Inventory:[{tag:{CorrectNote:1b,Note4:1b}}]}] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .8
#Note 5
execute if entity @s[nbt={Inventory:[{tag:{CorrectNote:1b,Note5:1b}}]}] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 .95
execute if entity @a[tag=FrogMinigame] if entity @s[nbt={Inventory:[{tag:{CorrectNote:1b}}]}] run function ocarina_of_time:items/ocarina/frog_minigame/correct
execute if entity @s[nbt={Inventory:[{tag:{CorrectNote:1b}}]}] run function ocarina_of_time:items/ocarina/minigame/correct

scoreboard objectives add Ocarina minecraft.custom:minecraft.jump
