#1
execute if entity @s[tag=NoteChoice1] run summon minecraft:armor_stand ^ ^-.1 ^1.3 {Tags:["Ocarina","Note1"],Invisible:1b,NoGravity:1,Rotation:[270f],ArmorItems:[{},{},{},{id:shears,Count:1,tag:{Unbreakable:1b,Damage:32,HideFlags:63,CorrectNote:1b,Note1:1b}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @s[tag=NoteChoice1] run summon minecraft:armor_stand ^ ^-.1 ^1.3 {Tags:["Ocarina","Note1"],Invisible:1b,NoGravity:1,Rotation:[270f],ArmorItems:[{},{},{},{id:barrier,Count:1,tag:{Note:1b}}],Pose:{Head:[0f,180f,0f]}}
#2
execute if entity @s[tag=NoteChoice2] run summon minecraft:armor_stand ^-1.05 ^-.1 ^.6 {Tags:["Ocarina","Note2"],Invisible:1b,NoGravity:1,Rotation:[60f],ArmorItems:[{},{},{},{id:shears,Count:1,tag:{Unbreakable:1b,Damage:32,HideFlags:63,CorrectNote:1b,Note2:1b}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @s[tag=NoteChoice2] run summon minecraft:armor_stand ^-1.05 ^-.1 ^.6 {Tags:["Ocarina","Note2"],Invisible:1b,NoGravity:1,Rotation:[60f],ArmorItems:[{},{},{},{id:barrier,Count:1,tag:{Note:1b}}],Pose:{Head:[0f,180f,0f]}}
#3
execute if entity @s[tag=NoteChoice3] run summon minecraft:armor_stand ^1.05 ^-.1 ^.6 {Tags:["Ocarina","Note3"],Invisible:1b,NoGravity:1,Rotation:[300f],ArmorItems:[{},{},{},{id:shears,Count:1,tag:{Unbreakable:1b,Damage:32,HideFlags:63,CorrectNote:1b,Note3:1b}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @s[tag=NoteChoice3] run summon minecraft:armor_stand ^1.05 ^-.1 ^.6 {Tags:["Ocarina","Note3"],Invisible:1b,NoGravity:1,Rotation:[300f],ArmorItems:[{},{},{},{id:barrier,Count:1,tag:{Note:1b}}],Pose:{Head:[0f,180f,0f]}}
#4
execute if entity @s[tag=NoteChoice4] run summon minecraft:armor_stand ^.6 ^-.1 ^-1.05 {Tags:["Ocarina","Note4"],Invisible:1b,NoGravity:1,Rotation:[210f],ArmorItems:[{},{},{},{id:shears,Count:1,tag:{Unbreakable:1b,Damage:32,HideFlags:63,CorrectNote:1b,Note4:1b}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @s[tag=NoteChoice4] run summon minecraft:armor_stand ^.6 ^-.1 ^-1.05 {Tags:["Ocarina","Note4"],Invisible:1b,NoGravity:1,Rotation:[210f],ArmorItems:[{},{},{},{id:barrier,Count:1,tag:{Note:1b}}],Pose:{Head:[0f,180f,0f]}}
#5
execute if entity @s[tag=NoteChoice5] run summon minecraft:armor_stand ^-.6 ^-.1 ^-1.05 {Tags:["Ocarina","Note5"],Invisible:1b,NoGravity:1,Rotation:[150f],ArmorItems:[{},{},{},{id:shears,Count:1,tag:{Unbreakable:1b,Damage:32,HideFlags:63,CorrectNote:1b,Note5:1b}}],Pose:{Head:[0f,180f,0f]}}
execute unless entity @s[tag=NoteChoice5] run summon minecraft:armor_stand ^-.6 ^-.1 ^-1.05 {Tags:["Ocarina","Note5"],Invisible:1b,NoGravity:1,Rotation:[150f],ArmorItems:[{},{},{},{id:barrier,Count:1,tag:{Note:1b}}],Pose:{Head:[0f,180f,0f]}}

execute as @e[type=armor_stand,tag=Note1,tag=Ocarina] at @a rotated ~ 0 run tp @s ^ ^-.1 ^1.2 facing entity @p
execute as @e[type=armor_stand,tag=Note2,tag=Ocarina] at @a rotated ~ 0 run tp @s ^-1.05 ^-.1 ^.6 facing entity @p
execute as @e[type=armor_stand,tag=Note3,tag=Ocarina] at @a rotated ~ 0 run tp @s ^1.05 ^-.1 ^.6 facing entity @p
execute as @e[type=armor_stand,tag=Note4,tag=Ocarina] at @a rotated ~ 0 run tp @s ^.6 ^-.1 ^-1.05 facing entity @p
execute as @e[type=armor_stand,tag=Note5,tag=Ocarina] at @a rotated ~ 0 run tp @s ^-.6 ^-.1 ^-1.05 facing entity @p
