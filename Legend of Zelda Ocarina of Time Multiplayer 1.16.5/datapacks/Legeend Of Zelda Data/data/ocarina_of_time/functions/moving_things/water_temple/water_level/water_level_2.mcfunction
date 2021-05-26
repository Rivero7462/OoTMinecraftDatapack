#Main Room
fill 1079 36 3050 1048 47 3017 minecraft:water replace minecraft:air
fill 1079 48 3050 1048 56 3017 minecraft:air replace minecraft:water
fill 1069 48 3043 1069 48 3043 minecraft:jungle_fence
fill 1062 48 3041 1062 48 3041 minecraft:jungle_fence
fill 1062 46 3027 1064 47 3025 minecraft:red_terracotta
fill 1062 37 3027 1064 37 3025 minecraft:water
fill 1064 56 3025 1062 55 3027 minecraft:air
fill 1077 46 3035 1079 47 3033 minecraft:red_terracotta
fill 1077 36 3033 1079 36 3035 minecraft:water
fill 1079 56 3033 1077 55 3035 minecraft:air
fill 1064 46 3032 1062 47 3030 minecraft:red_terracotta
fill 1064 36 3032 1062 37 3030 minecraft:water
fill 1064 55 3032 1062 56 3030 minecraft:air

#West Room
fill 1038 38 3024 1048 36 3035 minecraft:water replace minecraft:air
fill 1037 36 3030 1019 47 3020 minecraft:water replace minecraft:air
fill 1037 48 3030 1019 56 3020 minecraft:air replace minecraft:water

fill 1047 48 3033 1026 54 3048 minecraft:air replace minecraft:water
fill 1035 53 3046 1035 53 3048 minecraft:granite_wall[waterlogged=false]
fill 1029 48 3046 1028 48 3048 minecraft:granite_wall[waterlogged=false]

fill 1064 48 3017 1038 53 3005 minecraft:air replace minecraft:water
fill 1043 56 3026 1041 48 3018 minecraft:air replace minecraft:water
fill 1064 48 3014 1062 50 3014 minecraft:iron_bars[east=true,west=true,waterlogged=false]

#North Room
fill 1062 36 3016 1073 38 3006 minecraft:water replace minecraft:air

#South Room
fill 1064 36 3051 1062 38 3053 minecraft:water

#East Room
fill 1080 39 3035 1087 36 3033 minecraft:water replace minecraft:air

#Enemies
execute as @e[type=zombie,tag=Tektite7] at @s run tp @s ~ 48 ~
execute as @e[type=zombie,tag=Tektite8] at @s run tp @s ~ 48 ~

#Pots
fill 1032 36 3028 1032 36 3028 minecraft:water
fill 1032 36 3022 1032 36 3022 minecraft:water
execute unless entity @e[type=area_effect_cloud,tag=Pots,tag=Pot6] run fill 1049 48 3033 1049 48 3033 minecraft:flower_pot
execute unless entity @e[type=area_effect_cloud,tag=Pots,tag=Pot7] run fill 1049 48 3035 1049 48 3035 minecraft:flower_pot
execute unless entity @e[type=area_effect_cloud,tag=Pots,tag=Pot18] run fill 1041 48 3005 1041 48 3005 minecraft:flower_pot
execute unless entity @e[type=area_effect_cloud,tag=Pots,tag=Pot19] run fill 1043 48 3005 1043 48 3005 minecraft:flower_pot

#Torch
fill 1069 49 3043 1069 49 3043 minecraft:torch

#Chests
execute if block 1016 48 3025 minecraft:chest run clone 1016 48 3025 1016 48 3025 1023 48 3025 replace move
execute if block 1016 36 3027 minecraft:gold_block if block 1024 36 3025 minecraft:chest run clone 1024 36 3025 1024 36 3025 1016 36 3025 replace move
execute if block 1042 48 3002 minecraft:chest run clone 1042 48 3002 1042 48 3002 1042 48 3008 replace move

#Stingers
kill @e[type=zombie,tag=Stinger7]
kill @e[type=zombie,tag=Stinger8]
kill @e[type=zombie,tag=Stinger9]
kill @e[type=zombie,tag=Stinger10]

#Boss
clone 1063 51 3055 1065 55 3057 1062 59 3052

#Door
execute unless block 1080 48 3034 minecraft:barrier run fill 1080 48 3034 1080 49 3034 minecraft:air
execute unless block 1080 48 3034 minecraft:barrier run fill 1080 48 3034 1080 48 3034 minecraft:acacia_door[half=lower,facing=east]
execute unless block 1080 48 3034 minecraft:barrier run fill 1080 49 3034 1080 49 3034 minecraft:acacia_door[half=upper,facing=east]

fill 1043 48 3013 1041 48 3013 minecraft:polished_andesite_slab

#Lanterns
fill 1054 53 3043 1072 53 3025 minecraft:chain replace minecraft:chain[waterlogged=true]
fill 1054 51 3043 1072 51 3025 minecraft:red_nether_brick_slab[type=top] replace minecraft:red_nether_brick_slab[waterlogged=true]
