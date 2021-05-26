fill -571 52 -596 -572 52 -596 minecraft:barrier

#Fly Navi
execute if entity @a[tag=FlyNavi] unless entity @e[type=area_effect_cloud,tag=Fly] run summon minecraft:area_effect_cloud -488.500 72.00000 -641.500 {Tags:["Fly"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute as @e[type=area_effect_cloud,tag=Fly] at @s run function ocarina_of_time:moving_things/kokiri_forest/fly

#Saria Hello
execute as @e[type=armor_stand,tag=Saria,tag=SariaCutscene1] if entity @a[x=-573,y=68,z=-606,dx=2,dy=2,dz=2] run function ocarina_of_time:moving_things/kokiri_forest/saria_welcome

#Lost Woods Correct Path Music
execute at @a if entity @a[x=-588,y=75,z=-668,dx=0,dz=0] unless entity @a[tag=WaitMusic] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.8
execute at @a if entity @a[x=-588,y=75,z=-668,dx=0,dz=0] unless entity @a[tag=WaitMusic] run tag @a add WaitMusic

execute at @a if entity @a[x=-576,y=75,z=-672,dx=0,dz=0] unless entity @a[tag=WaitMusic] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.8
execute at @a if entity @a[x=-576,y=75,z=-672,dx=0,dz=0] unless entity @a[tag=WaitMusic] run tag @a add WaitMusic

execute at @a if entity @a[x=-572,y=75,z=-684,dx=0,dz=0] unless entity @a[tag=WaitMusic] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.8
execute at @a if entity @a[x=-572,y=75,z=-684,dx=0,dz=0] unless entity @a[tag=WaitMusic] run tag @a add WaitMusic

execute at @a if entity @a[x=-559,y=75,z=-688,dx=0,dz=0] unless entity @a[tag=WaitMusic] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.8
execute at @a if entity @a[x=-559,y=75,z=-688,dx=0,dz=0] unless entity @a[tag=WaitMusic] run tag @a add WaitMusic

execute at @a if entity @a[x=-559,y=75,z=-704,dx=0,dz=0] unless entity @a[tag=WaitMusic] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.8
execute at @a if entity @a[x=-559,y=75,z=-704,dx=0,dz=0] unless entity @a[tag=WaitMusic] run tag @a add WaitMusic

execute at @a if entity @a[x=-563,y=75,z=-716,dx=0,dz=0] unless entity @a[tag=WaitMusic] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.8
execute at @a if entity @a[x=-563,y=75,z=-716,dx=0,dz=0] unless entity @a[tag=WaitMusic] run tag @a add WaitMusic

execute at @a if entity @a[x=-575,y=75,z=-720,dx=0,dz=0] unless entity @a[tag=WaitMusic] run playsound minecraft:block.note_block.flute music @a ~ ~ ~ 1 1.8
execute at @a if entity @a[x=-575,y=75,z=-720,dx=0,dz=0] unless entity @a[tag=WaitMusic] run tag @a add WaitMusic

execute at @a unless entity @a[x=-575,y=75,z=-720,dx=0,dz=0] unless entity @a[x=-563,y=75,z=-716,dx=0,dz=0] unless entity @a[x=-559,y=75,z=-704,dx=0,dz=0] unless entity @a[x=-559,y=75,z=-688,dx=0,dz=0] unless entity @a[x=-572,y=75,z=-684,dx=0,dz=0] unless entity @a[x=-588,y=75,z=-668,dx=0,dz=0] unless entity @a[x=-576,y=75,z=-672,dx=0,dz=0] run tag @a remove WaitMusic

#Particles
execute at @a unless entity @a[tag=StopParticles] run particle minecraft:end_rod ~ ~ ~ 10 10 10 .05 1 force

#Mido
execute if entity @a[x=-545,y=65,z=-630,dx=2,dz=4,tag=NoSwordShield] run function ocarina_of_time:moving_things/kokiri_forest/mido

#Obtain Sword and Shield
execute if entity @a[tag=NoSwordShield] if entity @a[nbt={Inventory:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:shield",Count:1b}]}] run function ocarina_of_time:moving_things/kokiri_forest/sword_shield

#Rock
execute if entity @a[x=-596,y=69,z=-589,dx=16,dy=3,dz=14] run function ocarina_of_time:moving_things/kokiri_forest/rock
execute unless entity @a[x=-596,y=69,z=-589,dx=16,dy=3,dz=14] run kill @e[type=armor_stand,tag=Rock1]

#Hopping Stones
execute as @e[type=area_effect_cloud,tag=HoppingStones] unless entity @a[tag=Adult] if entity @a[x=-575,y=66,z=-634,dx=11,dy=1,dz=3] run function ocarina_of_time:moving_things/kokiri_forest/hopping_stones
execute as @e[type=area_effect_cloud,tag=HoppingStones] unless entity @a[tag=Adult] unless entity @a[x=-575,y=66,z=-634,dx=11,dy=1,dz=3] unless entity @s[tag=0] run tag @s remove 1
execute as @e[type=area_effect_cloud,tag=HoppingStones] unless entity @a[tag=Adult] unless entity @a[x=-575,y=66,z=-634,dx=11,dy=1,dz=3] unless entity @s[tag=0] run tag @s remove 2
execute as @e[type=area_effect_cloud,tag=HoppingStones] unless entity @a[tag=Adult] unless entity @a[x=-575,y=66,z=-634,dx=11,dy=1,dz=3] unless entity @s[tag=0] run tag @s remove 3
execute as @e[type=area_effect_cloud,tag=HoppingStones] unless entity @a[tag=Adult] unless entity @a[x=-575,y=66,z=-634,dx=11,dy=1,dz=3] unless entity @s[tag=0] run tag @s remove Wait

#After Meeting Zelda Text
execute if entity @a[tag=NewForestText] run function ocarina_of_time:moving_things/kokiri_forest/people

#Shop Help
execute unless block -557 51 -634 minecraft:gold_block if entity @a[x=-558,y=53,z=-635,dx=1,dz=0] run tellraw @a ["",{"text":"Most items in shops require "},{"text":"Green Rupees","color":"green"},{"text":" or "},{"text":"Blue Rupees","color":"blue"},{"text":" to buy, so be sure to convert your other rupees to those! To convert the rupees you get, right-click the "},{"text":"tiny chest","color":"red"},{"text":" in any of the shops. Keep an eye out for them if you need to "},{"text":"convert rupees","color":"red"},{"text":"!"}]
execute unless block -557 51 -634 minecraft:gold_block if entity @a[x=-558,y=53,z=-635,dx=1,dz=0] run fill -557 51 -634 -557 51 -634 minecraft:gold_block

#Music
execute if entity @a[tag=!InLostWoods,scores={time=23600}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/kokiri_forest
execute if entity @a[tag=InLostWoods,scores={time=23600}] unless entity @a[tag=Indoors] run function ocarina_of_time:music/lost_woods
execute if entity @a[scores={time=23600}] unless entity @a[tag=Indoors] run time add 5
execute if entity @a[scores={time=13001..23000}] run stopsound @a music minecraft:kokiri_forest

#Enemies
function ocarina_of_time:moving_things/kokiri_forest/enemies/enemies

#Skull Kid
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] as @e[type=armor_stand,tag=SkullKid1,tag=Prize] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"Let's play again sometime!"}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] unless entity @e[type=armor_stand,tag=SkullKid1,tag=Prize] run tellraw @a ["",{"text":"You got a "},{"text":"Piece of Heart","color":"red"},{"text":"!"}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] unless entity @e[type=armor_stand,tag=SkullKid1,tag=Prize] run give @a minecraft:golden_carrot{display:{Name:"{\"text\":\"Heart Piece\"}"},InventoryItem:1b,HeartPiece:1b} 1
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] as @e[type=armor_stand,tag=SkullKid1] unless entity @s[tag=Prize] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"You know "},{"text":"Saria's Song","color":"green"},{"text":"! We should be friends! Here-take this!"}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_cat",Count:1b}]}] as @e[type=armor_stand,tag=SkullKid1] unless entity @s[tag=Prize] run tag @s add Prize
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_blocks",Count:1b}]}] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"That's not quite the song that "},{"text":"Saria ","color":"green"},{"text":"plays..."}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_mall",Count:1b}]}] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"That's not quite the song that "},{"text":"Saria ","color":"green"},{"text":"plays..."}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"That's not quite the song that "},{"text":"Saria ","color":"green"},{"text":"plays..."}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_wait",Count:1b}]}] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"That's not quite the song that "},{"text":"Saria ","color":"green"},{"text":"plays..."}]

#Skull Kid 1 Text
execute unless entity @a[x=-614,y=77,z=-667,dx=1,dz=1] run tag @e[type=armor_stand,tag=SkullKid1] remove Stoptext
#1
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1,scores={text=1}] unless entity @s[tag=Prize] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] unless entity @s[tag=Stoptext] run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"Is this what happens to kids who get lost in the forest? He might be our friend if we do something...","color":"aqua"}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1,scores={text=1}] unless entity @s[tag=Prize] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] run tag @s add Stoptext
#2
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1,scores={text=1}] if entity @s[tag=Prize] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] unless entity @s[tag=Stoptext] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"Hi! Do you think my face is kind of plain? It's just not very unusual..."}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1,scores={text=1}] if entity @s[tag=Prize] unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{display:{Name:"\"Skull Mask\""}}}]}] run tag @s add Stoptext
#3
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] if entity @s[x=-618,y=78,z=-672,dx=0,dz=0] as @e[type=armor_stand,tag=SkullKid1,scores={text=2}] unless entity @s[tag=Stoptext] run tellraw @a ["",{"text":"Skull Kid: ","color":"gold"},{"text":"My buddies really want this mask! Hee hee hee!"}]
execute if entity @a[x=-614,y=77,z=-667,dx=1,dz=1] as @e[type=armor_stand,tag=SkullKid1,scores={text=2}] run tag @s add Stoptext

#Skull Kid Ocarina
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=SkullKid2] run scoreboard players add @s timer 1
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=SkullKid2,scores={timer=5..}] run scoreboard players set @s timer 0
execute unless entity @a[tag=Adult] if entity @a[x=-568,y=72,z=-661,dx=0,dz=0] if entity @a[nbt={Inventory:[{tag:{OcarinaSaria:1b}}]}] run tag @a add OcarinaMinigame
execute unless entity @a[tag=Adult] if entity @a[x=-568,y=72,z=-661,dx=0,dz=0] if entity @a[nbt={Inventory:[{tag:{OcarinaZelda:1b}}]}] run tag @a add OcarinaMinigame
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=SkullKid2] at @s if entity @a[tag=OcarinaMinigame] run function ocarina_of_time:moving_things/kokiri_forest/ocarina_minigame/skull_ocarina
execute unless entity @a[tag=Adult] as @e[type=armor_stand,tag=SkullKid2] at @s unless entity @a[x=-569,y=70,z=-662,dx=2,dy=3,dz=2] run function ocarina_of_time:moving_things/kokiri_forest/ocarina_minigame/reset

#Deku Scrub Seeds
execute as @e[type=snowball,x=-561,y=75.2,z=-669,dx=0,dy=0,dz=0] at @a run function ocarina_of_time:moving_things/kokiri_forest/seeds_100
execute if entity @e[type=snowball,x=-561,y=74.2,z=-670,dx=0,dy=0,dz=2] at @a run function ocarina_of_time:moving_things/kokiri_forest/seeds_30
execute if entity @e[type=snowball,x=-561,y=75.2,z=-670,dx=0,dy=1,dz=0] at @a run function ocarina_of_time:moving_things/kokiri_forest/seeds_30
execute if entity @e[type=snowball,x=-561,y=75.2,z=-668,dx=0,dy=1,dz=0] at @a run function ocarina_of_time:moving_things/kokiri_forest/seeds_30
execute if entity @e[type=snowball,x=-561,y=76.2,z=-669,dx=0,dz=0] at @a run function ocarina_of_time:moving_things/kokiri_forest/seeds_30
execute if entity @e[type=zombie,tag=DekuScrubSeeds,scores={text=3}] unless block -558 75 -669 minecraft:gold_block run tag @a add SeedUpgrade

#Sacred Meadow Gate
execute if entity @a[x=-575,y=75,z=-733,dx=0,dz=0] unless block -574 77 -741 minecraft:air run tag @a add WolfosGate
execute if entity @a[tag=WolfosGate] unless block -574 77 -741 minecraft:air unless entity @e[type=zombie,tag=Wolfos1] run fill -576 75 -741 -574 77 -741 minecraft:air
execute if entity @a[tag=WolfosGate] unless entity @e[type=zombie,tag=Wolfos1] run tag @a remove WolfosGate

#Adult/Child
execute unless entity @a[x=-574,y=67,z=-704,dx=0,dz=0] unless entity @a[x=-572,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-570,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-568,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-566,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-564,y=66,z=-704,dx=0,dz=0] if entity @a[tag=Adult] run function ocarina_of_time:moving_things/kokiri_forest/adult
execute unless entity @a[x=-574,y=67,z=-704,dx=0,dz=0] unless entity @a[x=-572,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-570,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-568,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-566,y=66,z=-704,dx=0,dz=0] unless entity @a[x=-564,y=66,z=-704,dx=0,dz=0] unless entity @a[tag=Adult] run function ocarina_of_time:moving_things/kokiri_forest/child

#Loot Tables
#Rocks
fill -587 64 -629 -583 64 -633 minecraft:grass_block replace minecraft:dirt
fill -564 64 -618 -564 64 -618 minecraft:grass_block replace minecraft:dirt
fill -553 64 -602 -553 64 -602 minecraft:grass_block replace minecraft:dirt
fill -585 64 -631 -585 64 -631 minecraft:grass_block replace minecraft:dirt
fill -610 68 -618 -610 68 -618 minecraft:grass_block replace minecraft:dirt
fill -597 68 -598 -597 68 -600 minecraft:grass_block replace minecraft:dirt
fill -585 68 -600 -585 68 -600 minecraft:grass_block replace minecraft:dirt
fill -598 64 -636 -598 64 -636 minecraft:grass_block replace minecraft:dirt

#Regen Bushes
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -590 69 -579 -590 69 -579 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -596 69 -587 -596 69 -587 minecraft:fern
execute as @e[type=area_effect_cloud,tag=LootTable,scores={timer=100}] run fill -582 70 -575 -582 70 -575 minecraft:fern

#Pots
execute as @e[type=area_effect_cloud,tag=Pots] run function ocarina_of_time:moving_things/kokiri_forest/pots

#Navi
execute if entity @a[tag=Adult,x=-576,y=76,z=-740,dx=2,dz=0] unless block -570 72 -740 minecraft:gold_block run tellraw @a ["",{"text":"Navi: ","color":"gold"},{"text":"From here on, we'll be going through some narrow passages! If you take it slow, maybe you can sneak up on some enemies. Use ","color":"aqua"},{"text":"F5 "},{"text":"to always look in the third person. Set you view so you can see down the next corridor before you turn a corner. Once your view is set, hold down ","color":"aqua"},{"text":"A"},{"text":" or ","color":"aqua"},{"text":"D"},{"text":" to ","color":"aqua"},{"text":"sidestep "},{"text":"around the corner. That way you won't be surprised by an enemy waiting in ambush.","color":"aqua"}]
execute if entity @a[tag=Adult,x=-576,y=76,z=-740,dx=2,dz=0] run fill -570 72 -740 -570 72 -740 minecraft:gold_block

#Poultice
execute if entity @a[tag=DeliverPoultice] run fill -618 72 -676 -618 72 -676 minecraft:gold_block
#Saw
execute if entity @a[tag=Saw] run fill -618 72 -678 -618 72 -678 minecraft:gold_block

#Forest Stage
execute as @e[type=armor_stand,tag=LeaderScrub] at @s run function ocarina_of_time:moving_things/kokiri_forest/forest_stage
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless block -603 47 -698 minecraft:gold_block if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{SecretMask:1b}}]}] run tellraw @a ["",{"text":"To you, who have entered the grail, there are "},{"text":"many powers","color":"yellow"},{"text":" given to those who hold the "},{"text":"sacred heads","color":"red"},{"text":". Be warned, these powers can tear the fabric of this very "},{"text":"world ","color":"red"},{"text":"leaving it "},{"text":"irrepairable","color":"red"},{"text":". Proceed wisely and use what you gain with care."}]
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] unless block -603 47 -698 minecraft:gold_block if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{SecretMask:1b}}]}] run fill -603 47 -698 -603 47 -698 minecraft:gold_block
execute if entity @a[x=-599,y=58,z=-698,dx=2,dz=2] if entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:player_head",tag:{SecretMask:1b}}]}] run tp @a -603 43 -698
execute if entity @a[x=-592,y=43,z=-698,dx=0,dz=0] run tp @a -595 58 -697
execute if block -610 44 -697 minecraft:stone_button[powered=true] as @e[type=area_effect_cloud,tag=Secrets] run function ocarina_of_time:moving_things/kokiri_forest/secrets
execute if block -610 44 -699 minecraft:stone_button[powered=true] as @e[type=area_effect_cloud,tag=Secrets] run tellraw @a ["",{"text":"Total secrets found: "},{"score":{"name":"@s","objective":"timer"},"color":"red"}]
execute if block -610 44 -699 minecraft:stone_button[powered=true] run fill -610 44 -699 -610 44 -699 minecraft:stone_button[facing=east]

#Running Man
execute as @e[type=armor_stand,tag=RunningMan3] at @s run function ocarina_of_time:moving_things/kokiri_forest/running_man

#Scarecrow Spot
execute if entity @a[tag=Adult] positioned -578 75 -745 if entity @a[distance=..10] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand -578 80 -746 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute if entity @a[tag=Adult] positioned -578 75 -745 if entity @a[distance=..10] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute if entity @a[tag=Adult] positioned -578 75 -745 if entity @a[distance=..10] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_pigstep",Count:1b}]}] unless entity @e[type=armor_stand,tag=ScarecrowSpot] run summon minecraft:armor_stand -578 77.8 -746 {Tags:["ScarecrowSpot"],Rotation:[0f],Marker:1b,NoGravity:1b,Pose:{RightArm:[0f,0f,90f],LeftArm:[0f,0f,-90f],RightLeg:[0f,1f,-10f],LeftLeg:[0f,0f,10f]},HandItems:[{id:stone,Count:1b,tag:{CustomModelData:20}},{id:stone,Count:1b,tag:{CustomModelData:20}}],ArmorItems:[{},{id:leather_leggings,Count:1b,tag:{display:{color:16564789}}},{id:leather_chestplate,Count:1b,tag:{display:{color:3949738}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-299608853,1033719564,-1842787982,-1902841870],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjFhMzk2ZjhmNzVmYmNmN2JmZTZjNTZmNmZmMTEzODcxM2Y5NTliODNkOTQ2YmRhYTdjNTUyYzU2ZmFiMWZlMCJ9fX0="}]}}}}]}

#Big Fairies
execute positioned -552 75 -684 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run summon minecraft:armor_stand -552 75 -684 {Tags:["GreenNavi"],Small:1b,Marker:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-102214788,162220947,-1666754575,1836136248],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTljNTE1NDVkNTQ5NDczZWNjYWE2NzdiZTc3ZmM4OTNjZmEwNWVjMWYwM2I4NWMyZWJjMjM0MmM0YTlmOTdjMyJ9fX0="}]}}}}]}
execute positioned -552 75 -684 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] unless entity @a[tag=GreenNaviSpot] run tag @a add GreenNaviSpot
execute positioned -552 75 -684 if entity @a[distance=..5] unless entity @e[type=area_effect_cloud,tag=BigFairy,distance=..1] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run function ocarina_of_time:items/big_fairy/summon

#Kill Green Navi
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] positioned -552 75 -684 unless entity @a[distance=..5] positioned -578 75 -745 unless entity @a[distance=..10] run kill @e[type=armor_stand,tag=GreenNavi]
execute if entity @a[tag=Adult] if entity @a[tag=GreenNaviSpot] positioned -552 75 -684 unless entity @a[distance=..5] positioned -578 75 -745 unless entity @a[distance=..10] run tag @a remove GreenNaviSpot

#Deku Stick Upgrade
execute unless block -629 62 -609 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{DekuStickUpgrade:1b}}]}] as @e[type=area_effect_cloud,tag=Progress] run function ocarina_of_time:moving_things/kokiri_forest/deku_stick_upgrade
#Deku Nut Upgrade
execute unless block -580 47 -711 minecraft:gold_block if entity @a[nbt={Inventory:[{tag:{DekuNutUpgrade:1b}}]}] as @e[type=area_effect_cloud,tag=Progress] run function ocarina_of_time:moving_things/kokiri_forest/deku_nut_upgrade

#Grottos
execute if entity @a[x=-597,y=76,z=-652,dx=5,dz=4] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill -595 74 -650 -595 74 -650 minecraft:air
execute if entity @a[x=-569,y=84,z=-818,dx=4,dz=4] if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_stal",Count:1b}]}] run fill -566 82 -815 -566 82 -815 minecraft:air
execute if entity @a[tag=ShardAgony,x=-597,y=76,z=-652,dx=5,dz=4] run tag @a add ShardAgonyStart
execute if entity @a[tag=ShardAgony,x=-569,y=84,z=-818,dx=4,dz=4] run tag @a add ShardAgonyStart
execute if entity @a[tag=ShardAgony,x=-577,y=75,z=-738,dx=4,dz=4] run tag @a add ShardAgonyStart
execute if entity @a[tag=ShardAgony] unless entity @a[x=-577,y=75,z=-738,dx=4,dz=4] unless entity @a[x=-569,y=84,z=-818,dx=4,dz=4] unless entity @a[x=-597,y=76,z=-652,dx=5,dz=4] run tag @a remove ShardAgonyStart
