#Platform
execute as @a if entity @s[x=1357,y=75,z=-683,dx=2,dy=2,dz=2] run tag @s add DropPlatform
execute as @a if entity @s[tag=DropPlatform] run scoreboard players add @s GameTimer 1
execute as @a if entity @s[tag=DropPlatform,scores={GameTimer=40..}] run fill 1357 74 -681 1359 75 -683 minecraft:air
execute as @a if entity @s[tag=DropPlatform,scores={GameTimer=40..}] run tag @s remove DropPlatform
execute as @a if entity @s[scores={GameTimer=40..}] run scoreboard players set @s GameTimer 0

#Slingshot Help
execute unless block 1358 77 -692 minecraft:gold_block if entity @a[nbt={SelectedItem:{tag:{Slingshot:1b}}}] if entity @a[x=1346,y=71,z=-690,dx=18,dy=10,dz=12] run tellraw @a ["",{"text":"Navi:","color":"gold"},{"text":" Look! Something is hanging up there! It looks like an old ","color":"aqua"},{"text":"ladder"},{"text":"!","color":"aqua"}]
execute unless block 1358 77 -692 minecraft:gold_block if entity @a[nbt={SelectedItem:{tag:{Slingshot:1b}}}] if entity @a[x=1346,y=71,z=-690,dx=18,dy=10,dz=12] run fill 1358 77 -692 1358 77 -692 minecraft:gold_block

#Ladder
execute if entity @e[type=snowball,x=1358,y=80,z=-678,dx=0,dy=2,dz=0] unless block 1358 70 -678 minecraft:ladder run fill 1358 83 -678 1358 80 -678 minecraft:air
execute if entity @e[type=snowball,x=1358,y=80,z=-678,dx=0,dy=2,dz=0] unless block 1358 70 -678 minecraft:ladder run playsound minecraft:block.ladder.break block @a ~ ~ ~ 1 1
execute if entity @e[type=snowball,x=1358,y=80,z=-678,dx=0,dy=2,dz=0] unless block 1358 70 -678 minecraft:ladder run fill 1358 74 -678 1358 70 -678 minecraft:ladder

#Pressure Plate Platforms
execute if block 1372 88 -658 minecraft:light_weighted_pressure_plate[power=1] run clone 1382 85 -661 1379 86 -664 1369 85 -666
execute if block 1372 88 -658 minecraft:light_weighted_pressure_plate[power=1] run clone 1382 85 -666 1379 87 -669 1364 85 -669
execute if block 1372 88 -658 minecraft:light_weighted_pressure_plate[power=1] run clone 1382 85 -671 1379 88 -674 1369 85 -673
execute if block 1372 88 -658 minecraft:light_weighted_pressure_plate[power=1] run tag @e[type=armor_stand,tag=LitTorch,tag=Platforms] add Start
execute if block 1372 88 -658 minecraft:light_weighted_pressure_plate[power=1] run fill 1372 87 -658 1372 87 -658 minecraft:gold_block
execute if block 1372 88 -658 minecraft:light_weighted_pressure_plate[power=1] run fill 1372 88 -658 1372 88 -658 minecraft:air

execute as @e[type=armor_stand,tag=LitTorch,tag=Platforms] if entity @s[tag=Start] run scoreboard players add @s timer 1

execute as @e[type=armor_stand,tag=LitTorch,tag=Platforms] if entity @s[scores={timer=200..}] run fill 1364 88 -673 1372 85 -663 minecraft:air
execute as @e[type=armor_stand,tag=LitTorch,tag=Platforms] if entity @s[scores={timer=200..}] run fill 1372 84 -663 1364 84 -673 minecraft:grass_block
execute as @e[type=armor_stand,tag=LitTorch,tag=Platforms] if entity @s[scores={timer=200..}] run fill 1372 87 -658 1372 87 -658 minecraft:grass_block
execute as @e[type=armor_stand,tag=LitTorch,tag=Platforms] if entity @s[scores={timer=200..}] run fill 1372 88 -658 1372 88 -658 minecraft:light_weighted_pressure_plate
execute as @e[type=armor_stand,tag=LitTorch,tag=Platforms] if entity @s[scores={timer=200..}] run tag @s remove Start
execute as @e[type=armor_stand,tag=LitTorch,tag=Platforms] if entity @s[scores={timer=200..}] run scoreboard players set @s timer 0

#Web Floor
execute if entity @a[x=1362,y=86,z=-642,dx=11,dz=10] run tag @e[type=armor_stand,tag=WebFloor] add Start
execute as @e[type=armor_stand,tag=WebFloor] if entity @s[tag=Start] run scoreboard players add @s timer 1
execute as @e[type=armor_stand,tag=WebFloor] at @a if entity @s[tag=Start] if block ~ ~-1 ~ minecraft:barrier run fill 1366 61 -634 1370 63 -634 minecraft:vine[south=true]
execute as @e[type=armor_stand,tag=WebFloor] at @a if entity @s[tag=Start] if block ~ ~-1 ~ minecraft:barrier run fill 1371 62 -640 1365 62 -634 minecraft:air replace minecraft:cobweb
execute as @e[type=armor_stand,tag=WebFloor] at @a if entity @s[tag=Start] if block ~ ~-1 ~ minecraft:barrier run fill 1371 63 -640 1365 63 -634 minecraft:air replace minecraft:barrier
execute as @e[type=armor_stand,tag=WebFloor] if entity @s[scores={timer=30..}] run tag @s remove Start
execute as @e[type=armor_stand,tag=WebFloor] if entity @s[scores={timer=30..}] run scoreboard players set @s timer 0

#Navi
execute if entity @a[x=1366,y=64,z=-639,dx=4,dz=4] unless block 1363 60 -637 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Look, look, ","color":"aqua"},{"selector":"@p","color":"aqua"},{"text":"! You can see down below this ","color":"aqua"},{"text":"web"},{"text":"!","color":"aqua"}]
execute if entity @a[x=1366,y=64,z=-639,dx=4,dz=4] unless block 1363 60 -637 minecraft:gold_block run fill 1363 60 -637 1363 60 -637 minecraft:gold_block

#Fire Walls
#1
execute if block 1375 47 -639 minecraft:light_weighted_pressure_plate[power=1] run fill 1375 48 -634 1375 48 -634 minecraft:torch
execute if block 1375 47 -639 minecraft:light_weighted_pressure_plate[power=1] run tag @e[type=armor_stand,tag=Web1] add Start
execute if block 1375 47 -639 minecraft:light_weighted_pressure_plate[power=1] run fill 1375 46 -639 1375 46 -639 minecraft:gold_block
execute if block 1375 47 -639 minecraft:light_weighted_pressure_plate[power=1] run fill 1375 47 -639 1375 47 -639 minecraft:air

execute as @e[type=armor_stand,tag=Web1] if entity @s[tag=Start] run scoreboard players add @s HoverTimer 1

execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={HoverTimer=1..20}] run particle flame 1375 49 -634.00 .9 2.5 0 0 100 normal
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={HoverTimer=21}] run fill 1378 47 -636 1372 56 -634 minecraft:air replace minecraft:cobweb
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={HoverTimer=21}] run fill 1378 47 -636 1372 56 -634 minecraft:air replace minecraft:barrier
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={HoverTimer=21}] run tag @s remove Start
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={HoverTimer=21}] run scoreboard players set @s HoverTimer 0

#2
execute as @e[type=armor_stand,tag=Web1] if entity @a[x=1356,y=47,z=-639,dx=2,dz=3,nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run tag @s add Start2

execute as @e[type=armor_stand,tag=Web1] if entity @s[tag=Start2] unless entity @s[scores={lifetime=22..}] run scoreboard players add @s lifetime 1

execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={lifetime=1..20}] run particle flame 1354.0 50 -636.0 1 1.6 1 0 100 normal
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={lifetime=21}] run fill 1358 47 -636 1354 54 -639 minecraft:air replace minecraft:cobweb
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={lifetime=21}] run fill 1358 47 -636 1354 54 -639 minecraft:air replace minecraft:barrier

#3
execute as @e[type=armor_stand,tag=Web2] if entity @a[x=1376,y=50,z=-693,dx=1,dz=4,nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run tag @s add Start

execute as @e[type=armor_stand,tag=Web2] if entity @s[tag=Start] unless entity @s[scores={HoverTimer=22..}] run scoreboard players add @s HoverTimer 1

execute as @e[type=armor_stand,tag=Web2] if entity @s[scores={HoverTimer=1..20}] run particle flame 1379.00 52 -691 0 1.5 .8 0 25 normal
execute as @e[type=armor_stand,tag=Web2] if entity @s[scores={HoverTimer=21}] run fill 1378 51 -693 1378 54 -689 minecraft:air
execute as @e[type=armor_stand,tag=Web2] if entity @s[scores={HoverTimer=21}] run fill 1379 55 -689 1379 50 -693 minecraft:air replace minecraft:cobweb

#4
execute as @e[type=armor_stand,tag=Web2] if entity @a[x=1365,y=50,z=-676,dx=4,dz=1,nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run tag @s add Start2

execute as @e[type=armor_stand,tag=Web2] if entity @s[tag=Start2] unless entity @s[scores={lifetime=22..}] run scoreboard players add @s lifetime 1

execute as @e[type=armor_stand,tag=Web2] if entity @s[scores={lifetime=1..20}] run particle flame 1367 51 -673.00 .8 .9 0 0 25 normal
execute as @e[type=armor_stand,tag=Web2] if entity @s[scores={lifetime=21}] run fill 1369 51 -674 1365 53 -674 minecraft:air
execute as @e[type=armor_stand,tag=Web2] if entity @s[scores={lifetime=21}] run fill 1365 53 -673 1369 50 -673 minecraft:air replace minecraft:cobweb

#5
execute as @e[type=armor_stand,tag=Web1] if entity @a[x=1364,y=49,z=-654,dx=6,dz=6,nbt={SelectedItem:{tag:{LitDekuStick:1b}}}] run tag @s add Start3

execute as @e[type=armor_stand,tag=Web1] if entity @s[tag=Start3] unless entity @s[scores={GameTimer=22..}] run scoreboard players add @s GameTimer 1

execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={GameTimer=1..20}] run particle flame 1367 47 -651 1.6 0 1.6 0 25 normal
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={GameTimer=21}] run fill 1370 48 -654 1364 47 -648 minecraft:air replace minecraft:barrier
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={GameTimer=21}] run fill 1370 48 -654 1364 47 -648 minecraft:air replace minecraft:cobweb
execute as @e[type=armor_stand,tag=Web1] if entity @s[scores={GameTimer=21}] run fill 1364 48 -652 1364 47 -650 minecraft:vine[west=true]

#Eye Switch
execute if entity @e[type=snowball,x=1344,y=51,z=-643,dx=0,dz=.5] unless block 1344 47 -643 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @e[type=snowball,x=1344,y=51,z=-643,dx=0,dz=.5] run fill 1344 51 -644 1344 51 -644 minecraft:white_shulker_box
execute if entity @e[type=snowball,x=1344,y=51,z=-643,dx=0,dz=.5] run fill 1344 47 -643 1344 47 -643 minecraft:stone_pressure_plate

#Water Platform
execute if block 1336 43 -659 minecraft:light_weighted_pressure_plate[power=1] run fill 1335 45 -653 1335 45 -665 minecraft:iron_bars[waterlogged=false,north=true,south=true] replace minecraft:iron_bars
execute if block 1336 43 -659 minecraft:light_weighted_pressure_plate[power=1] run fill 1347 45 -653 1347 45 -665 minecraft:iron_bars[waterlogged=false,north=true,south=true] replace minecraft:iron_bars
execute if block 1336 43 -659 minecraft:light_weighted_pressure_plate[power=1] run fill 1336 45 -665 1346 45 -649 minecraft:air replace minecraft:water
execute if block 1336 43 -659 minecraft:light_weighted_pressure_plate[power=1] run fill 1336 42 -659 1336 42 -659 minecraft:gold_block
execute if block 1336 43 -659 minecraft:light_weighted_pressure_plate[power=1] run tag @e[type=area_effect_cloud,tag=WaterPlatform] add 2
execute if block 1336 43 -659 minecraft:light_weighted_pressure_plate[power=1] run tag @e[type=area_effect_cloud,tag=WaterPlatform] add Start
execute if block 1336 43 -659 minecraft:light_weighted_pressure_plate[power=1] run fill 1336 43 -659 1336 43 -659 minecraft:air

#Water Platform
execute as @e[type=area_effect_cloud,tag=WaterPlatform] at @a run function ocarina_of_time:moving_things/deku_tree/water_platform

#Push Block Resets
execute if block 1376 49 -649 minecraft:pink_concrete_powder unless block 1376 49 -651 minecraft:air run fill 1376 49 -649 1376 49 -649 minecraft:air
execute if block 1376 46 -645 minecraft:pink_concrete run fill 1376 46 -643 1376 47 -643 minecraft:pink_concrete
execute if block 1376 46 -645 minecraft:pink_concrete run fill 1376 46 -645 1376 46 -645 minecraft:air

#Deku Stick Door
execute if entity @e[type=armor_stand,tag=LitTorch,x=1343,y=50,z=-682,dx=0,dz=0] if entity @e[type=armor_stand,tag=LitTorch,x=1343,y=50,z=-686,dx=0,dz=0] unless block 1347 50 -684 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @e[type=armor_stand,tag=LitTorch,x=1343,y=50,z=-682,dx=0,dz=0] if entity @e[type=armor_stand,tag=LitTorch,x=1343,y=50,z=-686,dx=0,dz=0] unless block 1347 50 -684 minecraft:stone_pressure_plate run fill 1347 50 -684 1347 50 -684 minecraft:stone_pressure_plate
execute if entity @e[type=armor_stand,tag=LitTorch,x=1343,y=50,z=-682,dx=0,dz=0] if entity @e[type=armor_stand,tag=LitTorch,x=1343,y=50,z=-686,dx=0,dz=0] unless block 1341 50 -678 minecraft:stone_pressure_plate run fill 1341 50 -678 1341 50 -678 minecraft:stone_pressure_plate

#Second Floor Torch
execute if entity @e[type=armor_stand,tag=LitTorch,x=1364,y=88,z=-658,dx=0,dz=0] unless block 1368 88 -655 minecraft:stone_pressure_plate at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if entity @e[type=armor_stand,tag=LitTorch,x=1364,y=88,z=-658,dx=0,dz=0] unless block 1368 88 -655 minecraft:stone_pressure_plate run fill 1368 88 -655 1368 88 -655 minecraft:stone_pressure_plate

#Bomb Wall 
execute if block 1383 50 -691 minecraft:air run fill 1383 54 -693 1383 55 -689 minecraft:air replace minecraft:mossy_cobblestone

#Hole
execute if entity @a[x=1367,y=49,z=-667,dx=0,dy=1,dz=1] unless entity @a[tag=Adult] run fill 1367 50 -667 1367 50 -667 minecraft:birch_trapdoor
execute unless entity @a[x=1367,y=49,z=-667,dx=0,dz=1] run fill 1367 50 -667 1367 50 -667 minecraft:air
execute if entity @a[x=1367,y=49,z=-658,dx=0,dy=1,dz=1] unless entity @a[tag=Adult] run fill 1367 50 -658 1367 50 -658 minecraft:birch_trapdoor[facing=south]
execute unless entity @a[x=1367,y=49,z=-659,dx=0,dz=1] run fill 1367 50 -658 1367 50 -658 minecraft:air

execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=5}] run clear @a minecraft:carrot_on_a_stick{LitDekuStick:1b}
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=5}] run tp @a 1367 48 -666
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=10}] run tp @a 1367 48 -665
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=15}] run tp @a 1367 48 -664
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=20}] run tp @a 1367 48 -663
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=25}] run tp @a 1367 48 -662
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=30}] run tp @a 1367 48 -661
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=35}] run tp @a 1367 48 -660
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=40}] run tp @a 1367 48 -659
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=45}] run tp @a 1367 49 -656.4
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole1,scores={GameTimer=46}] run tag @s remove Hole1

execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=5}] run clear @a minecraft:carrot_on_a_stick{LitDekuStick:1b}
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=5}] run tp @a 1367 48 -659
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=10}] run tp @a 1367 48 -660
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=15}] run tp @a 1367 48 -661
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=20}] run tp @a 1367 48 -662
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=25}] run tp @a 1367 48 -663
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=30}] run tp @a 1367 48 -664
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=35}] run tp @a 1367 48 -665
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=40}] run tp @a 1367 48 -666
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=45}] run tp @a 1367 49 -667.6
execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[tag=Hole2,scores={GameTimer=46}] run tag @s remove Hole2

execute as @e[type=armor_stand,tag=Web2] at @a if entity @s[scores={GameTimer=46}] run scoreboard players set @s GameTimer 0

#Enemies
function ocarina_of_time:moving_things/deku_tree/enemies/enemies

#Hint 1
execute if block 1358 73 -663 minecraft:gold_block unless entity @e[type=zombie,tag=DekuScrub1] unless block 1358 73 -673 minecraft:gold_block run tellraw @a ["",{"text":"Deku Scrub:","color":"gold"},{"text":" Ow-ow-ow! Forgive me, master! If I give you a tip, will you let me go? When you jump off a high cliff, you won't get hurt from the fall!"}]
execute if block 1358 73 -663 minecraft:gold_block unless entity @e[type=zombie,tag=DekuScrub1] unless block 1358 73 -673 minecraft:gold_block run fill 1358 75 -654 1358 75 -654 minecraft:stone_pressure_plate replace minecraft:air
execute if block 1358 73 -663 minecraft:gold_block unless entity @e[type=zombie,tag=DekuScrub1] unless block 1358 73 -673 minecraft:gold_block run fill 1358 75 -672 1358 75 -672 minecraft:stone_pressure_plate replace minecraft:air
execute if block 1358 73 -663 minecraft:gold_block unless entity @e[type=zombie,tag=DekuScrub1] unless block 1358 73 -673 minecraft:gold_block at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 1358 73 -663 minecraft:gold_block unless entity @e[type=zombie,tag=DekuScrub1] run fill 1358 73 -673 1358 73 -673 minecraft:gold_block
#Hint 2
execute if block 1344 45 -637 minecraft:gold_block unless entity @e[type=zombie,tag=DekuScrub2] unless block 1337 45 -637 minecraft:gold_block run tellraw @a ["",{"text":"Deku Scrub: ","color":"gold"},{"text":"Please forgive me, master! I'll never do it again! If you spare me, I'll teach you something cool. You will never beat my brothers up ahead unless you punish them in the proper order. The order is... "},{"text":"2 3 1 Twenty-three is number one!","color":"red"},{"text":" Do you think I'm a traitor?"}]
execute if block 1344 45 -637 minecraft:gold_block unless entity @e[type=zombie,tag=DekuScrub2] run fill 1337 45 -637 1337 45 -637 minecraft:gold_block
#Hint 3
execute if block 1387 10 -661 minecraft:dirt unless entity @e[type=zombie,tag=DekuScrub9] unless block 1391 10 -663 minecraft:gold_block run tellraw @a ["",{"text":"Deku Scrub:","color":"gold"},{"text":" How did you know our secret? How irritating! It's so annoying that I'm going to reveal the secret of Queen Gohma to you! In order to administer the coup de grâce to Queen Gohma, strike with your sword "},{"text":"while she's stunned","color":"red"},{"text":". Oh, Queenie... Sorry about that!"}]
execute if block 1387 10 -661 minecraft:dirt unless entity @e[type=zombie,tag=DekuScrub9] unless block 1391 10 -663 minecraft:gold_block at @a run playsound minecraft:block.iron_door.open block @a ~ ~ ~ 1
execute if block 1387 10 -661 minecraft:dirt unless entity @e[type=zombie,tag=DekuScrub9] unless block 1391 10 -663 minecraft:gold_block run fill 1393 12 -661 1393 12 -661 minecraft:stone_pressure_plate
execute if block 1387 10 -661 minecraft:dirt unless entity @e[type=zombie,tag=DekuScrub9] run fill 1391 10 -663 1391 10 -663 minecraft:gold_block

#Loot Tables
#Regen Bushes
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1373 64 -625 1373 64 -625 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1375 64 -626 1375 64 -626 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1378 64 -629 1378 64 -629 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1381 71 -636 1381 71 -636 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1381 71 -634 1381 71 -634 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1364 70 -679 1364 70 -679 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1364 70 -681 1364 70 -681 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1352 70 -679 1352 70 -679 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1352 70 -681 1352 70 -681 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1363 89 -677 1363 89 -677 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1363 89 -679 1363 89 -679 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1363 47 -634 1363 47 -634 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1361 47 -634 1361 47 -634 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1349 47 -641 1349 47 -641 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1350 47 -640 1350 47 -640 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1350 47 -634 1350 47 -634 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1349 47 -633 1349 47 -633 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1346 47 -671 1346 47 -671 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1346 47 -669 1346 47 -669 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1347 50 -685 1347 50 -685 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1347 50 -683 1347 50 -683 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1377 50 -685 1377 50 -685 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1377 50 -683 1377 50 -683 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1384 12 -639 1384 12 -639 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1382 12 -639 1382 12 -639 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1380 12 -639 1380 12 -639 minecraft:fern

execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1415 12 -679 1415 12 -679 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1427 12 -679 1427 12 -679 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1438 12 -679 1438 12 -679 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1443 12 -671 1443 12 -671 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1443 12 -651 1443 12 -651 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1438 12 -643 1438 12 -643 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1427 12 -643 1427 12 -643 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill 1415 12 -643 1415 12 -643 minecraft:fern

#Compass
execute if data block 1368 89 -679 {Items:[]} run fill 1368 90 -683 1368 90 -683 minecraft:gold_block

#Boss
execute if entity @a[x=1407,y=13,z=-664,dx=0,dy=2,dz=6] unless block 1427 5 -664 minecraft:gold_block run fill 1405 13 -663 1405 16 -659 minecraft:andesite replace minecraft:air
execute if entity @a[x=1407,y=13,z=-664,dx=0,dy=2,dz=6] unless block 1427 5 -664 minecraft:gold_block run tag @a add Boss
execute if entity @a[tag=Boss] run function ocarina_of_time:moving_things/deku_tree/boss/loop
execute if block 1405 13 -661 minecraft:andesite unless entity @e[type=zombie,tag=Gohma] run fill 1427 5 -664 1427 5 -664 minecraft:gold_block
execute if block 1427 5 -664 minecraft:gold_block run tag @a remove Boss
execute if block 1427 5 -664 minecraft:gold_block unless block 1423 12 -661 minecraft:chest run tp @a 1420 12 -661 -90 0
execute if block 1427 5 -664 minecraft:gold_block unless block 1423 12 -661 minecraft:chest run clone 1427 4 -659 1427 4 -659 1423 12 -661
execute if block 1427 5 -664 minecraft:gold_block run fill 1427 4 -656 1427 4 -656 minecraft:redstone_block
