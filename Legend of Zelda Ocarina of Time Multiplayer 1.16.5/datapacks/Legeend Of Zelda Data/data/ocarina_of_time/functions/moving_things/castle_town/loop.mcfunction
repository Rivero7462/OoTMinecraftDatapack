#Bridge
execute if block 876 61 1473 minecraft:redstone_block unless entity @a[scores={time=13001..23000}] run fill 876 61 1473 875 61 1473 minecraft:air
execute if block 876 61 1473 minecraft:air unless entity @a[scores={time=13001..23000}] run fill 876 61 1473 876 61 1473 minecraft:redstone_block

execute if block 875 61 1473 minecraft:redstone_block if entity @a[scores={time=13001..23000}] run fill 876 61 1473 875 61 1473 minecraft:air
execute if block 875 61 1473 minecraft:air if entity @a[scores={time=13001..23000}] run fill 875 61 1473 875 61 1473 minecraft:redstone_block

#Doors
execute unless entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/castle_town/morning_doors
execute if entity @a[scores={time=13001..23000}] run function ocarina_of_time:moving_things/castle_town/night_doors

#Richard
execute unless entity @e[type=wolf,tag=Richard] unless entity @e[type=armor_stand,tag=MamamuYan,tag=Prize] run summon wolf 894 70 1436 {Tags:["Richard","Dog","PickupDog"],Owner:"1",CollarColor:16,Invulnerable:1b,Silent:1b}

#White Twin
execute if entity @a[scores={time=13001..23000}] if block 889 69 1437 minecraft:air if entity @a[x=889,y=70,z=1432,dx=4,dy=10,dz=4] as @e[type=armor_stand,tag=WhiteTwin] run tellraw @a ["",{"text":"Twin:","color":"gold"},{"text":" It seems like it's taking forever for dawn to come... The view of Hyrule Castle in the morning sun is so fantastic!"}]
execute if entity @a[scores={time=13001..23000}] if block 889 69 1437 minecraft:air if entity @a[x=889,y=70,z=1432,dx=4,dy=10,dz=4] as @e[type=armor_stand,tag=WhiteTwin] run fill 889 69 1437 889 69 1437 minecraft:gold_block
execute unless entity @a[x=889,y=70,z=1432,dx=4,dy=10,dz=4] run fill 889 69 1437 889 69 1437 minecraft:air

#Mask Quest Start
execute if entity @a[tag=StartMaskQuest] run function ocarina_of_time:moving_things/castle_town/mask_quest
#Mask Shops
execute as @e[type=armor_stand,tag=MaskSalesman] run function ocarina_of_time:moving_things/castle_town/mask

#Fix Itchy Girl
execute if entity @a[tag=MeetMalon2] unless entity @e[type=armor_stand,tag=Malon1,x=884,y=70,z=1421,dx=0,dy=0] run scoreboard players set @e[type=armor_stand,tag=ItchyGirl] text 2
execute if entity @a[tag=MeetMalon2] unless entity @e[type=armor_stand,tag=Malon1,x=884,y=70,z=1421,dx=0,dy=0] run scoreboard players set @e[type=armor_stand,tag=BeardGuy] text 2

execute if entity @a[tag=FixItchyGirl] run scoreboard players set @e[type=armor_stand,tag=ItchyGirl] text 1
execute if entity @a[tag=FixItchyGirl] run scoreboard players set @e[type=armor_stand,tag=BeardGuy] text 1
execute if entity @a[tag=FixItchyGirl] if entity @e[type=armor_stand,tag=BeardGuy,scores={text=1}] if entity @e[type=armor_stand,tag=ItchyGirl,scores={text=1}] run tag @a remove FixItchyGirl

#Honey and Darling
scoreboard players add @e[type=armor_stand,tag=Honey] timer 1
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=1..3}] run tp @s 887.75 70 1426.75 225 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=1..3}] run tp @s 888.25 70 1426.25 45 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=4..6}] run tp @s 887.50 70 1426.50 270 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=4..6}] run tp @s 888.50 70 1426.50 90 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=7..9}] run tp @s 887.75 70 1426.25 315 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=7..9}] run tp @s 888.25 70 1426.75 135 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=10..12}] run tp @s 888.0 70 1426.0 360 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=10..12}] run tp @s 888.0 70 1427.0 180 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=13..15}] run tp @s 888.25 70 1426.25 45 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=13..15}] run tp @s 887.75 70 1426.75 225 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=16..18}] run tp @s 888.50 70 1426.50 90 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=16..18}] run tp @s 887.50 70 1426.50 270 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=19..21}] run tp @s 888.25 70 1426.75 135 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=19..21}] run tp @s 887.75 70 1426.25 315 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=22..24}] run tp @s 888.0 70 1427.0 180 ~
execute as @e[type=armor_stand,tag=Darling] if entity @e[type=armor_stand,tag=Honey,scores={timer=22..24}] run tp @s 888.0 70 1426.0 360 ~
execute as @e[type=armor_stand,tag=Honey] if entity @s[scores={timer=24..}] run scoreboard players set @s timer 0

#Night/Day People
execute unless entity @a[x=886,y=60,z=1426,dx=0,dz=0] unless entity @a[x=884,y=60,z=1426,dx=0,dz=0] unless entity @a[x=882,y=60,z=1426,dx=0,dz=0] unless entity @a[x=880,y=60,z=1426,dx=0,dz=0] unless entity @a[scores={time=13001..23000}] as @e[type=wolf,tag=Richard] at @s if block 850 69 1423 minecraft:gold_block run tp @s ~ 70 ~
execute unless entity @a[x=886,y=60,z=1426,dx=0,dz=0] unless entity @a[x=884,y=60,z=1426,dx=0,dz=0] unless entity @a[x=882,y=60,z=1426,dx=0,dz=0] unless entity @a[x=880,y=60,z=1426,dx=0,dz=0] unless entity @a[scores={time=13001..23000}] as @e[type=wolf,tag=Richard] if block 850 69 1423 minecraft:gold_block run tp @s 891 70 1420
execute unless entity @a[x=886,y=60,z=1426,dx=0,dz=0] unless entity @a[x=884,y=60,z=1426,dx=0,dz=0] unless entity @a[x=882,y=60,z=1426,dx=0,dz=0] unless entity @a[x=880,y=60,z=1426,dx=0,dz=0] unless entity @a[scores={time=13001..23000}] as @e[type=wolf,tag=FakeDog] if block 850 69 1423 minecraft:gold_block run tp @e[type=wolf,tag=FakeDog] 884 66 1426
execute unless entity @a[x=886,y=60,z=1426,dx=0,dz=0] unless entity @a[x=884,y=60,z=1426,dx=0,dz=0] unless entity @a[x=882,y=60,z=1426,dx=0,dz=0] unless entity @a[x=880,y=60,z=1426,dx=0,dz=0] unless entity @a[scores={time=13001..23000}] run kill @e[type=wolf,tag=FakeDog]

#Music
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/castle_town
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run time add 5
execute if entity @a[scores={time=13200}] run function ocarina_of_time:teleports/castle_town/loot_reset
execute if entity @a[scores={time=13200}] run time add 5
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:castle_town

#New Text
execute if entity @a[tag=CastleTownText] run function ocarina_of_time:moving_things/castle_town/new_text
execute if block 884 68 1413 minecraft:gold_block unless entity @a[scores={time=13001..23000}] run scoreboard players set @e[type=armor_stand,tag=Guard1] text 3
execute if entity @e[type=armor_stand,tag=DeadGuard,x=853,y=70,z=1419,dx=0,dz=0] run tp @e[type=armor_stand,tag=DogGuy] 851 64 1395 45 ~

#Stones Plaque
execute if block 954 6 1394 minecraft:air if entity @a[x=953,y=8,z=1393,dx=0,dz=2] run function ocarina_of_time:moving_things/castle_town/plaque
execute if block 954 6 1394 minecraft:air if entity @a[x=953,y=8,z=1393,dx=0,dz=2] run fill 954 6 1394 954 6 1394 minecraft:gold_block
execute unless entity @a[x=953,y=8,z=1393,dx=0,dz=2] run fill 954 6 1394 954 6 1394 minecraft:air

#Items
execute as @e[type=item] run function ocarina_of_time:moving_things/castle_town/items

#Navi
execute if entity @a[x=970,y=10,z=1391,dx=0,dy=1,dz=6] unless block 971 8 1394 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"selector":"@p","color":"aqua"},{"text":", isn't that...?! It's that legendary blade... The Master Sword!","color":"aqua"}]
execute if entity @a[x=970,y=10,z=1391,dx=0,dy=1,dz=6] run fill 971 8 1394 971 8 1394 minecraft:gold_block

#Beggar
tp @e[type=villager,tag=CastleBeggar] @e[type=armor_stand,tag=Beggar,limit=1]
execute as @e[type=villager,tag=CastleBeggar,nbt={Offers:{Recipes:[{uses:1}]}}] run give @a minecraft:glass_bottle{display:{Name:"\"Bottle\""}}
execute as @e[type=villager,tag=CastleBeggar,nbt={Offers:{Recipes:[{uses:1}]}}] run data merge entity @s {Tags:["CastleBeggar","Invisible"],PersistenceRequired:1,Invulnerable:1,Silent:1,NoAI:1,Offers:{Recipes:[{buy:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Bottled Bug\"}"},Unbreakable:1b,Damage:2,HideFlags:63,BottledBug:1b}},sell:{id:lapis_lazuli,Count:10,tag:{Item:1b,display:{Name:"{\"text\":\"Blue Rupee\"}"}},rewardExp:0b,maxUses:9999999}},{buy:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Fish\"}"},Unbreakable:1b,Damage:3,HideFlags:63,BottledFish:1b}},sell:{id:red_dye,Count:5,tag:{Item:1b,display:{Name:"{\"text\":\"Red Rupee\"}"}}},rewardExp:0b,maxUses:9999999},{buy:{id:"carrot_on_a_stick",Count:1,tag:{display:{Name:"{\"text\":\"Blue Fire\"}"},Unbreakable:1b,Damage:18,HideFlags:63,BlueFire:1b}},sell:{id:purple_dye,Count:3,tag:{Item:1b,display:{Name:"{\"text\":\"Purple Rupee\"}"}}},rewardExp:0b,maxUses:9999999}]}}

#Shooting Gallery
execute if entity @a[x=870,y=60,z=1402,dx=5,dz=7] if entity @a[nbt={Inventory:[{tag:{ShootingGallery:1b}}]}] run tag @a add ShootingGame
execute if entity @a[tag=ShootingGame] run scoreboard players add @a MiniGameTime 1

execute as @a[x=871,y=61,z=1401,dx=2,dz=0] at @s run tp @s ~ ~ ~1

#Treasure Shop
execute if block 862 50 1417 minecraft:barrier as @e[type=area_effect_cloud,tag=RandomTreasure] run function ocarina_of_time:moving_things/castle_town/minigames/treasure_randomizer
execute as @a if entity @a[x=862,y=50,z=1417,dx=0,dz=0] if entity @a[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b}]}] run function ocarina_of_time:items/lens_of_truth/off_2

#Bombchu Bowling
execute if entity @a[tag=OpenBowling] run scoreboard players set @e[type=armor_stand,tag=BowlingOwner] text 3
execute if entity @a[tag=OpenBowling] run fill 869 36 1421 869 36 1421 minecraft:gold_block
execute if entity @a[tag=OpenBowling] if block 869 36 1421 minecraft:gold_block if entity @e[type=armor_stand,tag=BowlingOwner,scores={text=3}] run tag @a remove OpenBowling

execute unless block 869 36 1421 minecraft:gold_block run data merge entity @e[type=villager,tag=BowlingShop,limit=1] {Offers:{Recipes:[{maxUses:0,buy:{id:lime_dye,Count:30,tag:{Item:1b,display:{Name:"{\"text\":\"Green Rupee\"}"}}},sell:{id:carrot_on_a_stick,Count:1,tag:{display:{Name:"{\"text\":\"Minigame Bombchus\"}"},Unbreakable:1b,HideFlags:63,MinigameBombchu:1b,Bombchu:1b,MainHandItem:1b}},rewardExp:0b}]}}
execute if entity @a[x=869,y=41,z=1422,dx=7,dz=7] if entity @a[nbt={Inventory:[{tag:{MinigameBombchu:1b}}]}] run tag @a add BowlingGame
execute unless entity @a[tag=BowlingGame] as @e[type=armor_stand,tag=BowlingOwner] run scoreboard players add @s lifetime 1
execute if entity @a[tag=BowlingGame] as @e[type=armor_stand,tag=BowlingOwner] run function ocarina_of_time:moving_things/castle_town/minigames/bombchu_bowling
execute unless entity @a[tag=BowlingGame] as @e[type=armor_stand,tag=BowlingOwner,scores={lifetime=5..}] run scoreboard players set @s lifetime 0
#Spike Traps
execute as @e[type=armor_stand,tag=BladeTrap,tag=Type2] at @s run function ocarina_of_time:moving_things/castle_town/minigames/spike
#Cucco's
execute if block 850 37 1428 minecraft:air run fill 850 37 1424 850 37 1428 minecraft:powered_rail
execute as @e[type=chicken,tag=GoodCucco] run scoreboard players set @s text 0

#Locked Doors
#1
execute positioned 862 51 1417 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 862 51 1417 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
#2
execute positioned 862 51 1432 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 862 51 1432 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
#3
execute positioned 862 51 1447 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 862 51 1447 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
#4
execute positioned 862 51 1462 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 862 51 1462 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
#5
execute positioned 862 51 1477 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 862 51 1477 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy
#6
execute positioned 862 51 1492 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run function ocarina_of_time:items/locked_door/south
execute positioned 862 51 1492 if block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b}]} unless block ~ ~ ~ minecraft:smoker{Items:[{Slot:0b,id:"minecraft:lever",Count:1b,tag:{display:{Name:"\"Small Key (Treasure Shop)\""}}}]} run fill ~ ~ ~ ~ ~ ~ minecraft:smoker[facing=north]{CustomName:'{"text":"Door"}',Lock:"Small Key (Treasure Shop)"} destroy

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/castle_town/pots
execute as @e[type=area_effect_cloud,tag=Pots2] run function ocarina_of_time:moving_things/castle_town/pots_2

#Master Sword Switch
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] unless entity @e[type=item,distance=..30] unless entity @a[tag=Adult] as @e[type=armor_stand,tag=MasterSword] unless block 995 5 1394 minecraft:gold_block unless data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/master_sword/first_time
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] unless entity @e[type=item,distance=..30] unless entity @a[tag=Adult] as @e[type=armor_stand,tag=MasterSword] if block 995 5 1394 minecraft:gold_block unless data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/master_sword/adult
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] unless entity @e[type=item,distance=..30] if entity @a[tag=Adult] as @e[type=armor_stand,tag=MasterSword] if entity @s[nbt={HandItems:[{id:"minecraft:diamond_sword"},{}]}] run function ocarina_of_time:moving_things/castle_town/master_sword/child

#Dropped Items
execute at @a unless entity @e[type=item,distance=..30] as @e[type=armor_stand,tag=MasterSword,distance=..5] run data merge entity @s {DisabledSlots:0}
execute at @a if entity @e[type=armor_stand,tag=MasterSword,distance=..5] as @e[type=item,distance=..30] run function ocarina_of_time:moving_things/castle_town/master_sword/item_teleport

execute at @a as @e[type=armor_stand,tag=MasterSword,distance=..10] if entity @s[distance=..5] run tag @a add NoOcarina
execute at @a as @e[type=armor_stand,tag=MasterSword,distance=..10] unless entity @s[distance=..5] run tag @a remove NoOcarina

#Item in Sword Slot
execute as @e[type=armor_stand,tag=MasterSword] unless entity @s[nbt={HandItems:[{id:"minecraft:diamond_sword"},{}]}] if data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/pedestal/teleport
execute if entity @a[tag=NoOcarina] as @e[type=armor_stand,tag=MasterSword] unless entity @s[nbt={HandItems:[{id:"minecraft:diamond_sword"},{}]}] unless data entity @s HandItems[].id run function ocarina_of_time:moving_things/castle_town/pedestal/finish
execute as @e[type=item,x=994,y=10,z=1394,dx=0,dz=0] run tp @s 993 12 1394
