#Main Room
fill 1079 36 3050 1048 56 3017 minecraft:water replace minecraft:air
fill 1062 56 3025 1064 55 3027 minecraft:red_terracotta
fill 1064 37 3025 1062 47 3027 minecraft:water replace minecraft:red_terracotta
fill 1077 55 3035 1079 56 3033 minecraft:red_terracotta
fill 1079 47 3033 1077 36 3035 minecraft:water replace minecraft:red_terracotta
fill 1064 55 3032 1062 56 3030 minecraft:red_terracotta
fill 1062 36 3030 1064 47 3032 minecraft:water replace minecraft:red_terracotta

#West Room
fill 1038 38 3024 1048 36 3035 minecraft:water replace minecraft:air
fill 1037 36 3030 1019 56 3020 minecraft:water replace minecraft:air
fill 1037 36 3030 1019 56 3020 minecraft:water replace minecraft:air

fill 1047 48 3033 1026 54 3048 minecraft:water replace minecraft:air
fill 1029 48 3046 1028 48 3048 minecraft:granite_wall[waterlogged=true]

fill 1064 48 3017 1038 53 3005 minecraft:water replace minecraft:air
fill 1043 56 3026 1041 48 3018 minecraft:water replace minecraft:air
fill 1064 48 3014 1062 48 3014 minecraft:iron_bars[east=true,west=true,waterlogged=true]

#North Room
fill 1062 36 3016 1073 38 3006 minecraft:water replace minecraft:air

#South Room
fill 1064 36 3051 1062 38 3053 minecraft:water

#East Room
fill 1080 39 3035 1087 36 3033 minecraft:water replace minecraft:air

#Enemies
execute as @e[type=zombie,tag=Tektite7] at @s run tp @s ~ 57 ~
execute as @e[type=zombie,tag=Tektite8] at @s run tp @s ~ 57 ~

#Pots
fill 1032 36 3028 1032 36 3028 minecraft:water
fill 1032 36 3022 1032 36 3022 minecraft:water
fill 1041 48 3005 1041 48 3005 minecraft:water
fill 1043 48 3005 1043 48 3005 minecraft:water

#Chests
execute if block 1023 48 3025 minecraft:chest run clone 1023 48 3025 1023 48 3025 1016 48 3025 replace move
execute if block 1016 36 3027 minecraft:gold_block if block 1024 36 3025 minecraft:chest run clone 1024 36 3025 1024 36 3025 1016 36 3025 replace move
execute if block 1042 48 3008 minecraft:chest run clone 1042 48 3008 1042 48 3008 1042 48 3002 replace move

#Stingers
#1
execute unless entity @e[type=zombie,tag=Stinger7] run summon minecraft:zombie 1034 50 3047 {Tags:["Stinger7","OtherStinger","Water","Invisible"],Rotation:[-90f,-90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:fire_coral_fan,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,NoAI:1b,Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f]}
#2
execute unless entity @e[type=zombie,tag=Stinger8] run summon minecraft:zombie 1032 51 3048 {Tags:["Stinger8","OtherStinger","Water","Invisible"],Rotation:[-90f,-90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:fire_coral_fan,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,NoAI:1b,Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f]}
#3
execute unless entity @e[type=zombie,tag=Stinger9] run summon minecraft:zombie 1030 49 3046 {Tags:["Stinger9","OtherStinger","Water","Invisible"],Rotation:[-90f,-90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:fire_coral_fan,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,NoAI:1b,Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f]}
#4
execute unless entity @e[type=zombie,tag=Stinger10] run summon minecraft:zombie 1026 52 3048 {Tags:["Stinger10","OtherStinger","Water","Invisible"],Rotation:[-90f,-90f],DeathLootTable:"ocarina_of_time:entities/electric",IsBaby:1b,Health:100f,Attributes:[{Name:generic.movement_speed,Base:0.0}],Silent:1b,PersistenceRequired:1,ArmorItems:[{},{},{},{id:fire_coral_fan,Count:1b,tag:{CustomModelData:1}}],NoGravity:1b,NoAI:1b,Invulnerable:1b,ArmorDropChances:[0f,0f,0f,0f]}

#Boss
clone 1063 47 3055 1065 51 3057 1062 59 3052

#Door
execute unless block 1080 48 3034 minecraft:barrier run fill 1080 48 3034 1080 49 3034 minecraft:air
execute unless block 1080 48 3034 minecraft:barrier run fill 1080 48 3034 1080 48 3034 minecraft:iron_door[half=lower,facing=east]
execute unless block 1080 48 3034 minecraft:barrier run fill 1080 49 3034 1080 49 3034 minecraft:iron_door[half=upper,facing=east]

fill 1043 48 3013 1041 48 3013 minecraft:polished_andesite_slab
