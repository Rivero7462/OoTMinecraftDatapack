execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/chamber_of_sages
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..}] run scoreboard players add @s timer 1
execute if entity @s[scores={timer=15}] run tp @s 994 26 1472
execute if entity @a[scores={click=1}] run tag @a remove ShadowMedallion
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Impa: ","color":"gold"},{"text":"The boy with the noble Zelda's ocarina... As I expected, you have come.","color":"white"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Impa: ","color":"gold"},{"text":"I am ","color":"white"},{"text":"Impa","color":"red"},{"text":", one of the Sheikah. I am Princess Zelda's caretaker, and I am also the Sage who guards the Shadow Temple."}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" We Sheikah have served the royalty of Hyrule from generation to generation as attendants. However..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" On that day seven years ago, Ganondorf suddenly attacked...and Hyrule Castle surrendered after a short time."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Ganondorf's target was one of the keys to the Sacred Realm...the hidden treasure of the Royal Family...the Ocarina of Time!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" My duty bound me to take Zelda out of Ganondorf's reach."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" When last I saw you, as we made our escape from the castle, you were just a lad..."}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Now I see that you have become a fine hero..."}]
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16
execute if entity @a[scores={click=17}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" There's nothing to worry about... The princess is safe now."}]
execute if entity @a[scores={click=17}] run scoreboard players set @a click 18
execute if entity @a[scores={click=19}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Soon you'll meet Princess Zelda face-to-face, and she will explain everything..."}]
execute if entity @a[scores={click=19}] run scoreboard players set @a click 20
execute if entity @a[scores={click=21}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" That is when we, the six Sages, will seal up the Evil King and return peace to Hyrule."}]
execute if entity @a[scores={click=21}] run scoreboard players set @a click 22
execute if entity @a[scores={click=23}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" I have to stay here... You go to Princess Zelda's side and protect her on my behalf."}]
execute if entity @a[scores={click=23}] run scoreboard players set @a click 24
execute if entity @a[scores={click=25}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Now I put my power, which should be helpful to you, into this "},{"text":"Medallion","color":"light_purple"},{"text":"!"}]
execute if entity @a[scores={click=25}] run scoreboard players set @a click 26
execute if entity @a[scores={click=27}] run advancement grant @a only minecraft:_gear/shadow_medallion
execute if entity @a[scores={click=27}] run summon minecraft:item 994 36 1468 {Item:{id:shears,Count:1,tag:{CustomModelData:5}},Tags:["NoPickup"]}
execute if entity @a[scores={click=27..29}] run data merge entity @e[type=item,nbt={Item:{tag:{CustomModelData:5}}},limit=1] {PickupDelay:1000}
execute if entity @a[scores={click=27}] run data merge entity @s {Pose:{Head:[-45f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[-135f,20f,0f],RightArm:[-135f,-20f,0f]}}
execute if entity @a[scores={click=27}] run tellraw @a ["",{"text":"You received the "},{"text":"Shadow Medallion","color":"light_purple"},{"text":"! Impa awakens as a Sage and adds her power to yours!"}]
execute if entity @a[scores={click=27}] run scoreboard players set @a click 28
execute if entity @a[scores={click=29}] run tp @a 999 4 1386
execute if entity @a[scores={click=29}] run tp @s 994 21 1473
execute if entity @a[scores={click=29}] run kill @e[type=item,nbt={Item:{tag:{CustomModelData:5}}}]
execute if entity @a[scores={click=29}] run tellraw @a ["",{"text":"Impa:","color":"gold"},{"text":" Please look out for the princess!"}]
execute if entity @a[scores={click=29}] run scoreboard players set @a click 30

execute if entity @a[scores={click=31..}] run tag @a remove NoOcarina
execute if entity @a[scores={click=31..}] run tag @a add StopTime
execute if entity @a[scores={click=31..}] run tp @a 1648 82.5 1950 90 ~
execute if entity @a[scores={click=31..}] run stopsound @a music
execute if entity @a[scores={click=31..}] run tag @e[type=area_effect_cloud,tag=Progress] add GotShadowMedallion
execute if entity @a[scores={click=31..}] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=24..}] run scoreboard players set @s lifetime 24
execute if entity @a[scores={click=31..}] run tag @a remove ShadowMedallion2
execute if entity @a[scores={click=31..}] run scoreboard objectives remove click

execute as @e[type=armor_stand,tag=ShadowMedallion] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[type=armor_stand,tag=ShadowMedallion] at @s if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-.5 ~
