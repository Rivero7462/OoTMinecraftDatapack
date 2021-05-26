#1
execute if entity @a[x=2669,y=35,z=1917,dx=3,dy=2,dz=4] run tag @s[tag=RedBubble15] add Attack
execute if entity @a[x=2669,y=35,z=1917,dx=3,dy=2,dz=4] run scoreboard players set @s[tag=RedBubble15] time -45

#2
execute if entity @a[x=2674,y=35,z=1913,dx=3,dz=3] run tag @s[tag=RedBubble16] add Attack
execute if entity @a[x=2674,y=35,z=1913,dx=3,dz=3] run scoreboard players set @s[tag=RedBubble16] time 135

execute unless entity @a[tag=Adult] run kill @s
