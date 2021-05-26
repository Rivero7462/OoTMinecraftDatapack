execute as @e[type=armor_stand,tag=LightMedallion] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[type=armor_stand,tag=LightMedallion] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-.5 ~

execute unless entity @a[scores={click=0..}] run tp @a 1001 4 1386
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run stopsound @a music
execute unless entity @a[scores={click=0..}] run tag @e[type=area_effect_cloud,tag=Progress] add KokiriTunic
execute unless entity @a[scores={click=0..}] if entity @a[nbt={Inventory:[{tag:{Omni:1b}}]}] run give @a minecraft:golden_chestplate{display:{Name:"{\"text\":\"Omni Tunic\"}"},Unbreakable:1b,GoronTunic:1b,ZoraTunic:1b,Omni:1b,HideFlags:46}
execute unless entity @a[scores={click=0..}] run replaceitem entity @a armor.chest minecraft:leather_chestplate{display:{Name:"{\"text\":\"Kokiri Tunic\"}",color:40203},Unbreakable:1b,HideFlags:46,KokiriTunic:1b}
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Geh heh heh! Excellent work!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"As I thought, you held the keys to the Door of Time!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"You have led me to the gates of the Sacred Realm..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ganondorf: ","color":"gold"},{"text":"Yes, I owe it all to you, kid!"}]
execute if entity @a[scores={click=7}] run summon minecraft:armor_stand 991 26 1466 {Tags:["Navi3"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[35f],CustomName:"\"Navi\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @a[scores={click=7}] run tp @a 999 4 1386
execute if entity @a[scores={click=7}] run tp @e[type=armor_stand,tag=Ganondorf4] 1009 4 1386
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"selector":"@p"},{"text":"..."}]
execute if entity @a[scores={click=9}] run function ocarina_of_time:music/chamber_of_sages
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Wake up... "},{"selector":"@p"},{"text":", the chosen one..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"I am "},{"text":"Rauru","color":"red"},{"text":", one of the ancient Sages..."}]
execute if entity @a[scores={click=13}] run tp @a 994 26 1466 60 60
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Ages ago, we ancient Sages built the Temple of Time to protect the entrance to the Sacred Realm..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"This is the "},{"text":"Chamber of Sages","color":"red"},{"text":", inside the Temple of Light..."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The Temple of Light, situated in the very center of the Sacred Realm, is the last stronghold against Ganondorf's evil forces."}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The "},{"text":"Master Sword","color":"aqua"},{"text":"-the evil-destroying sword that you pulled out of the Pedestal of Time-was the key to the Sacred Realm."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"selector":"@p"},{"text":"... Don't be alarmed... Look at yourself...!"}]
execute if entity @a[scores={click=23}] run summon minecraft:armor_stand 993 12 1396 {Tags:["Navi4"],NoGravity:1b,Small:0b,ShowArms:0b,Invisible:1b,Rotation:[180f],CustomName:"\"Navi\"",CustomNameVisible:0,ArmorItems:[{},{},{},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Navi\"}",Id:[I;187647191,704335702,-1723810939,-35746885],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGEyNmUwN2UxZmYyZWRkNzJlNWUzMGJlYmRlZjExYjZhZTE0ODdiOWRhZGQzNzlhM2I1NjEwZWI3ZmU5ZWE4NSJ9fX0="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f],Body:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftLeg:[0f,0f,0f],Head:[0f,0f,0f]}}
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Look, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! You're big now! You've grown up!","color":"aqua"}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The Master Sword is a sacred blade that evil ones may never touch..."}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Only one worthy of the title of \""},{"text":"Hero of Time","color":"red"},{"text":"\" can pull it from the Pedestal of Time..."}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"However, you were too young to be the Hero of Time..."}]
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Therefore, your spirit was sealed here for seven years."}]
execute if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"And now that you are old enough, the time has come for you to awaken as the Hero of Time!"}]
execute if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"But, remember..."}]
execute if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Though you opened the Door of Time in the name of peace..."}]
execute if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute if entity @a[scores={click=41}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Ganondorf","color":"red"},{"text":", the Gerudo King of Theives, used it to enter this forbidden Sacred Realm!"}]
execute if entity @a[scores={click=41}] run scoreboard players set @a click 42
execute if entity @a[scores={click=43}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"He obtained the Triforce from the Temple of Light, and with its power, he became the "},{"text":"King of Evil","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=43}] run scoreboard players set @a click 44
execute if entity @a[scores={click=45}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"His evil power radiated from the temples of Hyrule, and in seven short years, it transformed Hyrule into a world of monsters."}]
execute if entity @a[scores={click=45}] run scoreboard players set @a click 46
execute if entity @a[scores={click=47}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"My power now has only little influence, even in this Sacred Realm..."}]
execute if entity @a[scores={click=47}] run scoreboard players set @a click 48
execute if entity @a[scores={click=49}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Namely, this Chamber of Sages."}]
execute if entity @a[scores={click=49}] run scoreboard players set @a click 50
execute if entity @a[scores={click=51}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"But there is still hope..."}]
execute if entity @a[scores={click=51}] run scoreboard players set @a click 52
execute if entity @a[scores={click=53}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The power of the Sages remains."}]
execute if entity @a[scores={click=53}] run scoreboard players set @a click 54
execute if entity @a[scores={click=55}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"When the power of all the "},{"text":"Sages ","color":"red"},{"text":"is awakened..."}]
execute if entity @a[scores={click=55}] run scoreboard players set @a click 56
execute if entity @a[scores={click=57}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The "},{"text":"Sages' Seals","color":"red"},{"text":" will contain all the evil power in the void of the Realm..."}]
execute if entity @a[scores={click=57}] run scoreboard players set @a click 58
execute if entity @a[scores={click=59}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"I, Rauru, am one of the Sages... And..."}]
execute if entity @a[scores={click=59}] run scoreboard players set @a click 60
execute if entity @a[scores={click=61}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Your power to fight together with the Sages makes you the "},{"text":"Hero of Time","color":"red"},{"text":"!"}]
execute if entity @a[scores={click=61}] run scoreboard players set @a click 62
execute if entity @a[scores={click=63}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"The Hero of Time, chosen by the Master Sword!"}]
execute if entity @a[scores={click=63}] run scoreboard players set @a click 64
execute if entity @a[scores={click=65}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Keep my spirit with you... Find the power of the other Sages, and add their might to your own!"}]
execute if entity @a[scores={click=65}] run scoreboard players set @a click 66
execute if entity @a[scores={click=67}] run data merge entity @s {Rotation:[-116f],DisabledSlots:4144959,Pose:{Head:[-45f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[-135f,20f,0f],RightArm:[-135f,-20f,0f]}}
execute if entity @a[scores={click=67}] run advancement grant @a only minecraft:_gear/light_medallion
execute if entity @a[scores={click=67}] run summon minecraft:item 993.18 36 1467.3 {Item:{id:shears,Count:1,tag:{CustomModelData:1}},Tags:["NoPickup"]}
execute if entity @a[scores={click=67..71}] run data merge entity @e[type=item,nbt={Item:{tag:{CustomModelData:1}}},limit=1] {PickupDelay:1000}
execute if entity @a[scores={click=67}] run tellraw @a ["",{"text":"You received the "},{"text":"Light Medallion","color":"aqua"},{"text":"! Rauru the Sage adds his power to yours!"}]
execute if entity @a[scores={click=67}] run scoreboard players set @a click 68
execute if entity @a[scores={click=71}] run tp @a 999 4 1386
execute if entity @a[scores={click=71}] run fill 994 13 1394 994 12 1394 minecraft:barrier
execute if entity @a[scores={click=71}] run fill 993 13 1393 993 13 1393 minecraft:barrier
execute if entity @a[scores={click=71}] run fill 992 13 1394 992 13 1394 minecraft:barrier
execute if entity @a[scores={click=71}] run fill 993 13 1395 993 13 1395 minecraft:barrier
execute if entity @a[scores={click=71}] run kill @e[type=item,nbt={Item:{tag:{CustomModelData:1}}}]
execute if entity @a[scores={click=71}] run tellraw @a ["",{"text":"Rauru: ","color":"gold"},{"text":"Find the other Sages and save Hyrule!"}]
execute if entity @a[scores={click=71}] run scoreboard players set @a click 72
execute if entity @a[scores={click=73}] run tp @a 993 12 1394
execute if entity @a[scores={click=73}] run function ocarina_of_time:music/temple_of_time
execute if entity @a[scores={click=73}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"selector":"@p","color":"aqua"},{"text":"...we're back in the ","color":"aqua"},{"text":"Temple of Time"},{"text":"... But have ","color":"aqua"},{"text":"seven years"},{"text":" really passed?","color":"aqua"}]
execute if entity @a[scores={click=73}] run scoreboard players set @a click 74
execute if entity @a[scores={click=75}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"It looks like you won't be able to use some of the ","color":"aqua"},{"text":"weapons "},{"text":"you found as a kid anymore...","color":"aqua"}]
execute if entity @a[scores={click=75}] run scoreboard players set @a click 76
execute if entity @a[scores={click=77}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Let's get out of here!","color":"aqua"}]
execute if entity @a[scores={click=77}] run scoreboard players set @a click 78

execute if entity @a[scores={click=78}] run tag @a remove NoOcarina
execute if entity @a[scores={click=78}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=6..}] run scoreboard players set @s text 6
execute if entity @a[scores={click=78}] run kill @e[type=armor_stand,tag=Navi3]
execute if entity @a[scores={click=78}] run kill @e[type=armor_stand,tag=Navi4]
execute if entity @a[scores={click=78}] run tp @s 989 21 1470
execute if entity @a[scores={click=78}] run tag @a remove Owl1
execute if entity @a[scores={click=78}] run tag @a remove Owl2
execute if entity @a[scores={click=78}] run tag @a remove Owl3
execute if entity @a[scores={click=78}] run tag @a remove Owl4
execute if entity @a[scores={click=78}] run fill 992 13 1394 992 13 1394 minecraft:air
execute if entity @a[scores={click=78}] run fill 992 13 1395 987 12 1395 minecraft:barrier
execute if entity @a[scores={click=78}] run fill 992 13 1393 987 12 1393 minecraft:barrier
execute if entity @a[scores={click=78}] run fill 986 12 1394 986 12 1394 minecraft:barrier
execute if entity @a[scores={click=78}] run tag @a add MeetSheik
execute if entity @a[scores={click=78}] run tag @a remove MasterSword
execute if entity @a[scores={click=78}] run scoreboard objectives remove click

#Navi
scoreboard players add @e[type=armor_stand,tag=Navi3] timer 1
execute as @e[type=armor_stand,tag=Navi3] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 27 ~
execute as @e[type=armor_stand,tag=Navi3] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi3] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi3] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi3] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
#Navi2
scoreboard players add @e[type=armor_stand,tag=Navi4] timer 1
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=0..5}] run tp @s ~ 12.5 ~
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=5..10}] run tp @s ~ ~.02 ~
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=10..15}] run tp @s ~ ~-.03 ~
execute as @e[type=armor_stand,tag=Navi4] at @s if entity @s[scores={timer=15..20}] run tp @s ~ ~-.02 ~

execute as @e[type=armor_stand,tag=Navi4] if entity @s[scores={timer=20..}] run scoreboard players reset @s timer
