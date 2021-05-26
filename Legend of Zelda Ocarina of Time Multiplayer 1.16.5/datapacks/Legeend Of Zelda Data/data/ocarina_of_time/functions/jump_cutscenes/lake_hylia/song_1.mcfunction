execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 803 66 2684 803 66 2684 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 802 66 2683 802 66 2683 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 801 66 2684 801 66 2684 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 802 66 2685 802 66 2685 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 803 68 2684 803 68 2684 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 802 68 2683 802 68 2683 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 801 68 2684 801 68 2684 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run fill 802 68 2685 802 68 2685 minecraft:barrier
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tp @a 802 66 2684
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run tag @a add NoTeleport
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @s[tag=Part2] unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute unless entity @s[tag=Part2] if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Hey, it's the ocarina! Play that song with it, baby!"}]
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run tag @e[type=area_effect_cloud,tag=Songs] add Scarecrow
execute unless entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2

execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_11",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_13",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_ward",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_far",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_chirp",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_strad",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mellohi",Count:1b}]}] run tag @s add WrongSong
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tag @s add WrongSong

execute unless entity @s[tag=Part2] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] run tag @s add CorrectSong

execute as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

#Finish 1
execute if entity @s[tag=WrongSong] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Play it like that and you'll never move this scarecrow's heart, baby!"}]
execute if entity @s[tag=WrongSong] run fill 803 68 2685 801 66 2683 minecraft:air
execute if entity @s[tag=WrongSong] run tag @s add stoptext
execute if entity @s[tag=WrongSong] run tag @e[type=area_effect_cloud,tag=Songs] remove Scarecrow
execute if entity @s[tag=WrongSong] as @a run function ocarina_of_time:items/ocarina/ocarina_3
execute if entity @s[tag=WrongSong] run tag @a remove NoTeleport
execute if entity @s[tag=WrongSong] run scoreboard players set @s text 2
execute if entity @s[tag=WrongSong] run scoreboard objectives remove click
execute if entity @s[tag=WrongSong] run tag @a remove LearnScarecrowSong3
execute if entity @s[tag=WrongSong] run tag @s remove WrongSong

#Finish 2
execute if entity @s[tag=CorrectSong] run scoreboard objectives remove click
execute if entity @s[tag=CorrectSong] run tag @s add Part2
execute unless entity @a[scores={click=0..}] if entity @s[tag=CorrectSong] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 1
execute if entity @s[tag=CorrectSong] run tag @s remove CorrectSong

execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run advancement grant @a only minecraft:_ocarina/scarecrow
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" OH, YEAHHH! That's it-that's the tune! You rock! I'm blown away!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Oh, no, no! I didn't forget the song... I never forget anything! But I just feel like rewarding you, baby!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" ...I have a good idea!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @s[tag=Part2] if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" My buddy Pierre is wandering around, so play that tune when you want to call him!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @s[tag=Part2] if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" I'll tell him to help you if he's nearby and hears that song, baby!"}]
execute if entity @s[tag=Part2] if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run fill 803 68 2685 801 66 2683 minecraft:air
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run tag @s add stoptext
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run scoreboard players set @s text 3
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run tag @a remove NoTeleport
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run tag @a remove LearnScarecrowSong2
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run tag @a remove LearnScarecrowSong3
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run tag @s remove CorrectSong
execute if entity @s[tag=Part2] if entity @a[scores={click=10..}] run scoreboard objectives remove click
