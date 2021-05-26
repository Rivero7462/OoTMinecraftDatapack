execute as @e[type=armor_stand,tag=FollowGoron] at @s run tp @s ~ ~ ~ facing entity @p

execute unless entity @a[scores={click=0..}] run tp @a 2010 93 1456 180 ~
execute unless entity @a[scores={click=0..}] run fill 2010 94 1457 2010 94 1457 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2011 94 1456 2011 94 1456 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2010 94 1455 2010 94 1455 minecraft:barrier
execute unless entity @a[scores={click=0..}] run fill 2009 94 1456 2009 94 1456 minecraft:barrier
execute unless entity @a[scores={click=0..}] run tag @s add Fall
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @s[tag=Fall] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=1..20}] run function ocarina_of_time:music/goron_city
execute if entity @s[scores={timer=1..46}] run kill @e[type=zombie,tag=Tektite]
execute if entity @s[scores={timer=10}] run data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
execute if entity @s[scores={timer=10}] run tp @s 2010 106.3 1453 0 ~
execute if entity @s[scores={timer=10}] as @e[type=armor_stand,tag=Goron10] at @s run tp @s ~ 89 ~
execute if entity @s[scores={timer=10..34}] run tp @s 2010 ~-.6 1453
execute if entity @s[scores={timer=35}] run tp @s 2010 91.9 1453
execute if entity @s[scores={timer=45}] run tp @s 2010 93 1453
execute if entity @s[scores={timer=45}] run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={timer=46}] run tag @s remove Fall
execute if entity @s[scores={timer=46}] run scoreboard players set @s timer 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"It's me, "},{"text":"Darunia","color":"red"},{"text":"! Well done!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Thanks to you, we can once again eat the delicious rocks from Dodongo's Cavern until our stomachs burst!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"What a wild adventure! It will make an incredible story..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"I can't believe the Dodongos suddenly appeared in such great numbers!"}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"And that big rock blocking the cave..."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"All this trouble must have been caused by that Gerudo thief, "},{"text":"Ganondorf","color":"red"},{"text":"!"}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"He said, \""},{"text":"Give me the Spiritual Stone! Only then will I open the cave for you!","color":"red"},{"text":"\""}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"You, on the other hand, risked your life for us..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Kid, I like you!"}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"How's about you and I become Sworn Brothers?!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"No, there's no big ceremony involved! Just take this as a token of our friendship!"}]
execute if entity @a[scores={click=21}] run fill 2010 94 1454 2010 94 1454 minecraft:barrier
execute if entity @a[scores={click=21}] run advancement grant @a only minecraft:_gear/goron_ruby
execute if entity @a[scores={click=21}] run summon minecraft:item 2010 132 1454 {Item:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Goron's Ruby\"}"},Unbreakable:1b,Damage:7,HideFlags:63,GoronRuby:1b}},Tags:["NoPickup"]}
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"You obtained the "},{"text":"Goron's Ruby","color":"red"},{"text":"! This is the Spiritual Stone of Fire passed down by the Gorons!"}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] run tellraw @a {"text":"You don't know what he means by \"Sworn Brothers,\" but you've collected two Spiritual Stones! You have one more to find!"}
execute if entity @a[scores={click=25}] if entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] run tellraw @a {"text":"You don't know what he means by \"Sworn Brothers,\" but you've finally collected all three Spiritual Stones! Go back to see Princess Zelda!"}
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Brother! You'll keep brushing up on your skills as you travel, won't you?"}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"You should go see the "},{"text":"Great Fairy","color":"red"},{"text":" on top of Death Mountain! She will power you up!"}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Hey, everybody! Let's see off our brother!"}]
execute if entity @a[scores={click=31}] run tag @s add RunAway
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32

execute if entity @s[tag=RunAway] run scoreboard players add @s GameTimer 1
#Goron 1
execute if entity @s[scores={GameTimer=1}] positioned 2010 95 1454 run kill @e[type=item,nbt={Item:{id:"minecraft:shears",tag:{GoronRuby:1b}}}]
execute if entity @s[scores={GameTimer=1}] as @e[type=armor_stand,tag=ChaseGoron1] at @s run data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
execute if entity @s[scores={GameTimer=1}] run tp @e[type=armor_stand,tag=ChaseGoron1] 2009 106.3 1454
execute if entity @s[scores={GameTimer=1..24}] as @e[type=armor_stand,tag=ChaseGoron1] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={GameTimer=25}] as @e[type=armor_stand,tag=ChaseGoron1] at @s run tp @s ~ 91.9 ~
execute if entity @s[scores={GameTimer=37}] as @e[type=armor_stand,tag=ChaseGoron1] at @s run tp @s ~ 93 ~
#Goron 2
execute if entity @s[scores={GameTimer=8}] as @e[type=armor_stand,tag=ChaseGoron2] at @s run data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
execute if entity @s[scores={GameTimer=8}] run tp @e[type=armor_stand,tag=ChaseGoron2] 2012 106.3 1454
execute if entity @s[scores={GameTimer=8..31}] as @e[type=armor_stand,tag=ChaseGoron2] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={GameTimer=32}] as @e[type=armor_stand,tag=ChaseGoron2] at @s run tp @s ~ 91.9 ~
execute if entity @s[scores={GameTimer=37}] as @e[type=armor_stand,tag=ChaseGoron2] at @s run tp @s ~ 93 ~
#Both Get Up
execute if entity @s[scores={GameTimer=37}] run data merge entity @e[type=armor_stand,tag=ChaseGoron1,limit=1] {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
execute if entity @s[scores={GameTimer=37}] run data merge entity @e[type=armor_stand,tag=ChaseGoron2,limit=1] {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}
#Run
execute if entity @s[scores={GameTimer=45}] as @e[type=armor_stand,tag=ChaseGoron1] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"You did great!"}]
execute if entity @s[scores={GameTimer=80}] as @e[type=armor_stand,tag=ChaseGoron1] run tellraw @a ["",{"text":"Goron: ","color":"gold"},{"text":"How 'bout a big Goron hug, Brother?!"}]
execute if entity @s[scores={GameTimer=90}] as @e[type=armor_stand,tag=ChaseGoron1] run title @a times 5 20 5
execute if entity @s[scores={GameTimer=90}] as @e[type=armor_stand,tag=ChaseGoron1] run title @a title {"text":"Run", "bold":true, "italic":true, "color":"dark_red"}
execute if entity @s[scores={GameTimer=100}] as @e[type=armor_stand,tag=ChaseGoron1] run fill 2009 94 1457 2011 94 1454 minecraft:air
execute if entity @s[scores={GameTimer=100}] as @e[type=armor_stand,tag=ChaseGoron1] run fill 2006 94 1460 2006 94 1460 minecraft:barrier
execute if entity @s[scores={GameTimer=100}] as @e[type=armor_stand,tag=ChaseGoron1] run fill 2007 94 1461 2007 94 1461 minecraft:barrier
execute if entity @s[scores={GameTimer=100}] as @e[type=armor_stand,tag=ChaseGoron1] run fill 2010 94 1462 2008 95 1462 minecraft:barrier
execute if entity @s[scores={GameTimer=100}] as @e[type=armor_stand,tag=ChaseGoron1] run fill 2012 94 1451 2008 94 1451 minecraft:barrier

#Third Goron
execute if entity @s[scores={GameTimer=100}] as @e[type=armor_stand,tag=ChaseGoron3] at @s run data merge entity @s {Pose:{Body:[-45f,0f,0f],Head:[90f,0f,0f],LeftLeg:[160f,180f,0f],RightLeg:[160f,180f,0f],LeftArm:[0f,0f,90f],RightArm:[0f,0f,-90f]}}
execute if entity @s[scores={GameTimer=100}] run tp @e[type=armor_stand,tag=ChaseGoron3] 2009 106.3 1461
execute if entity @s[scores={GameTimer=100..123}] as @e[type=armor_stand,tag=ChaseGoron3] at @s run tp @s ~ ~-.6 ~
execute if entity @s[scores={GameTimer=124}] as @e[type=armor_stand,tag=ChaseGoron3] at @s run tp @s ~ 91.9 ~
execute if entity @s[scores={GameTimer=130}] as @e[type=armor_stand,tag=ChaseGoron3] at @s run tp @s ~ 93 ~
execute if entity @s[scores={GameTimer=130}] as @e[type=armor_stand,tag=ChaseGoron3] at @s run data merge entity @s {Pose:{Body:[0f,0f,0f],Head:[0f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]}}

#Chase
execute if entity @s[scores={GameTimer=100..}] as @e[type=armor_stand,tag=ChaseGoron1] at @s run tp @s ~ 93 ~
execute if entity @s[scores={GameTimer=100..}] as @e[type=armor_stand,tag=ChaseGoron2] at @s run tp @s ~ 93 ~
execute if entity @s[scores={GameTimer=130..}] as @e[type=armor_stand,tag=ChaseGoron3] at @s run tp @s ~ 93 ~

execute if entity @s[scores={GameTimer=100..}] as @e[type=armor_stand,tag=ChaseGoron1] at @s run tp @s ^ ^ ^.05 facing entity @p
execute if entity @s[scores={GameTimer=100..}] as @e[type=armor_stand,tag=ChaseGoron2] at @s run tp @s ^ ^ ^.05 facing entity @p
execute if entity @s[scores={GameTimer=130..}] as @e[type=armor_stand,tag=ChaseGoron3] at @s run tp @s ^ ^ ^.05 facing entity @p
#Caught
execute if entity @a[x=2011,y=94,z=1463,dx=4,dy=1,dz=1] run tag @a add FinishChase
execute as @e[type=armor_stand,tag=FollowGoron] at @a if entity @s[distance=..1] run tag @a add FinishChase
#End
execute if entity @a[tag=FinishChase] run tag @a remove NoOcarina
execute if entity @a[tag=FinishChase] unless entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=9..}] run scoreboard players set @s lifetime 9
execute if entity @a[tag=FinishChase] if entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=13..}] run scoreboard players set @s lifetime 13
execute if entity @a[tag=FinishChase] unless entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=3..}] run scoreboard players set @s text 3
execute if entity @a[tag=FinishChase] if entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=4..}] run scoreboard players set @s text 4
execute if entity @a[tag=FinishChase] run tag @e[type=area_effect_cloud,tag=Progress] add GoronRuby
execute if entity @a[tag=FinishChase] run function ocarina_of_time:music/hyrule_field
execute if entity @a[tag=FinishChase] run kill @e[type=armor_stand,tag=FollowGoron]
execute if entity @a[tag=FinishChase] run function ocarina_of_time:teleports/death_mountain/enemies
execute if entity @a[tag=FinishChase] run kill @s
execute if entity @a[tag=FinishChase] run fill 2010 94 1462 2006 95 1460 minecraft:air
execute if entity @a[tag=FinishChase] run fill 2012 94 1451 2008 94 1451 minecraft:air
execute if entity @a[tag=FinishChase] run tp @a 2013 98 1471 0 0
execute if entity @a[tag=FinishChase] run tag @s remove RunAway
execute if entity @a[tag=FinishChase] run tag @a add OpenBowling
execute if entity @a[tag=FinishChase] run tag @a add MountainText
execute if entity @a[tag=FinishChase] run tag @a add GoronCityText
execute if entity @a[tag=FinishChase] if entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] run tag @a add RunningMan
execute if entity @a[tag=FinishChase] if entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] run tag @a add ZeldaCastle
execute if entity @a[tag=FinishChase] unless entity @e[type=area_effect_cloud,tag=Progress,tag=ZoraSapphire] run tag @a add ZeldaText
execute if entity @a[tag=FinishChase] run scoreboard players set @s GameTimer 0
execute if entity @a[tag=FinishChase] as @e[type=armor_stand,tag=Goron10] at @s run tp @s ~ 91.9 ~
execute if entity @a[tag=FinishChase] run tag @a remove FireStone
execute if entity @a[tag=FinishChase] run scoreboard objectives remove click
execute if entity @a[tag=FinishChase] run tag @a remove FinishChase
