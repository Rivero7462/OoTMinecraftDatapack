execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/chamber_of_sages
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..10}] run stopsound @a music minecraft:hyrule_field_morning
execute if entity @a[scores={click=1..}] run scoreboard players add @e[type=armor_stand,tag=SacredRuto] timer 1
execute if entity @e[type=armor_stand,tag=SacredRuto,scores={timer=15}] run tp @e[type=armor_stand,tag=SacredRuto] 999 26 1463
execute if entity @a[scores={click=1}] run tag @a remove WaterMedallion
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" "},{"selector":"@p"},{"text":"..."}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" I would have expected no less from the man I chose to be my husband."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" Zora's Domain and its people will eventually return to their original state."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" As a reward...I grant my eternal love to you."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" Well, that's what I want to say, but I don't think I can offer that now."}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" I have to guard the Water Temple as the "},{"text":"Sage of Water","color":"blue"},{"text":"..."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" And you... You're searching for the princess, "},{"text":"Zelda","color":"red"},{"text":"?"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" Hah! You can't hide anything from me!"}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" Princess Zelda... She's alive. I can sense it... So don't be discouraged."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" I can tell that nothing will stop you in your quest for justice and peace... You must take this "},{"text":"Medallion","color":"blue"},{"text":"... Take it respectfully!"}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run advancement grant @a only minecraft:_gear/water_medallion
execute if entity @a[scores={click=21}] run summon minecraft:item 996.2 28 1465.4 {Item:{id:shears,Count:1,tag:{CustomModelData:4}},Tags:["NoPickup"]}
execute if entity @a[scores={click=21..23}] run data merge entity @e[type=item,nbt={Item:{tag:{CustomModelData:4}}},limit=1] {PickupDelay:1000}
execute if entity @a[scores={click=21}] run data merge entity @e[type=armor_stand,tag=SacredRuto,limit=1] {Pose:{Head:[-45f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[-135f,20f,0f],RightArm:[-135f,-20f,0f]}}
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"You received the "},{"text":"Water Medallion","color":"blue"},{"text":"! Ruto awakens as a Sage and adds her power to yours!"}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tp @a 999 4 1386
execute if entity @a[scores={click=23}] run tp @e[type=armor_stand,tag=SacredRuto] 999 21 1463
execute if entity @a[scores={click=23}] run kill @e[type=item,nbt={Item:{tag:{CustomModelData:4}}}]
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Ruto:","color":"gold"},{"text":" If you see Sheik, please give him my thanks, OK?"}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24

execute if entity @a[scores={click=25}] run stopsound @a music
execute if entity @a[scores={click=25}] run tp @a 774 66.5 2787 180 ~
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26

execute if entity @a[scores={click=26..27}] run fill 774 67 2788 774 67 2788 minecraft:barrier
execute if entity @a[scores={click=26..27}] run fill 775 67 2787 775 67 2787 minecraft:barrier
execute if entity @a[scores={click=26..27}] run fill 774 67 2786 774 67 2786 minecraft:barrier
execute if entity @a[scores={click=26..27}] run fill 773 67 2787 773 67 2787 minecraft:barrier

execute if entity @a[scores={click=25..28}] run tp @e[type=armor_stand,tag=Sheik4] 774 66 2774 180 ~
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" As the water rises, the evil is vanishing from the lake... "},{"selector":"@p"},{"text":", you did it!"}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tp @a 774 66 2779
execute if entity @a[scores={click=29}] run fill 774 67 2778 774 67 2778 minecraft:barrier
execute if entity @a[scores={click=29}] run fill 775 67 2779 775 67 2779 minecraft:barrier
execute if entity @a[scores={click=29}] run fill 774 67 2780 774 67 2780 minecraft:barrier
execute if entity @a[scores={click=29}] run fill 773 67 2779 773 67 2779 minecraft:barrier
execute if entity @a[scores={click=29}] run fill 775 67 2788 773 67 2786 minecraft:air
execute if entity @a[scores={click=29}] run tp @e[type=armor_stand,tag=Sheik4] 774 66 2774 0 ~
execute if entity @a[scores={click=29}] run function ocarina_of_time:music/sheik
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" Ruto wanted to thank me?"}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30
execute if entity @a[scores={click=31}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" I see..."}]
execute if entity @a[scores={click=31}] run scoreboard players set @a click 32
execute if entity @a[scores={click=33}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" We have to return peace to Hyrule for her sake too. Don't we?"}]
execute if entity @a[scores={click=33}] run scoreboard players set @a click 34
execute if entity @a[scores={click=35}] run tellraw @a ["",{"text":"Sheik: ","color":"gold"},{"text":"Look at that, "},{"selector":"@p"},{"text":"..."}]
execute if entity @a[scores={click=35}] run scoreboard players set @a click 36
execute if entity @a[scores={click=37}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" Together, you and Princess Ruto destroyed the evil monster!"}]
execute if entity @a[scores={click=37}] run scoreboard players set @a click 38
execute if entity @a[scores={click=39}] run tellraw @a ["",{"text":"Sheik:","color":"gold"},{"text":" Once again, the lake is filled with pure water. All is as it was here."}]
execute if entity @a[scores={click=39}] run tp @e[type=armor_stand,tag=Sheik4] 774 66 2774 180 ~
execute if entity @a[scores={click=39}] run scoreboard players set @a click 40
execute if entity @a[scores={click=41}] run fill 773 67 2780 775 67 2778 minecraft:air
execute if entity @a[scores={click=41..}] run scoreboard players add @e[type=armor_stand,tag=Sheik4] timer 1

execute as @e[type=armor_stand,tag=Sheik4,scores={timer=1..19}] run tp @a ~.15 ~ ~-.25
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=20..126}] run tp @a 777 66 2774 180 ~
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=20}] run fill 778 67 2774 778 67 2774 minecraft:barrier
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=20}] run fill 777 67 2773 777 67 2773 minecraft:barrier
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=20}] run fill 776 67 2774 776 67 2774 minecraft:barrier
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=20}] run fill 777 67 2775 777 67 2775 minecraft:barrier
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=20}] run fill 773 67 2778 775 67 2780 minecraft:air
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=60..93}] at @s run tp @s ~ ~ ~.2
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=94}] at @s run tp @s 774 66 2784 -90 ~
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=95..125}] at @s run tp @s ~.3 ~.5 ~.03
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=126}] at @s run tp @s 786 81 2785 -90 ~
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=160}] at @s run tp @s 799 81 2780
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=160}] run data merge entity @s {NoGravity:0b,Pose:{Head:[70f,0f,0f],RightArm:[-20f,0f,0f],LeftArm:[0f,0f,-90f],Body:[5f,0f,0f],RightLeg:[40f,0f,0f],LeftLeg:[-50f,0f,0f]}}

execute as @e[type=armor_stand,tag=Sheik4,scores={timer=180}] run playsound minecraft:entity.player.splash ambient @a 790 67 2779 1 1
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run tp @s 776 36 2772

execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run tag @a remove NoOcarina
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run tag @e[type=area_effect_cloud,tag=Progress] add GotWaterMedallion
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=21..}] run scoreboard players set @s lifetime 21
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=8..}] run scoreboard players set @s text 8
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run tag @a remove StopTime
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run function ocarina_of_time:music/morning_hyrule_field
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run fill 778 67 2775 776 67 2773 minecraft:air
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run tag @a add FinishLake
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run tag @a remove WaterMedallion2
execute as @e[type=armor_stand,tag=Sheik4,scores={timer=200}] run scoreboard objectives remove click

execute as @e[type=armor_stand,tag=WaterMedallion] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[type=armor_stand,tag=WaterMedallion] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-.5 ~
