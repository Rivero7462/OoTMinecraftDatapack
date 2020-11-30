#Lake Hylia
execute if entity @s[x=1061,y=53,z=3001,dx=4,dy=3,dz=1] unless entity @a[tag=FilledLake] run function ocarina_of_time:teleports/water_temple/lake_hylia/to_lake_hylia_adult
execute if entity @s[x=1061,y=53,z=3001,dx=4,dy=3,dz=1] if entity @a[tag=FilledLake] run function ocarina_of_time:teleports/water_temple/lake_hylia/to_lake_hylia_child
execute if entity @a[x=1063,y=69,z=3056,dx=0,dz=0] run function ocarina_of_time:teleports/water_temple/lake_hylia/from

#Exit
execute unless block 1054 62 3082 minecraft:water if entity @s[tag=!WaterMedallion,tag=!Boss,x=1062,y=56,z=3091,dx=2,dy=10,dz=2] run tp @s 1063 ~ 3092
execute unless block 1054 62 3082 minecraft:water if entity @s[tag=!WaterMedallion,tag=!Boss,x=1062,y=56,z=3091,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute unless block 1054 62 3082 minecraft:water if entity @s[tag=!WaterMedallion,tag=!Boss,x=1062,y=71,z=3091,dx=2,dz=2] run function ocarina_of_time:teleports/water_temple/boss_room

#Cutscene
execute unless block 1054 62 3082 minecraft:water if entity @s[tag=WaterMedallion,tag=!Boss,x=1062,y=56,z=3091,dx=2,dy=10,dz=2] run tp @s 1063 ~ 3092
execute unless block 1054 62 3082 minecraft:water if entity @s[tag=WaterMedallion,tag=!Boss,x=1062,y=56,z=3091,dx=2,dy=10,dz=2] run effect give @s minecraft:levitation 1 3 true
execute unless block 1054 62 3082 minecraft:water if entity @s[tag=WaterMedallion,tag=!Boss,x=1062,y=71,z=3091,dx=2,dz=2] run function ocarina_of_time:teleports/water_temple/water_medallion
