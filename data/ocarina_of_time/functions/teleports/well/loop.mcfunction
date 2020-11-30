#Kakariko Village
execute if entity @s[x=-15,y=69,z=1412,dx=6,dz=1] run function ocarina_of_time:teleports/well/kakariko_village/to
execute if entity @s[x=-12,y=67,z=1337,dx=0,dz=0] run function ocarina_of_time:teleports/well/kakariko_village/from

#Hole 1
execute if entity @s[x=-12,y=68,z=1401,dx=0,dy=1,dz=1] run fill -12 69 1402 -12 69 1402 minecraft:birch_trapdoor
execute unless entity @s[x=-12,y=68,z=1401,dx=0,dz=1] run fill -12 69 1402 -12 69 1402 minecraft:air
execute if entity @s[x=-12,y=68,z=1395,dx=0,dy=1,dz=1] run fill -12 69 1395 -12 69 1395 minecraft:birch_trapdoor[facing=south]
execute unless entity @s[x=-12,y=68,z=1395,dx=0,dz=1] run fill -12 69 1395 -12 69 1395 minecraft:air

#Hole 2
execute if entity @s[x=12,y=59,z=1313,dx=1,dy=1,dz=0] run fill 12 60 1313 12 60 1313 minecraft:birch_trapdoor
execute unless entity @s[x=12,y=59,z=1313,dx=1,dz=0] run fill 12 60 1313 12 60 1313 minecraft:air
execute if entity @s[x=17,y=59,z=1313,dx=1,dy=1,dz=0] run fill 18 60 1313 18 60 1313 minecraft:birch_trapdoor[facing=south]
execute unless entity @s[x=17,y=59,z=1313,dx=1,dz=0] run fill 18 60 1313 18 60 1313 minecraft:air

#Hole 3
execute unless block -6 55 1363 minecraft:pink_stained_glass if entity @s[x=-7,y=55,z=1363,dx=1,dy=1,dz=0] run fill -7 56 1363 -7 56 1363 minecraft:birch_trapdoor
execute unless block -6 55 1363 minecraft:pink_stained_glass unless entity @s[x=-7,y=55,z=1363,dx=1,dz=0] run fill -7 56 1363 -7 56 1363 minecraft:air
execute unless block -6 55 1363 minecraft:pink_stained_glass if entity @s[x=-1,y=55,z=1363,dx=1,dy=1,dz=0] run fill 0 56 1363 0 56 1363 minecraft:birch_trapdoor[facing=south]
execute unless block -6 55 1363 minecraft:pink_stained_glass unless entity @s[x=-1,y=55,z=1363,dx=1,dz=0] run fill 0 56 1363 0 56 1363 minecraft:air
