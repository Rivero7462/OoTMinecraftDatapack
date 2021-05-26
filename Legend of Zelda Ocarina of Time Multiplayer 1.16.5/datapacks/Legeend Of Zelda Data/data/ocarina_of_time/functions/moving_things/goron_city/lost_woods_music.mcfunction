execute unless entity @s[tag=WaitMusic] if entity @a[x=2190,y=65,z=1842,dx=8,dz=8] run playsound minecraft:lost_woods music @a ~ ~ ~ .3 1
execute unless entity @s[tag=WaitMusic] if entity @a[x=2190,y=65,z=1842,dx=8,dz=8] run tag @s add WaitMusic
execute unless entity @a[x=2190,y=65,z=1842,dx=8,dz=8] unless entity @a[x=2181,y=61,z=1796,dx=1,dz=0] run stopsound @a music minecraft:lost_woods
execute unless entity @a[x=2190,y=65,z=1842,dx=8,dz=8] run tag @s remove WaitMusic
