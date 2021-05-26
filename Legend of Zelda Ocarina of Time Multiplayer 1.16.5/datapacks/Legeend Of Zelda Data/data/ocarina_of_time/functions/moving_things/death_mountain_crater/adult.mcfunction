#Fire Temple Enterance
fill 2675 38 1938 2673 40 1942 minecraft:air replace minecraft:dead_bubble_coral_block

#Rupees
fill 2668 37 1924 2668 37 1924 minecraft:air
kill @e[type=item,x=2668,y=37,z=1924,dx=0,dz=0]

fill 2679 35 1911 2679 35 1911 minecraft:air
kill @e[type=item,x=2679,y=35,z=1911,dx=0,dz=0]

execute unless block 2697 33 1909 minecraft:gold_block unless block 2697 35 1910 minecraft:dispenser run clone 2697 33 1910 2697 33 1910 2697 35 1910
execute if block 2697 35 1910 minecraft:dispenser{Items:[]} run fill 2697 33 1909 2697 33 1909 minecraft:gold_block
execute if block 2697 35 1910 minecraft:dispenser unless block 2697 35 1910 minecraft:dispenser{Items:[]} run fill 2697 33 1909 2697 33 1909 minecraft:air

#Bean Spot
execute as @e[type=area_effect_cloud,tag=BeanSpot] at @a run function ocarina_of_time:moving_things/death_mountain_crater/bean_spot
fill 2687 36 1944 2687 36 1944 minecraft:smooth_red_sandstone

#Rupee Convert
fill 2720 43 1962 2720 43 1962 minecraft:air
tp @e[type=villager,tag=CraterConvert] 2722 41 1962

#Crate
fill 2728 56 1960 2727 56 1961 minecraft:air
