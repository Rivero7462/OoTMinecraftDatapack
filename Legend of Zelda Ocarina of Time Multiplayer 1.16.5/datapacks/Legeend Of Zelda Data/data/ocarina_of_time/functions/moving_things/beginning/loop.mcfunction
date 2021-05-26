#Start
execute unless block 878 77 1995 minecraft:air run summon minecraft:armor_stand 859 77 2014 {Tags:["Title","Title1"],Rotation:[-135f],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:5}}],Invisible:1b,NoGravity:1b}
execute unless block 878 77 1995 minecraft:air run summon minecraft:armor_stand 859 77 2014 {Tags:["Title","Title2"],Rotation:[-135f],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:6}}],Invisible:1b,NoGravity:1b}
execute unless block 878 77 1995 minecraft:air run summon minecraft:armor_stand 859 77 2014 {Tags:["Title","Title3"],Rotation:[-135f],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:7}}],Invisible:1b,NoGravity:1b}
execute unless block 878 77 1995 minecraft:air run summon minecraft:armor_stand 859 77 2014 {Tags:["Title","Title4"],Rotation:[-135f],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:8}}],Invisible:1b,NoGravity:1b}
execute unless block 878 77 1995 minecraft:air run summon minecraft:horse 845 75 2010 {Tags:["IntroHorse"],Tame:1b,DeathLootTable:"loz:entities/nothing",PersistenceRequired:1b,Silent:1,Invulnerable:1,Variant:258,SaddleItem:{id:saddle,Count:1b},NoAI:1b,Rotation:[-45f]}
execute unless block 878 77 1995 minecraft:air run spawnpoint @a 878 76 1995
execute unless block 878 77 1995 minecraft:air run scoreboard players set @a MiniGameTime 0
execute unless block 878 77 1995 minecraft:air run gamemode adventure @a
execute unless block 878 77 1995 minecraft:air as @a run forceload add 878 1995
execute unless block 878 77 1995 minecraft:air run time set 12501
execute unless block 878 77 1995 minecraft:air run data merge entity @e[type=area_effect_cloud,tag=Wallet,limit=1] {Tags:["Wallet"]}
execute unless block 878 77 1995 minecraft:air run data merge entity @e[type=area_effect_cloud,tag=Songs,limit=1] {Tags:["Songs"]}
execute unless block 878 77 1995 minecraft:air run data merge entity @e[type=area_effect_cloud,tag=Progress,limit=1] {Tags:["Progress"]}
execute unless block 878 77 1995 minecraft:air run scoreboard players reset @e[type=area_effect_cloud,tag=Progress,limit=1]
execute unless block 878 77 1995 minecraft:air run scoreboard players reset @e[type=area_effect_cloud,tag=Progress,limit=1]
execute unless block 878 77 1995 minecraft:air run scoreboard players reset @e[type=area_effect_cloud,tag=FakeSaria]
execute unless block 878 77 1995 minecraft:air run tag @a add StopTime
execute unless block 878 77 1995 minecraft:air run attribute @p minecraft:generic.max_health base set 6
execute unless block 878 77 1995 minecraft:air run advancement grant @a everything
execute unless block 878 77 1995 minecraft:air run advancement revoke @a through minecraft:_gear/root
execute unless block 878 77 1995 minecraft:air run advancement revoke @a through minecraft:_health/root
execute unless block 878 77 1995 minecraft:air run advancement revoke @a through minecraft:_ocarina/root
execute unless block 878 77 1995 minecraft:air run advancement revoke @a through minecraft:_skulltulas/root
execute unless block 878 77 1995 minecraft:air run advancement revoke @a through minecraft:_upgrades/root
execute unless block 878 77 1995 minecraft:air run advancement revoke @a through minecraft:_secrets/root
fill 879 76 1994 877 77 1996 minecraft:air

#Quit Game
execute if entity @a[name=!Rivero7462] run scoreboard players set @a Intro 1
execute if entity @a[name=!Rivero7462] run fill 878 60 1997 878 60 1997 minecraft:gold_block
execute unless entity @a[scores={Intro=1..}] unless entity @a[scores={lifetime=1..40}] run scoreboard players reset @a
scoreboard objectives add Intro minecraft.custom:minecraft.leave_game
execute if entity @a[scores={Intro=1..}] run tellraw @a ["",{"text":"Rivero7462: ","color":"gold"},{"text":"Hello! Thank you for playing the map! Stuck, have any questions, or just want to chat? Join the discord! "},{"text":"https://discord.gg/K4dj6RT","color":"green","clickEvent":{"action":"open_url","value":"https://discord.gg/K4dj6RT"}}]
execute if entity @a[scores={Intro=1..}] run tellraw @a ["",{"text":"Rivero7462: ","color":"gold"},{"text":"If you enjoy the map, please consider donating! I appreciate it! "},{"text":"https://www.patreon.com/Rivero","color":"green","clickEvent":{"action":"open_url","value":"https://www.patreon.com/Rivero"}}]
execute if entity @a[scores={Intro=1..}] run tag @a add IntroMusic
execute if entity @a[scores={Intro=1..}] run scoreboard players set @a Intro 0

#Music
execute if entity @a[tag=IntroMusic] run scoreboard players add @a lifetime 1
execute if entity @a[scores={lifetime=40}] run function ocarina_of_time:music/intro
execute if entity @a[scores={lifetime=40..}] run tag @a remove IntroMusic
execute if entity @a[scores={lifetime=40..}] run scoreboard players reset @a lifetime

#Donators
execute if block 878 77 1998 minecraft:stone_button[powered=true] run tp @a 888 4 -521 90 ~

#Settings
execute if block 878 77 1992 minecraft:stone_button[powered=true] run fill 923 4 -632 923 5 -632 minecraft:air
execute if block 878 77 1992 minecraft:stone_button[powered=true] run tp @a 923 4 -633 180 ~

#Start
execute if block 875 76 1995 minecraft:lectern{Page:1} run fill 875 77 1995 875 77 1995 minecraft:stone_button[facing=east] replace minecraft:air

execute if block 875 77 1995 minecraft:stone_button[powered=true] run scoreboard players set @e[type=area_effect_cloud,tag=Progress] Bottle 0
execute if block 875 77 1995 minecraft:stone_button[powered=true] run stopsound @a music
execute if block 875 77 1995 minecraft:stone_button[powered=true] run kill @e[type=armor_stand,tag=Title]
execute if block 875 77 1995 minecraft:stone_button[powered=true] run kill @e[type=horse,tag=IntroHorse]
execute if block 875 77 1995 minecraft:stone_button[powered=true] run scoreboard objectives remove Intro
execute if block 875 77 1995 minecraft:stone_button[powered=true] run forceload remove all
execute if block 875 77 1995 minecraft:stone_button[powered=true] run clear @a minecraft:leather_leggings
execute if block 875 77 1995 minecraft:stone_button[powered=true] run tag @a add NotStarted
execute if block 875 77 1995 minecraft:stone_button[powered=true] at @a run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["OpeningCutscene"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if block 875 77 1995 minecraft:stone_button[powered=true] run fill 882 78 1991 874 75 1999 minecraft:air
