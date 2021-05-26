execute unless entity @a[scores={MiniGameTime=1}] run tp @a 1526 48 1955
execute if entity @a[scores={MiniGameTime=1}] run tp @a 1526 48 1955 0 0
execute if entity @a[scores={MiniGameTime=1}] run scoreboard players set @a MinigameSeeds 15
execute if entity @a[scores={MiniGameTime=1}] run fill 1527 50 1956 1525 50 1956 minecraft:air
execute if entity @a[scores={MiniGameTime=1}] run kill @e[type=item,x=1524,y=47,z=1962,dx=4,dz=1]

#Rupees
#2 & 3
execute if entity @a[scores={MiniGameTime=30}] run summon minecraft:armor_stand 1534 49.2 1968 {Tags:["BlueRupee1","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=BlueRupee1] at @s if entity @a[scores={MiniGameTime=30..42}] run tp @s ~-.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee1] at @s if entity @a[scores={MiniGameTime=77..89}] run tp @s ~.5 ~ ~
execute if entity @a[scores={MiniGameTime=90}] run kill @e[type=armor_stand,tag=BlueRupee1]
execute if entity @a[scores={MiniGameTime=65}] run summon minecraft:armor_stand 1518 49.2 1968 {Tags:["BlueRupee2","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=BlueRupee2] at @s if entity @a[scores={MiniGameTime=65..77}] run tp @s ~.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee2] at @s if entity @a[scores={MiniGameTime=112..124}] run tp @s ~-.5 ~ ~
execute if entity @a[scores={MiniGameTime=125}] run kill @e[type=armor_stand,tag=BlueRupee2]
#7 & 8
execute if entity @a[scores={MiniGameTime=145}] run summon minecraft:armor_stand 1518 50.3 1968 {Tags:["RedRupee1","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee1] at @s if entity @a[scores={MiniGameTime=145..250}] run tp @s ~.15 ~ ~
execute if entity @a[scores={MiniGameTime=251}] run kill @e[type=armor_stand,tag=RedRupee1]
execute if entity @a[scores={MiniGameTime=160}] run summon minecraft:armor_stand 1518 50.3 1968 {Tags:["RedRupee2","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee2] at @s if entity @a[scores={MiniGameTime=160..265}] run tp @s ~.15 ~ ~
execute if entity @a[scores={MiniGameTime=266}] run kill @e[type=armor_stand,tag=RedRupee2]
#1
execute if entity @a[scores={MiniGameTime=286}] run summon minecraft:armor_stand 1526 46 1967 {Tags:["GreenRupee1","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:16,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=GreenRupee1] at @s if entity @a[scores={MiniGameTime=286..291}] run tp @s ~ ~.5 ~
execute as @e[type=armor_stand,tag=GreenRupee1] at @s if entity @a[scores={MiniGameTime=326..331}] run tp @s ~ ~-.5 ~
execute if entity @a[scores={MiniGameTime=332}] run kill @e[type=armor_stand,tag=GreenRupee1]
#4
execute if entity @a[scores={MiniGameTime=352}] run summon minecraft:armor_stand 1526 46 1967 {Tags:["GreenRupee2","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:16,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=GreenRupee2] at @s if entity @a[scores={MiniGameTime=352..378}] run tp @s ~ ~.25 ~
execute as @e[type=armor_stand,tag=GreenRupee2] at @s if entity @a[scores={MiniGameTime=380..406}] run tp @s ~ ~-.25 ~
execute if entity @a[scores={MiniGameTime=407}] run kill @e[type=armor_stand,tag=GreenRupee2]
#5 and 6
execute if entity @a[scores={MiniGameTime=427}] run summon minecraft:armor_stand 1534 49.2 1968 {Tags:["BlueRupee3","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute if entity @a[scores={MiniGameTime=427}] run summon minecraft:armor_stand 1518 49.2 1968 {Tags:["BlueRupee4","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=BlueRupee3] at @s if entity @a[scores={MiniGameTime=427..439}] run tp @s ~-.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee3] at @s if entity @a[scores={MiniGameTime=484..496}] run tp @s ~.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee4] at @s if entity @a[scores={MiniGameTime=427..439}] run tp @s ~.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee4] at @s if entity @a[scores={MiniGameTime=484..496}] run tp @s ~-.5 ~ ~
execute if entity @a[scores={MiniGameTime=497}] run kill @e[type=armor_stand,tag=BlueRupee3]
execute if entity @a[scores={MiniGameTime=497}] run kill @e[type=armor_stand,tag=BlueRupee4]
#9 & 10
execute if entity @a[scores={MiniGameTime=526}] run summon minecraft:armor_stand 1534 50.3 1968 {Tags:["RedRupee3","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee3] at @s if entity @a[scores={MiniGameTime=526..606}] run tp @s ~-.2 ~ ~
execute if entity @a[scores={MiniGameTime=607}] run kill @e[type=armor_stand,tag=RedRupee3]
execute if entity @a[scores={MiniGameTime=541}] run summon minecraft:armor_stand 1534 50.3 1968 {Tags:["RedRupee4","Rupee"],Marker:1b,Rotation:[180f],NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee4] at @s if entity @a[scores={MiniGameTime=541..621}] run tp @s ~-.2 ~ ~
execute if entity @a[scores={MiniGameTime=622}] run kill @e[type=armor_stand,tag=RedRupee4]

#Target
execute as @e[type=armor_stand,tag=Rupee] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run scoreboard players add @e[type=armor_stand,tag=ShootingGallery2] lifetime 1
execute as @e[type=armor_stand,tag=Rupee] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] at @a run playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 1 1
#1
execute as @e[type=armor_stand,tag=GreenRupee1] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1528 47 1963 {Age:-1000000,Item:{id:lime_dye,Count:1,tag:{FakeRupees:1b}}}
#2
execute as @e[type=armor_stand,tag=BlueRupee1] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1527 47 1963 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}}}
#3
execute as @e[type=armor_stand,tag=BlueRupee2] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1526 47 1963 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}}}
#4
execute as @e[type=armor_stand,tag=GreenRupee2] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1525 47 1963 {Age:-1000000,Item:{id:lime_dye,Count:1,tag:{FakeRupees:1b}}}
#5
execute as @e[type=armor_stand,tag=BlueRupee3] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1524 47 1963 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}}}
#6
execute as @e[type=armor_stand,tag=BlueRupee4] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1528 47 1962 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}}}
#7
execute as @e[type=armor_stand,tag=RedRupee1] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1527 47 1962 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}}}
#8
execute as @e[type=armor_stand,tag=RedRupee2] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1526 47 1962 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}}}
#9
execute as @e[type=armor_stand,tag=RedRupee3] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1525 47 1962 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}}}
#10
execute as @e[type=armor_stand,tag=RedRupee4] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run summon minecraft:item 1524 47 1962 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}}}

execute as @e[type=armor_stand,tag=Rupee] at @s positioned ~ ~1 ~-1 if entity @e[type=arrow,distance=..1] run kill @s


#Out of Bullets
execute if entity @a[scores={MinigameSeeds=..0}] unless entity @a[scores={MiniGameTime=622..}] run scoreboard players set @a MiniGameTime 622
execute unless entity @e[type=armor_stand,tag=RedRupee4] if entity @a[scores={MiniGameTime=541..621}] unless entity @a[scores={MiniGameTime=622..}] run scoreboard players set @a MiniGameTime 622

#Finish Game
execute if entity @a[scores={MiniGameTime=623..624}] run tag @a add NoBow
execute if entity @a[scores={MiniGameTime=623..624}] run clear @a minecraft:arrow
execute if entity @a[scores={MiniGameTime=623..624}] run clear @a minecraft:bow
execute if entity @a[scores={MiniGameTime=623..624}] run kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]

execute if entity @a[scores={MiniGameTime=623}] run data merge entity @e[type=villager,tag=ShootingGallery,limit=1] {NoAI:1b,Tags:["ShootingGallery","ShootingGallery2","Invisible"],CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:arrow,Count:1,tag:{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},sell:{id:arrow,Count:1,tag:{display:{Name:"\"Shooting Game\""},ShootingGallery:1b,NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}},rewardExp:0b}]}}
execute if entity @a[scores={MiniGameTime=639}] run kill @e[type=armor_stand,tag=Rupee]
#Options
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0}] if entity @a[scores={MinigameSeeds=15}] run scoreboard players set @s text 1
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0}] if entity @a[scores={MinigameSeeds=15}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"All right. You don't have to if you don't want to."}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0}] if entity @a[scores={MinigameSeeds=15}] as @e[type=villager,tag=ShootingGallery] at @s run tp @s ~ ~-2 ~

execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0..7}] unless entity @a[scores={MinigameSeeds=15}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Too bad! Practice hard and come back!"}]

execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=8..9}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Almost! Well...all right! I'll let you try one more time for free... This time, you gotta do it!"}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=8..9}] run function ocarina_of_time:moving_things/kakariko_village/shooting_gallery/reset_shooting_minigame

execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Wonderful! Bravo! Perfect! Here's a fantastic present!"}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=FairyBowUpgrade1] run tag @s add FairyBowUpgrade2
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade2] run advancement grant @a only minecraft:_upgrades/biggest_quiver
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade2] run tellraw @a ["",{"text":"You upgraded your quiver to the ","color":"white"},{"text":"Biggest Quiver","color":"red"},{"text":"! Now you can carry even more arrows, to the maximum of "},{"text":"50","color":"yellow"},{"text":"!"}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade2] run scoreboard players set @a ArrowCount2 50
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=FairyBowUpgrade1] run tag @s add FairyBowUpgrade1
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade1] unless entity @s[tag=FairyBowUpgrade2] run advancement grant @a only minecraft:_upgrades/big_quiver
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade1] unless entity @s[tag=FairyBowUpgrade2] run tellraw @a ["",{"text":"You upgraded your quiver to a ","color":"white"},{"text":"Big Quiver","color":"red"},{"text":"! Now you can carry more arrows-"},{"text":"40 ","color":"yellow"},{"text":"in total!"}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress,tag=FairyBowUpgrade1] unless entity @s[tag=FairyBowUpgrade2] run scoreboard players set @a ArrowCount2 40
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10},tag=Prize] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b} 1
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] run tag @s add Prize

execute if entity @a[scores={MiniGameTime=640}] run scoreboard players set @s lifetime 0
execute if entity @a[scores={MiniGameTime=640}] run fill 1527 50 1956 1525 50 1956 minecraft:barrier
execute if entity @a[scores={MiniGameTime=640}] run give @a minecraft:arrow{display:{Name:"{\"text\":\"Arrow\"}"},NormalArrow:1b,HideFlags:63,ArrowBow:1b,MainHandItem:1b}
execute if entity @a[scores={MiniGameTime=640}] run tag @a remove ShootingGame
execute if entity @a[scores={MiniGameTime=640}] run scoreboard players reset @a MinigameSeeds
execute if entity @a[scores={MiniGameTime=640}] run scoreboard players set @a MiniGameTime -10
