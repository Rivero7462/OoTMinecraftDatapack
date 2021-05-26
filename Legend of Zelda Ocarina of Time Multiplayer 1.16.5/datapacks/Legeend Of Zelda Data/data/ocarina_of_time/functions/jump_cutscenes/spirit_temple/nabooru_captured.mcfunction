execute unless entity @a[scores={click=0..}] run fill 400 78 387 400 78 387 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 399 78 386 399 78 386 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 398 78 387 398 78 387 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 399 78 388 399 78 388 minecraft:barrier
execute unless entity @a[scores={click=0..}] run advancement grant @a only minecraft:_gear/silver_gauntlets
execute unless entity @a[scores={click=0..}] run fill 408 53 403 408 53 405 minecraft:light_blue_glazed_terracotta
execute unless entity @a[scores={click=0..}] run fill 409 53 404 407 53 404 minecraft:light_blue_glazed_terracotta
execute unless entity @a[scores={click=0..}] run summon minecraft:armor_stand 408 58 409 {Tags:["KotakeBroom1"],Rotation:[-90f],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute unless entity @a[scores={click=0..}] run summon minecraft:armor_stand 408 58 399 {Tags:["KoumeBroom1"],Rotation:[90f],ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:97}}],Invisible:1b,NoGravity:1b}
execute unless entity @a[scores={click=0..}] run tp @s 408 53.3 404
execute unless entity @a[scores={click=0..}] run tp @e[type=armor_stand,tag=Kotake1] 408 58 409
execute unless entity @a[scores={click=0..}] run tp @e[type=armor_stand,tag=Koume1] 408 58 399
execute unless entity @a[scores={click=0..}] run tp @a 399 77 387
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run playsound minecraft:entity.panda.death ambient @a ~ ~ ~ .2 2
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Hey! Where are you taking me?!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" Yeearggh! Let me go!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] at @a run tp @a ~ ~ ~ -28 50
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" You...you fiends! Ganondorf's minions!"}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"! Get out of here! Now!"}]
execute if entity @a[scores={click=7}] run data merge entity @s {Pose:{RightArm:[-160f,0f,-30f],LeftArm:[0f,0f,-20f],Head:[-50f,0f,0f]}}
execute if entity @a[scores={click=7}] run tp @s 408 52.7 404
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Nabooru:","color":"gold"},{"text":" These witches! They're using black magic on me!"}]
execute if entity @a[scores={click=9}] run tp @s 408 48 404
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10

execute if entity @a[scores={click=10..}] run scoreboard players add @s timer 1
execute unless entity @s[scores={timer=1..}] run particle minecraft:witch 408 54.1 404 .5 .1 .5 1 10 normal
execute if entity @s[scores={timer=1}] run fill 407 53 403 409 53 405 minecraft:sand
execute if entity @s[scores={timer=1..}] if entity @e[type=armor_stand,tag=Kotake1,x=413,y=58,z=404,dx=0,dz=0] run tag @s add Leave1
execute if entity @s[scores={timer=1..}] if entity @e[type=armor_stand,tag=Koume1,x=413,y=58,z=404,dx=0,dz=0] run tag @s add Leave2

execute unless entity @s[tag=Leave1] as @e[type=armor_stand,tag=Kotake1] at @s run tp @s ^ ^ ^ ~-5 ~
execute unless entity @s[tag=Leave1] as @e[type=armor_stand,tag=Kotake1] at @s positioned 408 58 404 run tp @s ^-5 ^ ^
execute unless entity @s[tag=Leave2] as @e[type=armor_stand,tag=Koume1] at @s run tp @s ^ ^ ^ ~-5 ~
execute unless entity @s[tag=Leave2] as @e[type=armor_stand,tag=Koume1] at @s positioned 408 58 404 run tp @s ^-5 ^ ^

execute unless entity @s[tag=Finish1] if entity @s[tag=Leave1] as @e[type=armor_stand,tag=Kotake1] at @s facing 408 59 382 rotated ~ 0 run tp @s ^ ^ ^.3 ~ ~
execute unless entity @s[tag=Finish2] if entity @s[tag=Leave2] as @e[type=armor_stand,tag=Koume1] at @s facing 408 59 382 rotated ~ 0 run tp @s ^ ^ ^.3 ~ ~

execute if entity @e[type=armor_stand,tag=Kotake1,x=408,y=59,z=382,dx=0,dz=0] run tag @s add Finish1
execute if entity @e[type=armor_stand,tag=Koume1,x=408,y=59,z=382,dx=0,dz=0] run tag @s add Finish2

execute if entity @s[tag=Finish1] run tp @e[type=armor_stand,tag=Kotake1] 409 48 404
execute if entity @s[tag=Finish1] run kill @e[type=armor_stand,tag=KotakeBroom1]
execute if entity @s[tag=Finish2] run tp @e[type=armor_stand,tag=Koume1] 407 48 404
execute if entity @s[tag=Finish2] run kill @e[type=armor_stand,tag=KoumeBroom1]
execute if entity @s[tag=Finish1] if entity @s[tag=Finish2] run tag @s add Finish

#Brooms
execute as @e[type=armor_stand,tag=KotakeBroom1] at @e[type=armor_stand,tag=Kotake1] rotated as @e[type=armor_stand,tag=Kotake1] run tp @s ^ ^ ^.3 ~ 0
execute as @e[type=armor_stand,tag=KoumeBroom1] at @e[type=armor_stand,tag=Koume1] rotated as @e[type=armor_stand,tag=Koume1] run tp @s ^ ^ ^.3 ~ 0

execute if entity @s[tag=Finish] run tag @a remove NoOcarina
execute if entity @s[tag=Finish] run tag @a add FixNabooru
execute if entity @s[tag=Finish] run fill 400 78 386 398 78 388 minecraft:air
execute if entity @s[tag=Finish] run tag @a remove NabooruCapture
execute if entity @s[tag=Finish] run scoreboard objectives remove click
execute if entity @s[tag=Finish] run scoreboard players set @s timer 0
