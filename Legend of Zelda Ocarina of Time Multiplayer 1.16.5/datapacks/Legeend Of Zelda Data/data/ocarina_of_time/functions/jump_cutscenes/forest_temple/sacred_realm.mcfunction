execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..}] run scoreboard players add @e[type=armor_stand,tag=SacredSaria] timer 1
execute if entity @e[type=armor_stand,tag=SacredSaria,scores={timer=15}] run tp @e[type=armor_stand,tag=SacredSaria] 989 26 1463
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"Thank you... Because of you, I could awaken as a Sage..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Saria: ","color":"gold"},{"text":"I am "},{"text":"Saria","color":"green"},{"text":". The Sage of the Forest Temple..."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" I always believed that you would come. Because I know you..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" No..."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" You don't have to explain it to me..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" Because it is destiny that you and I can't live in the same world."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" I will stay here as the "},{"text":"Forest Sage ","color":"green"},{"text":"and help you..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" Now, please take this "},{"text":"Medallion","color":"green"},{"text":"..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run data merge entity @e[type=armor_stand,tag=SacredSaria,limit=1] {Pose:{Head:[-45f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[-135f,20f,0f],RightArm:[-135f,-20f,0f]}}
execute if entity @a[scores={click=17}] run advancement grant @a only minecraft:_gear/forest_medallion
execute if entity @a[scores={click=17}] run summon minecraft:item 992.8 36 1465.4 {Item:{id:shears,Count:1,tag:{CustomModelData:2}},Tags:["NoPickup"]}
execute if entity @a[scores={click=17..19}] run data merge entity @e[type=item,nbt={Item:{tag:{CustomModelData:2}}},limit=1] {PickupDelay:1000}
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"You received the ","color":"white"},{"text":"Forest Medallion","color":"green"},{"text":"! Saria awakens as a Sage and adds her power to yours!"}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Saria:","color":"gold"},{"text":" I will always be...your friend..."}]
execute if entity @a[scores={click=19}] run tp @e[type=armor_stand,tag=SacredSaria] 989 21 1463
execute if entity @a[scores={click=19}] run kill @e[type=item,nbt={Item:{tag:{CustomModelData:2}}}]
execute if entity @a[scores={click=19}] run tp @a -510 61 -640
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tp @a -492 60 -642 -90 ~
execute if entity @a[scores={click=21..30}] run tp @e[type=armor_stand,tag=Sprout] -489 60 -642
execute if entity @a[scores={click=21..30}] run fill -578 70 -684 -578 70 -684 minecraft:gold_block
execute if entity @a[scores={click=21}] run fill -491 61 -642 -491 61 -642 minecraft:barrier
execute if entity @a[scores={click=21}] run fill -492 61 -643 -492 61 -643 minecraft:barrier
execute if entity @a[scores={click=21}] run fill -493 61 -642 -493 61 -642 minecraft:barrier
execute if entity @a[scores={click=21}] run fill -492 61 -641 -492 61 -641 minecraft:barrier
execute if entity @a[scores={click=21}] run function ocarina_of_time:music/kokiri_forest
execute if entity @a[scores={click=21}] if block -492 61 -641 minecraft:barrier run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run fill -488 56 -641 -488 56 -641 minecraft:gold_block
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Hi there! I'm the "},{"text":"Deku Tree sprout","color":"red"},{"text":"!"}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Because you and Saria broke the curse on the Forest Temple, I can grow and flourish!"}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Thanks a lot!"}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Hey, have you seen your old friends? None of them recognized you with your grown-up body, did they?"}]
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"That's because the "},{"text":"Kokiri","color":"green"},{"text":" never grow up! Even after seven years, they're still kids!"}]
execute if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"You must be wondering why only you have grown up!"}]
execute if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Well, as you might have already guessed, you are not a Kokiri! You are actually a "},{"text":"Hylian","color":"aqua"},{"text":"!"}]
execute if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"I am happy to finally reveal this secret to you!"}]
execute if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute if entity @a[scores={click=41}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Some time ago, before the king of Hyrule unified this country, there was a fierce war in our world."}]
execute if entity @a[scores={click=41..51}] run particle minecraft:flame -492 50.5 -635.0 .2 .4 5 0 20 normal
execute if entity @a[scores={click=41}] run tp @a -497 50 -635.0
execute if entity @a[scores={click=41}] run stopsound @a music
execute if entity @a[scores={click=41}] run scoreboard players set @a click 42
execute if entity @a[scores={click=43}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"One day, to escape from the fires of the war, a "},{"text":"Hylian mother","color":"red"},{"text":" and her "},{"text":"baby boy","color":"red"},{"text":" entered this forbidden forest."}]
execute if entity @a[scores={click=43}] run scoreboard players set @a click 44
execute if entity @a[scores={click=45}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"The mother was gravely injured... Her only choice was to entrust the child to the "},{"text":"Deku Tree","color":"red"},{"text":", the guardian spirit of the forest."}]
execute if entity @a[scores={click=45}] run scoreboard players set @a click 46
execute if entity @a[scores={click=47}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"The Deku Tree could sense that this was a child of destiny whose fate would affect the entire world, so he took him into the forest."}]
execute if entity @a[scores={click=47}] run scoreboard players set @a click 48
execute if entity @a[scores={click=49}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"After the mother passed away, the baby was raised as a "},{"text":"Kokiri","color":"green"},{"text":". And now, finally, the day of destiny has come!"}]
execute if entity @a[scores={click=49}] run scoreboard players set @a click 50
execute if entity @a[scores={click=51}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"You are a "},{"text":"Hylian","color":"aqua"},{"text":" and were always bound to leave this forest."}]
execute if entity @a[scores={click=51}] run tp @a -492 60 -642
execute if entity @a[scores={click=51}] run function ocarina_of_time:music/kokiri_forest
execute if entity @a[scores={click=51}] run scoreboard players set @a click 52
execute if entity @a[scores={click=53}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"And now...you have learned your own destiny... So you know what you must do..."}]
execute if entity @a[scores={click=53}] run scoreboard players set @a click 54
execute if entity @a[scores={click=55}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"That's right... You must save the land of Hyrule!"}]
execute if entity @a[scores={click=55}] run scoreboard players set @a click 56
execute if entity @a[scores={click=57}] run tellraw @a ["",{"text":"Deku Tree sprout: ","color":"gold"},{"text":"Now, "},{"selector":"@p"},{"text":", break the curses on all the temples, and return peace to Hyrule!"}]
execute if entity @a[scores={click=57}] run scoreboard players set @a click 58
execute if entity @a[scores={click=59}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"It was a surprise to learn that Saria is one of the Sages, wasn't it, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"?","color":"aqua"}]
execute if entity @a[scores={click=59}] run scoreboard players set @a click 60
execute if entity @a[scores={click=61}] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"I wonder how Sheik knew? Anyway, off to the Temple of Time!","color":"aqua"}]
execute if entity @a[scores={click=61}] run scoreboard players set @a click 62

execute if entity @a[scores={click=62}] run tag @a remove NoOcarina
execute if entity @a[scores={click=62}] run tag @e[type=area_effect_cloud,tag=Progress] add GotForestMedallion
execute if entity @a[scores={click=62}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=18..}] run scoreboard players set @s lifetime 18
execute if entity @a[scores={click=62}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=21..}] run scoreboard players set @s lifetime 21
execute if entity @a[scores={click=62}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=7..}] run scoreboard players set @s text 7
execute if entity @a[scores={click=62}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=8..}] run scoreboard players set @s text 8
execute if entity @a[scores={click=62}] run scoreboard players set @e[type=armor_stand,tag=Sprout] text 1
execute if entity @a[scores={click=62}] run fill -491 61 -641 -493 61 -643 minecraft:air
execute if entity @a[scores={click=62}] run tag @a add LightSong
execute if entity @a[scores={click=62}] run tag @a remove ForestMedallion
execute if entity @a[scores={click=62}] run tag @a remove ForestMedallion1
execute if entity @a[scores={click=62}] run scoreboard objectives remove click

execute as @e[type=armor_stand,tag=ForestMedallion] at @e[type=armor_stand,tag=SacredSaria] run tp @s ~ ~ ~ ~6 ~
execute as @e[type=armor_stand,tag=ForestMedallion] at @e[type=armor_stand,tag=SacredSaria] if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-.5 ~
