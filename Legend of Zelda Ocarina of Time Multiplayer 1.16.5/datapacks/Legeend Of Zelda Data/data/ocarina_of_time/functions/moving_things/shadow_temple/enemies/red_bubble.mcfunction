execute if entity @a[x=1749,y=63,z=1006,dx=6,dz=7] run tp @s[tag=RedBubble17,scores={lifetime=1}] 1751 60 1010
execute if entity @a[x=1749,y=63,z=1006,dx=6,dz=7] run tag @s[tag=RedBubble17] add Attack
execute if entity @a[x=1749,y=63,z=1006,dx=6,dz=7] run scoreboard players set @s[tag=RedBubble17] time 180
