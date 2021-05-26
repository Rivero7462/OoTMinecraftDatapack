execute unless entity @a[scores={click=0..}] run tag @a remove ClearMountain
execute unless entity @a[scores={click=0..}] run tag @a add NoOcarina
execute unless entity @a[scores={click=0..}] run function ocarina_of_time:music/chamber_of_sages
execute unless entity @a[scores={click=0..}] run scoreboard objectives add click minecraft.custom:minecraft.jump
execute unless entity @a[scores={click=0..}] run scoreboard players set @a click 0

execute if entity @a[scores={click=0}] run scoreboard players set @a click 1

execute if entity @a[scores={click=1..}] run scoreboard players add @e[type=armor_stand,tag=SacredDarunia] timer 1
execute if entity @e[type=armor_stand,tag=SacredDarunia,scores={timer=15}] run tp @e[type=armor_stand,tag=SacredDarunia] 994 26 1461
execute if entity @a[scores={click=1}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Thank you, Brother! I really appreciate what you did. I thank you on behalf of the entire Goron race!"}]
execute if entity @a[scores={click=1}] run scoreboard players set @a click 2
execute if entity @a[scores={click=3}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"You turned out to be a real man, just as I thought you would!"}]
execute if entity @a[scores={click=3}] run scoreboard players set @a click 4
execute if entity @a[scores={click=5}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"By the way, I, the wild Darunia, turned out to be the great "},{"text":"Sage of Fire","color":"red"},{"text":"..."}]
execute if entity @a[scores={click=5}] run scoreboard players set @a click 6
execute if entity @a[scores={click=7}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Isn't that funny, Brother? Well, this must be what they call destiny."}]
execute if entity @a[scores={click=7}] run scoreboard players set @a click 8
execute if entity @a[scores={click=9}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Nothing has made me happier than helping you seal the evil here!"}]
execute if entity @a[scores={click=9}] run scoreboard players set @a click 10
execute if entity @a[scores={click=11}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Hey, Brother, take this! This is a "},{"text":"Medallion","color":"red"},{"text":" that contains the power of the fire spirits-and my friendship."}]
execute if entity @a[scores={click=11}] run scoreboard players set @a click 12
execute if entity @a[scores={click=13}] run data merge entity @e[type=armor_stand,tag=SacredDarunia,limit=1] {Pose:{Head:[-45f,0f,0f],LeftLeg:[0f,0f,0f],RightLeg:[0f,0f,0f],LeftArm:[-135f,20f,0f],RightArm:[-135f,-20f,0f]}}
execute if entity @a[scores={click=13}] run advancement grant @a only minecraft:_gear/fire_medallion
execute if entity @a[scores={click=13}] run summon minecraft:item 994 36 1465 {Item:{id:shears,Count:1,tag:{CustomModelData:3}},Tags:["NoPickup"]}
execute if entity @a[scores={click=13..15}] run data merge entity @e[type=item,nbt={Item:{tag:{CustomModelData:3}}},limit=1] {PickupDelay:1000}
execute if entity @a[scores={click=13}] run tellraw @a ["",{"text":"You received the ","color":"white"},{"text":"Fire Medallion","color":"red"},{"text":"! Darunia awakens as a Sage and add his power to yours!"}]
execute if entity @a[scores={click=13}] run scoreboard players set @a click 14
execute if entity @a[scores={click=15}] run tellraw @a ["",{"text":"Darunia: ","color":"gold"},{"text":"Don't forget... Now you and I are true Brothers!"}]
execute if entity @a[scores={click=15}] run tp @e[type=armor_stand,tag=SacredDarunia] 994 21 1461
execute if entity @a[scores={click=15}] run kill @e[type=item,nbt={Item:{tag:{CustomModelData:3}}}]
execute if entity @a[scores={click=15}] run tp @a 999 4 1386
execute if entity @a[scores={click=15}] run scoreboard players set @a click 16

execute if entity @a[scores={click=17}] run tag @a remove NoOcarina
execute if entity @a[scores={click=17}] run tag @e[type=area_effect_cloud,tag=Progress] add GotFireMedallion
execute if entity @a[scores={click=17}] unless entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=19..}] run scoreboard players set @s lifetime 19
execute if entity @a[scores={click=17}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={lifetime=21..}] run scoreboard players set @s lifetime 21
execute if entity @a[scores={click=17}] if entity @e[type=area_effect_cloud,tag=Progress,tag=GotForestMedallion,tag=GotFireMedallion,tag=GotWaterMedallion] as @e[type=area_effect_cloud,tag=FakeSaria] unless entity @s[scores={text=8..}] run scoreboard players set @s text 8
execute if entity @a[scores={click=17}] run function ocarina_of_time:teleports/remove_teleports
execute if entity @a[scores={click=17}] run function ocarina_of_time:teleports/fire_temple/enemies
execute if entity @a[scores={click=17}] run function ocarina_of_time:teleports/fire_temple/loot_reset
execute if entity @a[scores={click=17}] run tag @a add HotArea
execute if entity @a[scores={click=17}] run tag @a add InDeathCrater
execute if entity @a[scores={click=17}] run tag @a add CraterSpawn3
execute if entity @a[scores={click=17}] run function ocarina_of_time:music/dodongo_cavern
execute if entity @a[scores={click=17}] run tp @a 2690 37.5 1940 90 ~
execute if entity @a[scores={click=17}] run tag @a add FinalGoronCity
execute if entity @a[scores={click=17}] run tag @a add FinalDeathMountain
execute if entity @a[scores={click=17}] run tag @a remove FireMedallion
execute if entity @a[scores={click=17}] run scoreboard objectives remove click

execute as @e[type=armor_stand,tag=FireMedallion] at @e[type=armor_stand,tag=SacredDarunia] run tp @s ~ ~ ~ ~6 ~
execute as @e[type=armor_stand,tag=FireMedallion] at @e[type=armor_stand,tag=SacredDarunia] if block ~ ~-1 ~ minecraft:air run tp @s ~ ~-.5 ~
