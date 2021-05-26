#Wolfos
#1
execute unless entity @e[type=zombie,tag=Wolfos2] run summon minecraft:zombie 897 54 -1108 {Tags:["Wolfos2","Wolfos","Invisible","Right","Resist"],DeathLootTable:"ocarina_of_time:entities/wolfos",Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:horn_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoGravity:1b}
#2
execute unless entity @e[type=zombie,tag=Wolfos3] run summon minecraft:zombie 899 54 -1108 {Tags:["Wolfos3","Wolfos","Invisible","Left","Resist"],DeathLootTable:"ocarina_of_time:entities/wolfos",Health:20f,Attributes:[{Name:generic.max_health,Base:20},{Name:"generic.movement_speed",Base:0},{Name:"generic.attack_damage",Base:1}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:horn_coral,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f],NoGravity:1b}

#Skulltula
#1
execute unless entity @e[type=zombie,tag=Skulltula1] run summon minecraft:zombie 898 60.5 -1126 {PersistenceRequired:1b,Tags:["Skulltula1","Skulltula","Invisible"],Rotation:[0f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=Skulltula2] run summon minecraft:zombie 868 59 -1155 {PersistenceRequired:1b,Tags:["Skulltula2","Skulltula","Invisible"],Rotation:[-90f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#3
execute unless entity @e[type=zombie,tag=Skulltula3] run summon minecraft:zombie 945.0 69 -1190.0 {PersistenceRequired:1b,Tags:["Skulltula3","Skulltula","Invisible"],Rotation:[180f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#4
execute unless entity @e[type=zombie,tag=Skulltula4] run summon minecraft:zombie 951.0 69 -1184.0 {PersistenceRequired:1b,Tags:["Skulltula4","Skulltula","Invisible"],Rotation:[180f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#5
execute unless entity @e[type=zombie,tag=Skulltula5] run summon minecraft:zombie 947.0 69 -1174.0 {PersistenceRequired:1b,Tags:["Skulltula5","Skulltula","Invisible"],Rotation:[180f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#6
execute unless entity @e[type=zombie,tag=Skulltula6] run summon minecraft:zombie 929 61 -1155 {PersistenceRequired:1b,Tags:["Skulltula6","Skulltula","Invisible"],Rotation:[-90],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#7
execute unless entity @e[type=zombie,tag=Skulltula7] run summon minecraft:zombie 885 22 -1142 {PersistenceRequired:1b,Tags:["Skulltula7","Skulltula","Invisible"],Rotation:[-135],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}

#Blue Bubble
#1
fill 898 57 -1189 898 57 -1189 minecraft:air
#2
fill 856 55 -1155 856 55 -1155 minecraft:air
#3
summon minecraft:zombie 843 86 -1155 {Tags:["BlueBubble3","BlueBubble","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[0f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#4
summon minecraft:zombie 855 86 -1155 {Tags:["BlueBubble4","BlueBubble","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[0f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#5
execute unless block 894 65 -1188 minecraft:gold_block run fill 894 65 -1190 894 65 -1190 minecraft:air
#6 and 7
execute unless block 850 56 -1200 minecraft:gold_block run fill 849 56 -1200 849 56 -1200 minecraft:air

#Green Bubble
#1
execute unless entity @e[type=zombie,tag=GreenBubble1] run summon minecraft:zombie 946 84.5 -1181 {Tags:["GreenBubble1","GreenBubble","North","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[180f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
scoreboard players set @e[type=zombie,tag=GreenBubble1] lifetime 40
#2
execute unless entity @e[type=zombie,tag=GreenBubble2] run summon minecraft:zombie 946 84.5 -1174 {Tags:["GreenBubble2","GreenBubble","North","Invisible"],IsBaby:1b,PersistenceRequired:1b,Rotation:[180f],NoGravity:1b,ArmorItems:[{},{},{},{id:bubble_coral_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}

#Lunging Deku Baba
#1
execute unless entity @e[type=zombie,tag=LungeBaba10] run summon minecraft:zombie 856 59 -1179 {Tags:["LungeBaba10","LungeBaba","Invisible"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/lunge_deku_baba",Health:6,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:110}}],ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=LungeBaba11] run summon minecraft:zombie 870 52 -1181 {Tags:["LungeBaba11","LungeBaba","Invisible"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/lunge_deku_baba",Health:6,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:110}}],ArmorDropChances:[0f,0f,0f,0f]}

#Octorok
#1
execute unless entity @e[type=zombie,tag=Octorok1] run summon minecraft:zombie 860 46 -1180 {Tags:["Octorok1","Octorok","Water","SpecialOctorok","Invisible","Fire"],DeathLootTable:"ocarina_of_time:entities/octorok",Health:0.1f,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:tube_coral,Count:1b,tag:{CustomModelData:1}}],Invulnerable:1b,NoGravity:1b,ArmorDropChances:[0f,0f,0f,0f],NoAI:1b}

#Wall Skulltula
#1
execute unless entity @e[type=zombie,tag=WallSkull8] run summon minecraft:zombie 885 57 -1189 {Tags:["WallSkull8","WallSkull","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:red_mushroom_block,Count:1b}],Invulnerable:1b,PersistenceRequired:1b,Health:7,Silent:1,IsBaby:1b,DeathLootTable:"ocarina_of_time:entities/wall_skulltula",ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/wall_skulltula"}
#2
execute unless entity @e[type=zombie,tag=WallSkull9] run summon minecraft:zombie 885 62 -1188 {Tags:["WallSkull9","WallSkull","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:red_mushroom_block,Count:1b}],Invulnerable:1b,PersistenceRequired:1b,Health:7,Silent:1,IsBaby:1b,DeathLootTable:"ocarina_of_time:entities/wall_skulltula",ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/wall_skulltula"}
#3
execute unless entity @e[type=zombie,tag=WallSkull10] run summon minecraft:zombie 885 65 -1190 {Tags:["WallSkull10","WallSkull","Invisible"],Rotation:[0f],NoAI:1b,ArmorItems:[{},{},{},{id:red_mushroom_block,Count:1b}],Invulnerable:1b,PersistenceRequired:1b,Health:7,Silent:1,IsBaby:1b,DeathLootTable:"ocarina_of_time:entities/wall_skulltula",ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"ocarina_of_time:entities/wall_skulltula"}

#Wallmaster
#1
execute unless entity @e[type=zombie,tag=Wallmaster1] run summon minecraft:zombie 849 94 -1200 {Tags:["Wallmaster1","Wallmaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=Wallmaster2] run summon minecraft:zombie 946 96 -1200 {Tags:["Wallmaster2","Wallmaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}

#Floor Master
#1
execute unless block 844 57 -1171 minecraft:gold_block run fill 844 57 -1170 844 57 -1170 minecraft:air

#Red Poe Paintings
execute unless block 881 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=RedPainting1] run summon minecraft:armor_stand 874.95 77 -1199 {Tags:["RedPainting1","RedPainting"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:peony,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Rotation:[-90f]}
execute unless block 881 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=RedPainting2] run summon minecraft:armor_stand 864.05 78 -1202 {Tags:["RedPainting2","RedPainting","Real"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:peony,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Rotation:[-90f]}
execute unless block 881 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=RedPainting3] run summon minecraft:armor_stand 878.95 86 -1202 {Tags:["RedPainting3","RedPainting"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:peony,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,Rotation:[-90f]}
kill @e[tag=Joelle]
execute unless block 881 65 -1202 minecraft:gold_block run fill 881 65 -1202 881 65 -1204 minecraft:air

#Blue Poe Paintings
execute unless block 911 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=BluePainting1] run summon minecraft:armor_stand 919.05 77 -1199 {Tags:["BluePainting1","BluePainting"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:peony,Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,Rotation:[90f]}
execute unless block 911 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=BluePainting2] run summon minecraft:armor_stand 929.95 78 -1202 {Tags:["BluePainting2","BluePainting","Real"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:peony,Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,Rotation:[90f]}
execute unless block 911 65 -1202 minecraft:gold_block unless entity @e[type=armor_stand,tag=BluePainting3] run summon minecraft:armor_stand 915.05 86 -1202 {Tags:["BluePainting3","BluePainting"],Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:peony,Count:1b,tag:{CustomModelData:2}}],NoGravity:1b,Rotation:[90f]}
kill @e[tag=Beth]
execute unless block 911 65 -1202 minecraft:gold_block run fill 911 65 -1202 911 65 -1204 minecraft:air

#Green Poe Reset
function ocarina_of_time:moving_things/forest_temple/enemies/green_painting_reset

#Purple Poe Reset
execute unless block 893 52 -1159 minecraft:redstone_block run tag @a add ResetPurplePoe
