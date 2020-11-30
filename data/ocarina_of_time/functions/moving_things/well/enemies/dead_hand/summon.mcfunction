#Health
summon minecraft:zombie 27 52 1363 {Tags:["DeadHand","DeadHandHealth","Invisible"],Silent:1b,NoGravity:1b,HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/floormaster",Health:50,Attributes:[{Name:"generic.max_health",Base:50},{Name:"generic.attack_damage",Base:1}]}

#Dead Hand
summon minecraft:armor_stand 27 52 1363 {Tags:["DeadHand","DeadHand1"],ShowArms:1b,Rotation:[90f],Invisible:1b,NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:30}}],HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:29}}],Pose:{LeftArm:[0f,0f,0f],Head:[-90f,0f,0f]}}

#Hands
summon minecraft:wither_skeleton 30 59 1358 {Tags:["DeadHand","Hand","Hand1","Invisible","Resist"],Rotation:[90f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/keese",Silent:1,NoAI:1b,HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:27}}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Health:30,Attributes:[{Name:"generic.max_health",Base:30}]}
summon minecraft:wither_skeleton 20 59 1358 {Tags:["DeadHand","Hand","Hand2","Invisible","Resist"],Rotation:[0f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/keese",Silent:1,NoAI:1b,HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:27}}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Health:30,Attributes:[{Name:"generic.max_health",Base:30}]}
summon minecraft:wither_skeleton 20 59 1368 {Tags:["DeadHand","Hand","Hand3","Invisible","Resist"],Rotation:[90f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/keese",Silent:1,NoAI:1b,HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:27}}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Health:30,Attributes:[{Name:"generic.max_health",Base:30}]}
summon minecraft:wither_skeleton 30 59 1368 {Tags:["DeadHand","Hand","Hand4","Invisible","Resist"],Rotation:[0f],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/keese",Silent:1,NoAI:1b,HandItems:[{},{id:cobblestone,Count:1b,tag:{CustomModelData:27}}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f],Health:30,Attributes:[{Name:"generic.max_health",Base:30}]}

fill 13 59 1363 13 59 1363 minecraft:stone_pressure_plate
fill 33 56 1362 33 56 1362 minecraft:gold_block
