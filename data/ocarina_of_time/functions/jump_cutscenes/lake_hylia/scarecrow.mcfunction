execute unless entity @a[scores={click=0..}] run fill 803 66 2684 803 66 2684 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 802 66 2683 802 66 2683 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 801 66 2684 801 66 2684 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 802 66 2685 802 66 2685 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 803 68 2684 803 68 2684 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 802 68 2683 802 68 2683 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 801 68 2684 801 68 2684 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 802 68 2685 802 68 2685 minecraft:barrier
execute unless entity @a[scores={click=0..}] run scoreboard players set @s text 0
execute unless entity @a[scores={click=0..}] run tp @a 802 66 2684
execute unless entity @a[scores={click=0..}] run tag @a add NoTeleport
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Whoa! You have an ocarina! Hey, why don't you lay a tune on me with it, baby?!"}]
execute if entity @a[scores={click=1}] run tag @e[type=area_effect_cloud,tag=Songs] add Scarecrow

execute if entity @a[scores={click=1}] run scoreboard players set @a click 2

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

execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] run tag @s add CorrectSong

execute as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute as @e[type=item,nbt={Item:{tag:{OcarinaSaria:1b}}}] at @a run data merge entity @s {PickupDelay:0s}
execute as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~
execute as @e[type=item,nbt={Item:{tag:{OcarinaZelda:1b}}}] at @a run tp @s ~ ~ ~

#Finish 1
execute if entity @s[tag=WrongSong] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Oh well, I don't remember that song, baby. Why? That's what I can't tell ya! Good golly!"}]
execute if entity @s[tag=WrongSong] run tag @e[type=area_effect_cloud,tag=Songs] remove Scarecrow
execute if entity @s[tag=WrongSong] as @a run function ocarina_of_time:items/ocarina/ocarina_3
execute if entity @s[tag=WrongSong] run tag @a remove NoTeleport
execute if entity @s[tag=WrongSong] run fill 803 68 2685 801 66 2683 minecraft:air
execute if entity @s[tag=WrongSong] run tag @s add stoptext
execute if entity @s[tag=WrongSong] run scoreboard players set @s text 1
execute if entity @s[tag=WrongSong] run scoreboard objectives remove click
execute if entity @s[tag=WrongSong] run tag @a remove LearnScarecrowSong1
execute if entity @s[tag=WrongSong] run tag @s remove WrongSong

#Finish 2
execute if entity @s[tag=CorrectSong] run tellraw @a ["",{"text":"Bonooru:","color":"gold"},{"text":" Well...not bad! I will remember it for you anyway! I don't mean I can remember only a couple notes, but let's just cut it right there for now, baby!"}]
execute if entity @s[tag=CorrectSong] run tag @e[type=area_effect_cloud,tag=Songs] remove Scarecrow
execute if entity @s[tag=CorrectSong] run tag @a remove NoTeleport
execute if entity @s[tag=CorrectSong] run fill 805 64 2673 805 64 2673 minecraft:gold_block
execute if entity @s[tag=CorrectSong] run fill 803 68 2685 801 66 2683 minecraft:air
execute if entity @s[tag=CorrectSong] run tag @a add LearnScarecrowSong2
execute if entity @s[tag=CorrectSong] run tag @s add stoptext
execute if entity @s[tag=CorrectSong] run scoreboard players set @s text 2
execute if entity @s[tag=CorrectSong] run scoreboard objectives remove click
execute if entity @s[tag=CorrectSong] run tag @a remove LearnScarecrowSong1
execute if entity @s[tag=CorrectSong] run tag @s remove CorrectSong

