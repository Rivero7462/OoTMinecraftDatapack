#Skulltula
#1
execute unless entity @e[type=zombie,tag=Skulltula9] run summon minecraft:zombie -12 61 1375 {PersistenceRequired:1b,Tags:["Skulltula9","Skulltula","Invisible"],Rotation:[-90f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],ArmorDropChances:[0f,0f,0f,0f],Silent:1}
#2
execute unless entity @e[type=zombie,tag=Skulltula10] run summon minecraft:zombie -2.0 62 1339 {PersistenceRequired:1b,Tags:["Skulltula10","Skulltula","Invisible"],Rotation:[-90f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],ArmorDropChances:[0f,0f,0f,0f],Silent:1}
#3
execute unless entity @e[type=zombie,tag=Skulltula11] run summon minecraft:zombie -31 65 1314 {PersistenceRequired:1b,Tags:["Skulltula11","Skulltula","Invisible"],Rotation:[-90f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],ArmorDropChances:[0f,0f,0f,0f],Silent:1}
#4
execute unless entity @e[type=zombie,tag=Skulltula12] run summon minecraft:zombie 5 61 1363 {PersistenceRequired:1b,Tags:["Skulltula12","Skulltula","Invisible"],Rotation:[90f],ArmorItems:[{},{},{},{id:brown_mushroom_block,Count:1b}],DeathLootTable:"ocarina_of_time:entities/skulltula",Health:6,Attributes:[{Name:"generic.max_health",Base:6},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],ArmorDropChances:[0f,0f,0f,0f],Silent:1}

#Wallmaster
#1
execute unless entity @e[type=zombie,tag=Wallmaster3] run summon minecraft:zombie -12 67 1334 {Tags:["Wallmaster3","Wallmaster","Invisible","Fire"],PersistenceRequired:1b,Rotation:[0f],ArmorItems:[{},{},{},{}],DeathLootTable:"ocarina_of_time:entities/wallmaster",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}

#Redead
#1
execute unless entity @e[type=wither_skeleton,tag=Redead17] run summon minecraft:wither_skeleton -30 36 1339 {Tags:["Redead","Redead17","Invisible"],Rotation:[180f,60f],Silent:1b,NoAI:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:10910235}}},{id:"leather_leggings",Count:1,tag:{display:{color:10910235}}},{id:"leather_chestplate",Count:1,tag:{display:{color:10910235}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Redead\"}",Id:[I;1817635841,-403421629,-1874538214,16471404],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjEwNGViYmYwODhiODExYTA4ZWIyN2VkNjgyMWUzMmIwNzNkZjFiZGFlODIwMTdjYjdkMzkxODZhMjExZDAyZiJ9fX0="}]}}}}],PersistenceRequired:1b,Health:38,Attributes:[{Name:"generic.max_health",Base:38},{Name:"generic.attack_damage",Base:0}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:14}},{id:stone,Count:1b,tag:{CustomModelData:14}}],DeathLootTable:"ocarina_of_time:entities/floormaster",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=wither_skeleton,tag=Redead18] run summon minecraft:wither_skeleton 5 36 1366 {Tags:["Redead","Redead18","Invisible"],Rotation:[180f,60f],Silent:1b,NoAI:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:10910235}}},{id:"leather_leggings",Count:1,tag:{display:{color:10910235}}},{id:"leather_chestplate",Count:1,tag:{display:{color:10910235}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Redead\"}",Id:[I;1817635841,-403421629,-1874538214,16471404],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjEwNGViYmYwODhiODExYTA4ZWIyN2VkNjgyMWUzMmIwNzNkZjFiZGFlODIwMTdjYjdkMzkxODZhMjExZDAyZiJ9fX0="}]}}}}],PersistenceRequired:1b,Health:38,Attributes:[{Name:"generic.max_health",Base:38},{Name:"generic.attack_damage",Base:0}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:14}},{id:stone,Count:1b,tag:{CustomModelData:14}}],DeathLootTable:"ocarina_of_time:entities/floormaster",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

#Keese
#1
fill -5 63 1326 -5 63 1326 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese25] run summon minecraft:bat -5 62 1326 {Tags:["Keese25","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#2
fill 2 62 1325 2 62 1325 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese26] run summon minecraft:bat 2 61 1325 {Tags:["Keese26","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#3
fill 0 63 1320 0 63 1320 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese27] run summon minecraft:bat 0 62 1320 {Tags:["Keese27","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#4
fill -4 61 1320 -4 61 1320 minecraft:barrier
execute unless entity @e[type=bat,tag=Keese28] run summon minecraft:bat -4 60 1320 {Tags:["Keese28","Keese","Hanging"],BatFlags:1b,Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#5
execute unless entity @e[type=bat,tag=Keese35] run summon minecraft:bat 17 62 1324 {Tags:["Keese35","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#6
execute unless entity @e[type=bat,tag=Keese36] run summon minecraft:bat 17 62 1324 {Tags:["Keese36","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}
#7
execute unless entity @e[type=bat,tag=Keese37] run summon minecraft:bat 17 62 1324 {Tags:["Keese37","Keese","Flame"],Health:1,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/keese"}

#Lunge Deku Baba
#1
execute unless entity @e[type=zombie,tag=LungeBaba20] run summon minecraft:zombie -22 57 1323 {Tags:["LungeBaba20","LungeBaba","Invisible"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"ocarina_of_time:entities/lunge_deku_baba",Health:6,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:110}}],ArmorDropChances:[0f,0f,0f,0f]}

#Flying Pots
#1
execute unless entity @e[type=zombie,tag=FlyingPot1] run summon minecraft:zombie -25 59 1320 {Tags:["FlyingPot1","FlyingPot","Invisible","Fire"],NoAI:1b,Health:1,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:flower_pot,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/pot_1",ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=FlyingPot2] run summon minecraft:zombie -22 59 1320 {Tags:["FlyingPot2","FlyingPot","Invisible","Fire"],NoAI:1b,Health:1,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:flower_pot,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/pot_2",ArmorDropChances:[0f,0f,0f,0f]}
#3
execute unless entity @e[type=zombie,tag=FlyingPot3] run summon minecraft:zombie -19 59 1320 {Tags:["FlyingPot3","FlyingPot","Invisible","Fire"],NoAI:1b,Health:1,Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:flower_pot,Count:1b,tag:{CustomModelData:1}}],DeathLootTable:"ocarina_of_time:entities/pot_3",ArmorDropChances:[0f,0f,0f,0f]}

#Gibdo
#1
execute unless entity @e[type=wither_skeleton,tag=Gibdo1] run summon minecraft:wither_skeleton -74 59 1331 {Tags:["Gibdo","Gibdo1","Invisible"],Rotation:[0f,60f],Silent:1b,NoAI:1b,ArmorItems:[{id:"leather_boots",Count:1,tag:{display:{color:15198183}}},{id:"leather_leggings",Count:1,tag:{display:{color:15198183}}},{id:"leather_chestplate",Count:1,tag:{display:{color:15198183}}},{id:"player_head",Count:1,tag:{SkullOwner:{Name:"{\"text\":\"Redead\"}",Id:[I;-475848018,-178109510,-1568674502,-1552720674],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWFlZWNkMGQ0MDg1NDY1NGQ0YjExOGI4OGNiMGI0ODNhZGEwMTk1MDc0MzEyZTIyNGYyMDY0ZGQyMTUxYmNjZiJ9fX0="}]}}}}],PersistenceRequired:1b,Health:38,Attributes:[{Name:"generic.max_health",Base:38},{Name:"generic.attack_damage",Base:0}],HandItems:[{id:stone,Count:1b,tag:{CustomModelData:19}},{id:stone,Count:1b,tag:{CustomModelData:19}}],DeathLootTable:"ocarina_of_time:entities/floormaster",HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

#Beamos
#1
execute unless entity @e[type=zombie,tag=Beamos4] run summon minecraft:zombie 18 59 1324 {Tags:["Beamos4","Beamos","Invisible"],NoAI:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1,DeathLootTable:"ocarina_of_time:entities/beamos",ArmorItems:[{},{},{},{id:emerald_block,Count:1b}],ArmorDropChances:[0f,0f,0f,0f]}

#Like-Like
#1
execute unless entity @e[type=zombie,tag=LikeLike4] run summon minecraft:zombie 16 59 1334 {Tags:["LikeLike4","LikeLike","Invisible"],PersistenceRequired:1b,NoGravity:1b,DeathLootTable:"ocarina_of_time:entities/like_like_1",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:0},{Name:"generic.movement_speed",Base:0.0}],Silent:1,NoAI:1b,ArmorItems:[{},{},{},{id:tube_coral_fan,Count:1b,tag:{CustomModelData:1}}],ArmorDropChances:[0f,0f,0f,0f]}

#Green Bubble
#1
execute unless entity @e[type=zombie,tag=GreenBubble3] run summon minecraft:zombie -32 60 1355 {Tags:["GreenBubble3","GreenBubble","Special1","Invisible"],PersistenceRequired:1b,Rotation:[-90f],NoGravity:1b,ArmorItems:[{},{},{},{id:cobblestone,Count:1b,tag:{CustomModelData:32}}],DeathLootTable:"ocarina_of_time:entities/bubble",Health:12,Attributes:[{Name:"generic.max_health",Base:12},{Name:"generic.attack_damage",Base:1},{Name:"generic.movement_speed",Base:0.0}],Silent:1,ArmorDropChances:[0f,0f,0f,0f]}

#Dead Hand
execute unless block 33 56 1364 minecraft:gold_block run fill 33 56 1362 33 56 1362 minecraft:air
execute unless block 33 56 1364 minecraft:gold_block run kill @e[tag=DeadHand]
