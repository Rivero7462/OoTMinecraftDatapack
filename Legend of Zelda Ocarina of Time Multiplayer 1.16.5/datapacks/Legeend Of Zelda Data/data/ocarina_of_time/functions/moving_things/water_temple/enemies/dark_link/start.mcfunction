execute at @a unless entity @e[type=armor_stand,tag=DarkLink] run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["DarkLink"],ShowArms:1b,Invisible:1b,Rotation:[180f],Pose:{RightArm:[90f,60f,0f],LeftArm:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1,tag:{CustomModelData:10}}],HandItems:[{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:12}},{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:11}}],DisabledSlots:4144959}
tag @a add Miniboss
kill @e[type=zombie,tag=LikeLike3]
fill 1135 58 3095 1135 58 3095 minecraft:gold_block
fill 1134 65 3069 1134 65 3069 minecraft:air
