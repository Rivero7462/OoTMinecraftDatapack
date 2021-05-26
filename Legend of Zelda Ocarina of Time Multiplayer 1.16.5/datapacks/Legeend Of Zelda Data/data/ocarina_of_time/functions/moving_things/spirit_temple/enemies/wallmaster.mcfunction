#1
execute if entity @s[tag=Wallmaster6] if entity @a[x=-55,y=88,z=837,dx=15,dy=1,dz=9] run tag @s[tag=Wallmaster6] add Attack
execute if entity @s[tag=Wallmaster6] unless entity @s[scores={timer=181..201}] unless entity @a[x=-55,y=88,z=837,dx=15,dy=1,dz=9] run tag @s remove Attack
execute if entity @s[tag=Wallmaster6] unless entity @s[tag=Attack] run tp @s -45 96 843
execute if entity @s[tag=Wallmaster6,scores={timer=201..}] run tp @a -27 105 865
#2
execute if entity @s[tag=Wallmaster7] if entity @a[x=-5,y=100,z=846,dx=18,dz=17] run tag @s[tag=Wallmaster7] add Attack
execute if entity @s[tag=Wallmaster7] unless entity @s[scores={timer=181..201}] unless entity @a[x=-5,y=100,z=846,dx=18,dz=17] run tag @s remove Attack
execute if entity @s[tag=Wallmaster7] unless entity @s[tag=Attack] run tp @s 4 111 855
execute if entity @s[tag=Wallmaster7,scores={timer=201..}] run tp @a -27 105 865
