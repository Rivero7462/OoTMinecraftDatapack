execute unless entity @a[scores={MiniGameTime=1}] run tp @a 872 60 1402
execute if entity @a[scores={MiniGameTime=1}] run tp @a 872 60 1402 180 0
execute if entity @a[scores={MiniGameTime=1}] run scoreboard players set @a MinigameSeeds 15
execute if entity @a[scores={MiniGameTime=1}] run fill 871 62 1401 873 62 1401 minecraft:air
execute if entity @a[scores={MiniGameTime=1}] run kill @e[type=item,x=870,y=59,z=1394,dx=4,dz=1]

#Rupees
#1
execute if entity @a[scores={MiniGameTime=30}] run summon minecraft:armor_stand 872 58 1390 {Tags:["GreenRupee1","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:16,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=GreenRupee1] at @s if entity @a[scores={MiniGameTime=30..35}] run tp @s ~ ~.5 ~
execute as @e[type=armor_stand,tag=GreenRupee1] at @s if entity @a[scores={MiniGameTime=70..75}] run tp @s ~ ~-.5 ~
execute if entity @a[scores={MiniGameTime=76}] run kill @e[type=armor_stand,tag=GreenRupee1]
#2
execute if entity @a[scores={MiniGameTime=90}] run summon minecraft:armor_stand 864 61.2 1389 {Tags:["BlueRupee1","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=BlueRupee1] at @s if entity @a[scores={MiniGameTime=90..102}] run tp @s ~.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee1] at @s if entity @a[scores={MiniGameTime=137..149}] run tp @s ~-.5 ~ ~
execute if entity @a[scores={MiniGameTime=150}] run kill @e[type=armor_stand,tag=BlueRupee1]
#3
execute if entity @a[scores={MiniGameTime=125}] run summon minecraft:armor_stand 880 61.2 1389 {Tags:["BlueRupee2","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=BlueRupee2] at @s if entity @a[scores={MiniGameTime=125..137}] run tp @s ~-.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee2] at @s if entity @a[scores={MiniGameTime=172..184}] run tp @s ~.5 ~ ~
execute if entity @a[scores={MiniGameTime=185}] run kill @e[type=armor_stand,tag=BlueRupee2]
#4
execute if entity @a[scores={MiniGameTime=210}] run summon minecraft:armor_stand 872 58 1390 {Tags:["GreenRupee2","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:16,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=GreenRupee2] at @s if entity @a[scores={MiniGameTime=210..236}] run tp @s ~ ~.25 ~
execute as @e[type=armor_stand,tag=GreenRupee2] at @s if entity @a[scores={MiniGameTime=238..264}] run tp @s ~ ~-.25 ~
execute if entity @a[scores={MiniGameTime=265}] run kill @e[type=armor_stand,tag=GreenRupee2]
#5 and 6
execute if entity @a[scores={MiniGameTime=290}] run summon minecraft:armor_stand 864 61.2 1389 {Tags:["BlueRupee3","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute if entity @a[scores={MiniGameTime=290}] run summon minecraft:armor_stand 880 61.2 1389 {Tags:["BlueRupee4","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:17,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=BlueRupee3] at @s if entity @a[scores={MiniGameTime=290..302}] run tp @s ~.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee3] at @s if entity @a[scores={MiniGameTime=347..359}] run tp @s ~-.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee4] at @s if entity @a[scores={MiniGameTime=290..302}] run tp @s ~-.5 ~ ~
execute as @e[type=armor_stand,tag=BlueRupee4] at @s if entity @a[scores={MiniGameTime=347..359}] run tp @s ~.5 ~ ~
execute if entity @a[scores={MiniGameTime=360}] run kill @e[type=armor_stand,tag=BlueRupee3]
execute if entity @a[scores={MiniGameTime=360}] run kill @e[type=armor_stand,tag=BlueRupee4]
#7
execute if entity @a[scores={MiniGameTime=385}] run summon minecraft:armor_stand 880 62.3 1389 {Tags:["RedRupee1","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee1] at @s if entity @a[scores={MiniGameTime=385..490}] run tp @s ~-.15 ~ ~
execute if entity @a[scores={MiniGameTime=491}] run kill @e[type=armor_stand,tag=RedRupee1]
#8
execute if entity @a[scores={MiniGameTime=400}] run summon minecraft:armor_stand 880 62.3 1389 {Tags:["RedRupee2","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee2] at @s if entity @a[scores={MiniGameTime=400..505}] run tp @s ~-.15 ~ ~
execute if entity @a[scores={MiniGameTime=506}] run kill @e[type=armor_stand,tag=RedRupee2]
#9
execute if entity @a[scores={MiniGameTime=526}] run summon minecraft:armor_stand 864 62.3 1389 {Tags:["RedRupee3","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee3] at @s if entity @a[scores={MiniGameTime=526..606}] run tp @s ~.2 ~ ~
execute if entity @a[scores={MiniGameTime=607}] run kill @e[type=armor_stand,tag=RedRupee3]
#10
execute if entity @a[scores={MiniGameTime=541}] run summon minecraft:armor_stand 864 62.3 1389 {Tags:["RedRupee4","Rupee"],Marker:1b,NoGravity:1b,Invisible:1b,ShowArms:1b,ArmorItems:[{},{},{},{id:shears,Count:1b,tag:{Unbreakable:1b,Damage:18,HideFlags:63}}],Pose:{Head:[0f,180f,180f]}}
execute as @e[type=armor_stand,tag=RedRupee4] at @s if entity @a[scores={MiniGameTime=541..621}] run tp @s ~.2 ~ ~
execute if entity @a[scores={MiniGameTime=622}] run kill @e[type=armor_stand,tag=RedRupee4]

#Target
execute as @e[type=armor_stand,tag=Rupee] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run scoreboard players add @e[type=armor_stand,tag=ShootingGallery] lifetime 1
execute as @e[type=armor_stand,tag=Rupee] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] at @a run playsound minecraft:entity.arrow.hit_player ambient @a ~ ~ ~ 1 1
#1
execute as @e[type=armor_stand,tag=GreenRupee1] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 870 59 1394 {Age:-1000000,Item:{id:lime_dye,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#2
execute as @e[type=armor_stand,tag=BlueRupee1] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 871 59 1394 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#3
execute as @e[type=armor_stand,tag=BlueRupee2] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 872 59 1394 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#4
execute as @e[type=armor_stand,tag=GreenRupee2] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 873 59 1394 {Age:-1000000,Item:{id:lime_dye,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#5
execute as @e[type=armor_stand,tag=BlueRupee3] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 874 59 1394 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#6
execute as @e[type=armor_stand,tag=BlueRupee4] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 870 59 1395 {Age:-1000000,Item:{id:lapis_lazuli,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#7
execute as @e[type=armor_stand,tag=RedRupee1] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 871 59 1395 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#8
execute as @e[type=armor_stand,tag=RedRupee2] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 872 59 1395 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#9
execute as @e[type=armor_stand,tag=RedRupee3] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 873 59 1395 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}
#10
execute as @e[type=armor_stand,tag=RedRupee4] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run summon minecraft:item 874 59 1395 {Age:-1000000,Item:{id:red_dye,Count:1,tag:{FakeRupees:1b}},Tags:["NoPickup"]}

execute as @e[type=armor_stand,tag=Rupee] at @s positioned ~ ~1 ~1 if entity @e[type=snowball,distance=..1] run kill @s

#Out of Bullets
execute if entity @a[scores={MinigameSeeds=..0}] unless entity @a[scores={MiniGameTime=622..}] run scoreboard players set @a MiniGameTime 622
execute unless entity @e[type=armor_stand,tag=RedRupee4] if entity @a[scores={MiniGameTime=541..621}] unless entity @a[scores={MiniGameTime=622..}] run scoreboard players set @a MiniGameTime 622

#Finish Game
execute if entity @a[scores={MiniGameTime=623}] run clear @a minecraft:shears{ShootingGallery:1b}
execute if entity @a[scores={MiniGameTime=623}] run kill @e[type=item,nbt={Item:{id:"minecraft:shears",tag:{ShootingGallery:1b}}}]

execute if entity @a[scores={MiniGameTime=623}] run data merge entity @e[type=villager,tag=ShootingGallery,limit=1] {NoAI:1b,Tags:["ShootingGallery","Invisible"],CanPickUpLoot:0,PersistenceRequired:1,Silent:1,Invulnerable:1,Offers:{Recipes:[{maxUses:1,buy:{id:lime_dye,Count:20,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},buyB:{id:shears,Count:1,tag:{display:{Name:"{\"text\":\"Fairy Slingshot\"}"},Unbreakable:1b,Damage:9,HideFlags:63,Slingshot:1b,MainHandItem:1b}},sell:{id:shears,Count:1,tag:{display:{Name:"\"Shooting Game\""},ShootingGallery:1b,Unbreakable:1b,Damage:9,HideFlags:63,Slingshot:1b,MainHandItem:1b}},rewardExp:0b}]}}
execute if entity @a[scores={MiniGameTime=639}] run kill @e[type=armor_stand,tag=Rupee]
#Options
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0}] if entity @a[scores={MinigameSeeds=15}] run scoreboard players set @s text 1
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0}] if entity @a[scores={MinigameSeeds=15}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"All right. You don't have to if you don't want to."}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0}] if entity @a[scores={MinigameSeeds=15}] as @e[type=villager,tag=ShootingGallery] at @s run tp @s ~ ~-2 ~

execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=0..7}] unless entity @a[scores={MinigameSeeds=15}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Too bad! Practice hard and come back!"}]

execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=8..9}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Almost! Well...all right! I'll let you try one more time for free... This time, you gotta do it!"}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=8..9}] run function ocarina_of_time:moving_things/castle_town/minigames/reset_shooting_minigame

execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] run tellraw @a ["",{"text":"Owner: ","color":"gold"},{"text":"Wonderful! Bravo! Perfect! Here's a fantastic present!"}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress] if entity @s[tag=SlingshotUpgrade1] run tag @s add SlingshotUpgrade2
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade2] run advancement grant @a only minecraft:_upgrades/slingshot_upgrade_2
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade2] run tellraw @a ["",{"text":"You got the "},{"text":"Biggest Deku Seed Bullet Bag","color":"red"},{"text":"! This bag can hold up to "},{"text":"50 ","color":"yellow"},{"text":"slingshot bullets."}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] if entity @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade2] run scoreboard players set @a DekuSeeds2 50
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress] unless entity @s[tag=SlingshotUpgrade1] run tag @s add SlingshotUpgrade1
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade1] unless entity @s[tag=SlingshotUpgrade2] run advancement grant @a only minecraft:_upgrades/slingshot_upgrade_1
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade1] unless entity @s[tag=SlingshotUpgrade2] run tellraw @a ["",{"text":"You got a "},{"text":"Big Deku Seed Bullet Bag","color":"aqua"},{"text":"! This bag can hold up to "},{"text":"40 ","color":"yellow"},{"text":"slingshot bullets."}]
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] unless entity @s[tag=Prize] as @e[type=area_effect_cloud,tag=Progress,tag=SlingshotUpgrade1] unless entity @s[tag=SlingshotUpgrade2] run scoreboard players set @a DekuSeeds2 40
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10},tag=Prize] run give @a minecraft:purple_dye{display:{Name:"{\"text\":\"Purple Rupee\"}"},Item:1b} 1
execute if entity @a[scores={MiniGameTime=640}] if entity @s[scores={lifetime=10}] run tag @s add Prize

execute if entity @a[scores={MiniGameTime=640..}] run scoreboard players set @s lifetime 0
execute if entity @a[scores={MiniGameTime=640..}] run fill 871 62 1401 873 62 1401 minecraft:barrier
execute if entity @a[scores={MiniGameTime=640..}] run give @a minecraft:shears{display:{Name:"{\"text\":\"Fairy Slingshot\"}"},Unbreakable:1b,Damage:9,HideFlags:63,Slingshot:1b,MainHandItem:1b}
execute if entity @a[scores={MiniGameTime=640..}] run tag @a remove ShootingGame
execute if entity @a[scores={MiniGameTime=640..}] run scoreboard players reset @a MinigameSeeds
execute if entity @a[scores={MiniGameTime=640..}] run scoreboard players set @a MiniGameTime 0
