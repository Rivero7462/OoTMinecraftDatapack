#1
execute if entity @a[x=539,y=34,z=883,dx=5,dz=5] run tp @s[tag=RedBubble18,scores={lifetime=1}] 541 29 881
execute if entity @a[x=539,y=34,z=883,dx=5,dz=5] run tag @s[tag=RedBubble18] add Attack
execute if entity @a[x=539,y=34,z=883,dx=5,dz=5] run scoreboard players set @s[tag=RedBubble18] time 0

#2
execute if entity @a[x=535,y=34,z=874,dx=5,dz=6] run tp @s[tag=RedBubble19,scores={lifetime=1}] 535 29 873
execute if entity @a[x=535,y=34,z=874,dx=5,dz=6] run tag @s[tag=RedBubble19] add Attack
execute if entity @a[x=535,y=34,z=874,dx=5,dz=6] run scoreboard players set @s[tag=RedBubble19] time 0
