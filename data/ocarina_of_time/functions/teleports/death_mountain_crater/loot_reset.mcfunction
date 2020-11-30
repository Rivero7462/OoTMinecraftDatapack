#Pots
fill 2693 42 1980 2693 42 1980 minecraft:flower_pot
fill 2694 42 1979 2694 42 1979 minecraft:flower_pot
fill 2686 42 1980 2686 42 1980 minecraft:flower_pot
fill 2685 42 1979 2685 42 1979 minecraft:flower_pot
data merge entity @e[type=area_effect_cloud,tag=Pots,limit=1] {Tags:["Pots"]}

#Rocks
scoreboard players set @a HoldingRock 1
fill 2723 54 1940 2723 54 1940 minecraft:granite_slab
fill 2724 54 1938 2724 54 1938 minecraft:granite_slab
fill 2726 54 1937 2726 54 1937 minecraft:granite_slab
fill 2728 54 1938 2728 54 1938 minecraft:granite_slab
fill 2729 54 1940 2729 54 1940 minecraft:granite_slab
fill 2728 54 1942 2728 54 1942 minecraft:granite_slab
fill 2726 54 1943 2726 54 1943 minecraft:granite_slab
fill 2724 54 1942 2724 54 1942 minecraft:granite_slab
fill 2675 38 1938 2675 38 1938 minecraft:granite_slab
fill 2673 39 1938 2673 39 1938 minecraft:granite_slab
fill 2671 39 1939 2671 39 1939 minecraft:granite_slab
fill 2670 39 1941 2670 39 1941 minecraft:granite_slab
fill 2672 39 1942 2672 39 1942 minecraft:granite_slab

execute unless entity @a[tag=Adult] run fill 2722 59 1912 2722 59 1912 minecraft:granite_slab
execute unless entity @a[tag=Adult] run fill 2722 59 1908 2722 59 1908 minecraft:granite_slab

#Empty Chests
execute if block 2668 37 1924 minecraft:chest{Items:[]} run fill 2668 37 1924 2668 37 1924 minecraft:air
execute if block 2679 35 1911 minecraft:chest{Items:[]} run fill 2679 35 1911 2679 35 1911 minecraft:air
execute if block 2697 35 1910 minecraft:chest{Items:[]} run fill 2697 33 1909 2697 33 1909 minecraft:air

#Bean Spots
execute if entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean2] run clone 2684 35 1921 2686 35 1923 2686 37 1943
execute unless entity @a[tag=Adult] if entity @e[type=area_effect_cloud,tag=BeanSpot,tag=PlantBean2] run fill 2687 37 1944 2687 37 1944 minecraft:pumpkin_stem[age=6]

#Gossip Stones
#1
execute unless entity @e[type=armor_stand,tag=GossipStone18] run summon minecraft:armor_stand 2725 59 1910 {Tags:["GossipStone18","GossipStone","Npc"],Rotation:[90f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}

#Grotto
execute unless entity @e[type=armor_stand,tag=GossipStone30] run summon minecraft:armor_stand 2727 19 1940 {Tags:["GossipStone30","GossipStone","GrottoGossipStone","Npc"],Rotation:[0f],Marker:1b,Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"cobblestone",Count:1b,tag:{CustomModelData:106}}],DisabledSlots:4144959}
fill 2728 19 1939 2728 19 1939 minecraft:grass
fill 2728 19 1934 2728 19 1934 minecraft:grass
fill 2728 19 1932 2728 19 1932 minecraft:grass
fill 2730 19 1932 2730 19 1932 minecraft:grass
