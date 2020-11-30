execute if entity @s[tag=Lullaby] run clear @a minecraft:carrot_on_a_stick{OcarinaSaria:1b}
execute if entity @s[tag=Lullaby] run clear @a minecraft:carrot_on_a_stick{OcarinaZelda:1b}
execute if entity @s[tag=Lullaby] run effect give @a minecraft:slowness 100000 255 true

execute unless entity @s[tag=Lullaby] run tellraw @a {"text":"No songs learned yet."}

execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Time] facing entity @p feet rotated ~ 0 run summon minecraft:armor_stand ^-1.3 ^-.1 ^ {Tags:["Ocarina","Time"],Invisible:1b,NoGravity:1,Rotation:[0f],ArmorItems:[{},{},{},{id:music_disc_wait,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Song of Time\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Shadows] facing entity @p feet rotated ~ 0 run summon minecraft:armor_stand ^1.3 ^-.1 ^ {Tags:["Ocarina","Shadows"],Invisible:1b,NoGravity:1,Rotation:[180f],ArmorItems:[{},{},{},{id:music_disc_11,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Nocturne of Shadows\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Forest] facing entity @p feet rotated ~ 0 run summon minecraft:armor_stand ^ ^-.1 ^-1.3 {Tags:["Ocarina","Forest"],Invisible:1b,NoGravity:1,Rotation:[90f],ArmorItems:[{},{},{},{id:music_disc_ward,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Minuet of Forest\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] facing entity @p feet rotated ~ 0 run summon minecraft:armor_stand ^ ^-.1 ^1.3 {Tags:["Ocarina","Lullaby"],Invisible:1b,NoGravity:1,Rotation:[270f],ArmorItems:[{},{},{},{id:music_disc_mall,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Zelda's Lullaby\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=SariaSong] run summon minecraft:armor_stand ^-.6 ^-.1 ^1.05 {Tags:["Ocarina","SariaSong"],Invisible:1b,NoGravity:1,Rotation:[30f],ArmorItems:[{},{},{},{id:music_disc_cat,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Saria's Song\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Storms] run summon minecraft:armor_stand ^-1.05 ^-.1 ^.6 {Tags:["Ocarina","Storms"],Invisible:1b,NoGravity:1,Rotation:[60f],ArmorItems:[{},{},{},{id:music_disc_stal,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Song of Storms\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Epona] run summon minecraft:armor_stand ^.6 ^-.1 ^1.05 {Tags:["Ocarina","Epona"],Invisible:1b,NoGravity:1,Rotation:[330f],ArmorItems:[{},{},{},{id:music_disc_blocks,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Epona's Song\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Suns] run summon minecraft:armor_stand ^1.05 ^-.1 ^.6 {Tags:["Ocarina","Suns"],Invisible:1b,NoGravity:1,Rotation:[300f],ArmorItems:[{},{},{},{id:music_disc_13,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Sun's Song\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Spirit] run summon minecraft:armor_stand ^.6 ^-.1 ^-1.05 {Tags:["Ocarina","Spirit"],Invisible:1b,NoGravity:1,Rotation:[210f],ArmorItems:[{},{},{},{id:music_disc_far,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Requiem of Spirit\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Light] run summon minecraft:armor_stand ^1.05 ^-.1 ^-.6 {Tags:["Ocarina","Light"],Invisible:1b,NoGravity:1,Rotation:[240f],ArmorItems:[{},{},{},{id:music_disc_strad,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Prelude of Light\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Water] run summon minecraft:armor_stand ^-.6 ^-.1 ^-1.05 {Tags:["Ocarina","Water"],Invisible:1b,NoGravity:1,Rotation:[150f],ArmorItems:[{},{},{},{id:music_disc_mellohi,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Serenade of Water\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Fire] run summon minecraft:armor_stand ^-1.05 ^-.1 ^-.6 {Tags:["Ocarina","Fire"],Invisible:1b,NoGravity:1,Rotation:[120f],ArmorItems:[{},{},{},{id:music_disc_chirp,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Bolero of Fire\"}"}}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @a[tag=OcarinaMinigame] if entity @s[tag=Lullaby] if entity @s[tag=Scarecrow] run summon minecraft:armor_stand ^ ^-.5 ^ {Tags:["Ocarina","Scarecrow"],Invisible:1b,NoGravity:1,Rotation:[120f],ArmorItems:[{},{},{},{id:music_disc_pigstep,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Scarecrow Song\"}"}}}],Pose:{Head:[-90f,180f,0f]}}

#Scarecrow Song
execute if entity @a[tag=LearnScarecrowSong1] unless entity @s[tag=Lullaby] if entity @s[tag=Scarecrow] run clear @a minecraft:carrot_on_a_stick{OcarinaSaria:1b}
execute if entity @a[tag=LearnScarecrowSong1] unless entity @s[tag=Lullaby] if entity @s[tag=Scarecrow] run clear @a minecraft:carrot_on_a_stick{OcarinaZelda:1b}
execute if entity @a[tag=LearnScarecrowSong1] unless entity @s[tag=Lullaby] if entity @s[tag=Scarecrow] run effect give @a minecraft:slowness 100000 255 true
execute if entity @a[tag=LearnScarecrowSong1] unless entity @s[tag=Lullaby] if entity @s[tag=Scarecrow] run summon minecraft:armor_stand ^ ^-.5 ^ {Tags:["Ocarina","Scarecrow"],Invisible:1b,NoGravity:1,Rotation:[120f],ArmorItems:[{},{},{},{id:music_disc_pigstep,Count:1,tag:{OcarinaSong:1b,display:{Name:"{\"text\":\"Scarecrow Song\"}"}}}],Pose:{Head:[-90f,180f,0f]}}
execute if entity @a[tag=LearnScarecrowSong1] unless entity @s[tag=Lullaby] if entity @s[tag=Scarecrow] run tag @a add PlayingSong

execute as @e[type=armor_stand,tag=Time,tag=Ocarina] at @a rotated ~ 0 run tp @s ^-1.2 ^-.1 ^ facing entity @p
execute as @e[type=armor_stand,tag=Shadows,tag=Ocarina] at @a rotated ~ 0 run tp @s ^1.2 ^-.1 ^ facing entity @p
execute as @e[type=armor_stand,tag=Forest,tag=Ocarina] at @a rotated ~ 0 run tp @s ^ ^-.1 ^-1.2 facing entity @p
execute as @e[type=armor_stand,tag=Lullaby,tag=Ocarina] at @a rotated ~ 0 run tp @s ^ ^-.1 ^1.2 facing entity @p
execute as @e[type=armor_stand,tag=SariaSong,tag=Ocarina] at @a rotated ~ 0 run tp @s ^-.6 ^-.1 ^1.05 facing entity @p
execute as @e[type=armor_stand,tag=Storms,tag=Ocarina] at @a rotated ~ 0 run tp @s ^-1.05 ^-.1 ^.6 facing entity @p
execute as @e[type=armor_stand,tag=Epona,tag=Ocarina] at @a rotated ~ 0 run tp @s ^.6 ^-.1 ^1.05 facing entity @p
execute as @e[type=armor_stand,tag=Suns,tag=Ocarina] at @a rotated ~ 0 run tp @s ^1.05 ^-.1 ^.6 facing entity @p
execute as @e[type=armor_stand,tag=Spirit,tag=Ocarina] at @a rotated ~ 0 run tp @s ^.6 ^-.1 ^-1.05 facing entity @p
execute as @e[type=armor_stand,tag=Light,tag=Ocarina] at @a rotated ~ 0 run tp @s ^1.05 ^-.1 ^-.6 facing entity @p
execute as @e[type=armor_stand,tag=Water,tag=Ocarina] at @a rotated ~ 0 run tp @s ^-.6 ^-.1 ^-1.05 facing entity @p
execute as @e[type=armor_stand,tag=Fire,tag=Ocarina] at @a rotated ~ 0 run tp @s ^-1.05 ^-.1 ^-.6 facing entity @p
execute as @e[type=armor_stand,tag=Scarecrow,tag=Ocarina] at @a rotated ~ 0 run tp @s ^ ^-.5 ^ ~ 0

#Minigame
execute if entity @a[tag=OcarinaMinigame] if block -568 72 -662 minecraft:barrier as @e[type=armor_stand,tag=SkullKid2] run function ocarina_of_time:items/ocarina/minigame/summon
execute if entity @a[tag=FrogMinigame] if block 1543 71 2294 minecraft:barrier as @e[type=armor_stand,tag=Frog1,tag=Minigame] run function ocarina_of_time:items/ocarina/frog_minigame/summon
execute if entity @s[tag=Lullaby] run tag @a add PlayingSong
