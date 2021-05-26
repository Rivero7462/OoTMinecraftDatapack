#Wallmaster
#1
execute if entity @s[tag=Wallmaster8] if entity @a[x=-597,y=21,z=1967,dx=15,dy=1,dz=14] run tag @s[tag=Wallmaster8] add Attack
execute if entity @s[tag=Wallmaster8] unless entity @s[scores={timer=181..201}] unless entity @a[x=-597,y=21,z=1967,dx=15,dy=1,dz=14] run tag @s remove Attack
execute if entity @s[tag=Wallmaster8] unless entity @s[tag=Attack] run tp @s -593 33 1974
execute if entity @s[tag=Wallmaster8,scores={timer=201..}] run tp @a -489 55 1960
#2
execute if entity @s[tag=Wallmaster9] if entity @a[x=-539,y=32,z=2024,dx=15,dz=16] run tag @s[tag=Wallmaster9] add Attack
execute if entity @s[tag=Wallmaster9] unless entity @s[scores={timer=181..201}] unless entity @a[x=-539,y=32,z=2024,dx=15,dz=16] run tag @s remove Attack
execute if entity @s[tag=Wallmaster9] unless entity @s[tag=Attack] run tp @s -532 44 2032
execute if entity @s[tag=Wallmaster9,scores={timer=201..}] run tp @a -489 55 1960
#3
execute if entity @s[tag=Wallmaster10] if entity @a[x=-539,y=32,z=2024,dx=15,dz=16] run tag @s[tag=Wallmaster10] add Attack
execute if entity @s[tag=Wallmaster10] unless entity @s[scores={timer=181..201}] unless entity @a[x=-539,y=32,z=2024,dx=15,dz=16] run tag @s remove Attack
execute if entity @s[tag=Wallmaster10] unless entity @s[tag=Attack] run tp @s -532 44 2032
execute if entity @s[tag=Wallmaster10,scores={timer=201..}] run tp @a -489 55 1960
#4
execute if entity @s[tag=Wallmaster11] if entity @a[x=-539,y=32,z=2024,dx=15,dz=16] run tag @s[tag=Wallmaster11] add Attack
execute if entity @s[tag=Wallmaster11] unless entity @s[scores={timer=181..201}] unless entity @a[x=-539,y=32,z=2024,dx=15,dz=16] run tag @s remove Attack
execute if entity @s[tag=Wallmaster11] unless entity @s[tag=Attack] run tp @s -532 44 2032
execute if entity @s[tag=Wallmaster11,scores={timer=201..}] run tp @a -489 55 1960
