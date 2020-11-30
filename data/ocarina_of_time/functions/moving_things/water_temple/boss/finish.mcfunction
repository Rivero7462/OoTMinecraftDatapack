scoreboard players add @s timer 1
execute if entity @s[scores={timer=1}] run kill @e[tag=Morpha]
execute if entity @s[scores={timer=1}] run fill 1054 63 3082 1073 67 3101 minecraft:air replace minecraft:pink_stained_glass
execute if entity @s[scores={timer=1}] run fill 1054 62 3082 1073 62 3101 minecraft:water replace minecraft:pink_stained_glass
execute if entity @s[scores={timer=1}] run stopsound @a hostile
execute if entity @s[scores={timer=1}] run function ocarina_of_time:music/water_temple
execute if entity @s[scores={timer=1}] run fill 1064 72 3092 1062 56 3092 minecraft:pink_stained_glass
execute if entity @s[scores={timer=1}] run fill 1063 56 3091 1063 72 3093 minecraft:pink_stained_glass
execute if entity @s[scores={timer=1}] run tp @a 1064 64 3080 0 0
execute if entity @s[scores={timer=1}] run fill 1064 65 3081 1064 65 3081 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1065 65 3080 1065 65 3080 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1064 65 3079 1064 65 3079 minecraft:barrier
execute if entity @s[scores={timer=1}] run fill 1063 65 3080 1063 65 3080 minecraft:barrier

execute if entity @s[scores={timer=30}] run fill 1073 62 3101 1054 62 3082 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=30}] run fill 1068 62 3085 1059 62 3085 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=30}] run fill 1068 62 3093 1059 62 3093 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=30}] run fill 1062 62 3087 1062 62 3096 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=30}] run fill 1070 62 3096 1070 62 3087 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=30}] run fill 1068 62 3090 1059 62 3090 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=30}] run fill 1059 62 3098 1068 62 3098 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=30}] run fill 1065 62 3096 1065 62 3087 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=30}] run fill 1057 62 3087 1057 62 3096 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]

execute if entity @s[scores={timer=50}] run fill 1073 61 3101 1054 61 3082 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=50}] run fill 1068 61 3085 1059 61 3085 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=50}] run fill 1068 61 3093 1059 61 3093 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=50}] run fill 1062 61 3087 1061 61 3096 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=50}] run fill 1070 61 3096 1070 61 3087 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=50}] run fill 1068 61 3090 1059 61 3090 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=50}] run fill 1059 61 3098 1068 61 3098 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=50}] run fill 1065 61 3096 1065 61 3087 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=50}] run fill 1057 61 3087 1057 61 3096 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]

execute if entity @s[scores={timer=70}] run fill 1073 60 3101 1054 60 3082 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=70}] run fill 1068 60 3085 1059 60 3085 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=70}] run fill 1068 60 3093 1059 60 3093 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=70}] run fill 1062 60 3087 1061 60 3096 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=70}] run fill 1070 60 3096 1070 60 3087 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=70}] run fill 1068 60 3090 1059 60 3090 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=70}] run fill 1059 60 3098 1068 60 3098 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=70}] run fill 1065 60 3096 1065 60 3087 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=70}] run fill 1057 60 3087 1057 60 3096 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]

execute if entity @s[scores={timer=90}] run fill 1073 59 3101 1054 59 3082 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=90}] run fill 1068 59 3085 1059 59 3085 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=90}] run fill 1068 59 3093 1059 59 3093 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=90}] run fill 1062 59 3087 1061 59 3096 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=90}] run fill 1070 59 3096 1070 59 3087 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=90}] run fill 1068 59 3090 1059 59 3090 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=90}] run fill 1059 59 3098 1068 59 3098 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=90}] run fill 1065 59 3096 1065 59 3087 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=90}] run fill 1057 59 3087 1057 59 3096 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]

execute if entity @s[scores={timer=110}] run fill 1073 58 3101 1054 58 3082 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=110}] run fill 1068 58 3085 1059 58 3085 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=110}] run fill 1068 58 3093 1059 58 3093 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=110}] run fill 1062 58 3087 1061 58 3096 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=110}] run fill 1070 58 3096 1070 58 3087 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=110}] run fill 1068 58 3090 1059 58 3090 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=110}] run fill 1059 58 3098 1068 58 3098 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=110}] run fill 1065 58 3096 1065 58 3087 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=110}] run fill 1057 58 3087 1057 58 3096 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]

execute if entity @s[scores={timer=130}] run fill 1073 57 3101 1054 57 3082 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=130}] run fill 1068 57 3085 1059 57 3085 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=130}] run fill 1068 57 3093 1059 57 3093 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=130}] run fill 1062 57 3087 1061 57 3096 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=130}] run fill 1070 57 3096 1070 57 3087 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=130}] run fill 1068 57 3090 1059 57 3090 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=130}] run fill 1059 57 3098 1068 57 3098 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=130}] run fill 1065 57 3096 1065 57 3087 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=130}] run fill 1057 57 3087 1057 57 3096 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]

execute if entity @s[scores={timer=150}] run fill 1073 56 3101 1054 56 3082 minecraft:air replace minecraft:water
execute if entity @s[scores={timer=150}] run fill 1068 56 3085 1059 56 3085 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=150}] run fill 1068 56 3093 1059 56 3093 minecraft:ladder[waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=150}] run fill 1062 56 3087 1061 56 3096 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=150}] run fill 1070 56 3096 1070 56 3087 minecraft:ladder[facing=east,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=150}] run fill 1068 56 3090 1059 56 3090 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=150}] run fill 1059 56 3098 1068 56 3098 minecraft:ladder[facing=south,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=150}] run fill 1065 56 3096 1065 56 3087 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]
execute if entity @s[scores={timer=150}] run fill 1057 56 3087 1057 56 3096 minecraft:ladder[facing=west,waterlogged=false] replace minecraft:ladder[waterlogged=true]

execute if entity @s[scores={timer=170}] run fill 1062 56 3093 1064 56 3091 minecraft:air
execute if entity @s[scores={timer=180}] run fill 1062 57 3093 1064 57 3091 minecraft:air
execute if entity @s[scores={timer=190}] run fill 1062 58 3093 1064 58 3091 minecraft:air
execute if entity @s[scores={timer=200}] run fill 1062 59 3093 1064 59 3091 minecraft:air
execute if entity @s[scores={timer=210}] run fill 1062 60 3093 1064 60 3091 minecraft:air
execute if entity @s[scores={timer=220}] run fill 1062 61 3093 1064 61 3091 minecraft:air
execute if entity @s[scores={timer=230}] run fill 1062 62 3093 1064 62 3091 minecraft:air
execute if entity @s[scores={timer=240}] run fill 1062 63 3093 1064 63 3091 minecraft:air
execute if entity @s[scores={timer=250}] run fill 1062 64 3093 1064 64 3091 minecraft:air
execute if entity @s[scores={timer=260}] run fill 1062 65 3093 1064 65 3091 minecraft:air
execute if entity @s[scores={timer=270}] run fill 1062 66 3093 1064 66 3091 minecraft:air
execute if entity @s[scores={timer=280}] run fill 1062 67 3093 1064 67 3091 minecraft:air
execute if entity @s[scores={timer=290}] run fill 1062 68 3093 1064 68 3091 minecraft:air
execute if entity @s[scores={timer=300}] run fill 1062 69 3093 1064 69 3091 minecraft:air
execute if entity @s[scores={timer=310}] run fill 1062 70 3093 1064 70 3091 minecraft:air
execute if entity @s[scores={timer=320}] run fill 1062 71 3093 1064 71 3091 minecraft:air
execute if entity @s[scores={timer=330}] run fill 1062 72 3093 1064 72 3091 minecraft:air

execute if entity @s[scores={timer=350}] run summon falling_block 1063 72 3092 {BlockState:{Name:"minecraft:pink_stained_glass"},Time:1}
execute if entity @s[scores={timer=351..400}] run fill 1063 56 3092 1063 56 3092 minecraft:air

execute if entity @s[scores={timer=383}] run particle minecraft:splash 1063 57 3092 .8 .2 .8 1 50
execute if entity @s[scores={timer=383}] at @a run playsound minecraft:item.bottle.empty hostile @a ~ ~ ~ 1 1

execute if entity @s[scores={timer=400..}] run fill 1064 55 3092 1062 55 3092 minecraft:light_blue_concrete
execute if entity @s[scores={timer=400..}] run fill 1063 55 3091 1063 55 3093 minecraft:light_blue_concrete
execute if entity @s[scores={timer=400..}] run clone 1063 51 3089 1063 51 3089 1064 56 3088
execute if entity @s[scores={timer=400..}] run fill 1063 65 3079 1065 65 3081 minecraft:air
execute if entity @s[scores={timer=400..}] run fill 1062 52 3092 1062 52 3092 minecraft:gold_block
execute if entity @s[scores={timer=400..}] run tag @a add WaterMedallion
execute if entity @s[scores={timer=400..}] run tag @a remove Boss
execute if entity @s[scores={timer=400..}] run kill @s
