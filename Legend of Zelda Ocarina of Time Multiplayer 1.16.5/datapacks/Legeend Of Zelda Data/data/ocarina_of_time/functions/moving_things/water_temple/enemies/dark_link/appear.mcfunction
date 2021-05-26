data merge entity @s {ArmorItems:[{},{},{},{id:"white_stained_glass_pane",Count:1,tag:{CustomModelData:7}}],HandItems:[{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:9}},{id:"white_stained_glass_pane",Count:1b,tag:{CustomModelData:8}}],Pose:{RightArm:[-30f,-40f,90f],LeftArm:[30f,0f,-20f]}}
tp @s 1134 58 3096

#Tree
#South
execute at @a if entity @a[x=1111,y=66,z=3103,dx=46,dz=13] unless entity @a[y_rotation=50..310] run tp @s 1134 65 3096 0 ~
execute at @a if entity @a[x=1111,y=66,z=3103,dx=46,dz=13] unless entity @a[y_rotation=50..310] run tag @s add Wait
#North
execute at @a if entity @a[x=1111,y=66,z=3069,dx=46,dz=18] if entity @a[y_rotation=135..225] run tp @s 1134 65 3094 180 ~
execute at @a if entity @a[x=1111,y=66,z=3069,dx=46,dz=18] if entity @a[y_rotation=135..225] run tag @s add Wait
#East
execute at @a if entity @a[x=1143,y=66,z=3088,dx=14,dz=14] if entity @a[y_rotation=210..330] run tp @s 1135 65 3095 -90 ~
execute at @a if entity @a[x=1143,y=66,z=3088,dx=14,dz=14] if entity @a[y_rotation=210..330] run tag @s add Wait
#West
execute at @a if entity @a[x=1111,y=66,z=3088,dx=14,dz=14] if entity @a[y_rotation=30..150] run tp @s 1133 65 3095 90 ~
execute at @a if entity @a[x=1111,y=66,z=3088,dx=14,dz=14] if entity @a[y_rotation=30..150] run tag @s add Wait
