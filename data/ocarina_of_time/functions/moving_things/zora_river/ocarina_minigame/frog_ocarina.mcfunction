execute unless entity @s[scores={lifetime=-1}] run scoreboard players add @s lifetime 1
execute if entity @s[tag=Prize2,scores={lifetime=1}] unless entity @s[tag=Minigame] if entity @s[tag=Grow] if entity @e[type=armor_stand,tag=Frog2,tag=Grow] if entity @e[type=armor_stand,tag=Frog3,tag=Grow] if entity @e[type=armor_stand,tag=Frog4,tag=Grow] if entity @e[type=armor_stand,tag=Frog5,tag=Grow] run tag @s add Minigame

#Appear
execute if entity @s[scores={lifetime=1}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/start

#Normal
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/wrong_song
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/wrong_song
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/wrong_song
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/wrong_song
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/wrong_song
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/wrong_song
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/wrong_song

execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/lullaby
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] as @e[type=armor_stand,tag=Frog2] at @s run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/sun
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] as @e[type=armor_stand,tag=Frog3] at @s run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/saria
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] as @e[type=armor_stand,tag=Frog4] at @s run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/time
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] as @e[type=armor_stand,tag=Frog5] at @s run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/epona
execute unless entity @s[tag=Minigame] if entity @s[scores={lifetime=1..}] if entity @a[tag=PlayingSong] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:moving_things/zora_river/ocarina_minigame/songs/storms

#Minigame
scoreboard players add @s time 1
execute if entity @s[scores={time=5..}] run scoreboard players set @s time 0

execute if entity @s[tag=Minigame] if entity @s[scores={lifetime=1}] run tag @a add OcarinaMinigame
execute if entity @s[tag=Minigame] if entity @s[scores={lifetime=1}] run tellraw @a ["",{"text":"Frog:","color":"gold"},{"text":" Look at us-we're all huge frogs! We are the world-famous Fabulous Five Froggish Tenors! Rrrribbit! Make us jump so that we'll be able to eat bugs flying above us, ribbit! Ok? Then, ready, set, go!"}]
execute if entity @s[scores={lifetime=1}] if entity @s[tag=Minigame] run tag @s add NoteChoice1

#Start
execute if entity @s[scores={lifetime=1..}] if entity @s[tag=Minigame] if entity @a[tag=PlayingSong] run tag @s add BeginMinigame
execute if entity @s[scores={lifetime=1..}] if entity @s[tag=BeginMinigame] run scoreboard players add @s GameTimer 1

execute if entity @s[scores={lifetime=1..}] if entity @s[scores={time=0,GameTimer=1}] run tag @s add NoteChoice1
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={time=1,GameTimer=1}] run tag @s add NoteChoice2
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={time=2,GameTimer=1}] run tag @s add NoteChoice3
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={time=3,GameTimer=1}] run tag @s add NoteChoice4
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={time=4,GameTimer=1}] run tag @s add NoteChoice5

#Out of Time
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={GameTimer=41..}] run playsound minecraft:entity.shulker_bullet.hurt music @a ~ ~ ~ 1 1
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={GameTimer=41..}] run tag @a add NoOcarina
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={GameTimer=41..}] run scoreboard players set @e[type=armor_stand,tag=Frog1] lifetime -1

#Win
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={ArrowCount=14..}] run tellraw @a ["",{"text":"Frog:","color":"gold"},{"text":" Young boy, you did grrreat! Perrrrrfect! We are stuffed, ribbit! Would you take this token of our gratitude?"}]
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={ArrowCount=14..}] unless entity @s[tag=Prize3] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={ArrowCount=14..}] unless entity @s[tag=Prize3] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={ArrowCount=14..}] if entity @s[tag=Prize3] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b}
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={ArrowCount=14..}] run tag @s add Prize3
execute if entity @s[scores={lifetime=1..}] if entity @s[scores={ArrowCount=14..}] run scoreboard players set @s lifetime -1

#Jump
execute if entity @a[nbt={Inventory:[{tag:{CorrectNote:1b}}]}] run tag @s add Jump
execute if entity @a[nbt={Inventory:[{tag:{CorrectNote:1b,Note1:1b}}]}] run tag @s add Jump1
execute if entity @a[nbt={Inventory:[{tag:{CorrectNote:1b,Note2:1b}}]}] run tag @s add Jump2
execute if entity @a[nbt={Inventory:[{tag:{CorrectNote:1b,Note3:1b}}]}] run tag @s add Jump3
execute if entity @a[nbt={Inventory:[{tag:{CorrectNote:1b,Note4:1b}}]}] run tag @s add Jump4
execute if entity @a[nbt={Inventory:[{tag:{CorrectNote:1b,Note5:1b}}]}] run tag @s add Jump5

execute if entity @s[tag=Jump] run scoreboard players add @s BlueRupee 1
execute if entity @s[tag=Jump1,scores={BlueRupee=1}] run tp @s ~ ~.5 ~
execute if entity @s[tag=Jump1,scores={BlueRupee=5}] run tp @s ~ ~-.5 ~
execute if entity @s[tag=Jump2,scores={BlueRupee=1}] as @e[type=armor_stand,tag=Frog2] at @s run tp @s ~ ~.5 ~
execute if entity @s[tag=Jump2,scores={BlueRupee=5}] as @e[type=armor_stand,tag=Frog2] at @s run tp @s ~ ~-.5 ~
execute if entity @s[tag=Jump3,scores={BlueRupee=1}] as @e[type=armor_stand,tag=Frog3] at @s run tp @s ~ ~.5 ~
execute if entity @s[tag=Jump3,scores={BlueRupee=5}] as @e[type=armor_stand,tag=Frog3] at @s run tp @s ~ ~-.5 ~
execute if entity @s[tag=Jump4,scores={BlueRupee=1}] as @e[type=armor_stand,tag=Frog4] at @s run tp @s ~ ~.5 ~
execute if entity @s[tag=Jump4,scores={BlueRupee=5}] as @e[type=armor_stand,tag=Frog4] at @s run tp @s ~ ~-.5 ~
execute if entity @s[tag=Jump5,scores={BlueRupee=1}] as @e[type=armor_stand,tag=Frog5] at @s run tp @s ~ ~.5 ~
execute if entity @s[tag=Jump5,scores={BlueRupee=5}] as @e[type=armor_stand,tag=Frog5] at @s run tp @s ~ ~-.5 ~

execute if entity @s[scores={BlueRupee=5..}] run tag @s remove Jump
execute if entity @s[scores={BlueRupee=5..}] run tag @s remove Jump1
execute if entity @s[scores={BlueRupee=5..}] run tag @s remove Jump2
execute if entity @s[scores={BlueRupee=5..}] run tag @s remove Jump3
execute if entity @s[scores={BlueRupee=5..}] run tag @s remove Jump4
execute if entity @s[scores={BlueRupee=5..}] run tag @s remove Jump5
execute if entity @s[scores={BlueRupee=5..}] run scoreboard players set @s BlueRupee 0
