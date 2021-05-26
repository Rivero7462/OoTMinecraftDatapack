#Hyrule Field* ??
execute if entity @s[x=498,y=30,z=1256,dx=3,dy=3,dz=7] run function ocarina_of_time:teleports/lon_lon_ranch/hyrule_field/to
execute if entity @s[x=469,y=24,z=1342,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/hyrule_field/from

#House
execute if entity @s[x=497,y=30,z=1279,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/house/inside
execute if entity @s[x=424,y=6,z=1360,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/house/outside

#Room 2
execute if entity @s[x=426,y=10,z=1366,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/house/inside_room
execute if entity @s[x=381,y=5,z=1329,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/house/outside_room

#Tower
execute if entity @s[x=422,y=30,z=1402,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/tower/inside
execute if entity @s[x=430,y=10,z=1388,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/tower/outside

#East Gate
execute if entity @e[type=horse,x=530,y=34,z=1338,dx=0,dy=1,dz=40] run function ocarina_of_time:teleports/lon_lon_ranch/escapes/east_gate

#South Gate
execute if entity @e[type=horse,x=431,y=34,z=1414,dx=73,dy=1,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/escapes/south_gate

#West Gate
execute if entity @e[type=horse,x=398,y=34,z=1348,dx=0,dy=1,dz=30] run function ocarina_of_time:teleports/lon_lon_ranch/escapes/west_gate

#Other Gate
execute if entity @e[type=horse,x=492,y=33,z=1300,dx=3,dy=1,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/escapes/other_gate

#Grotto
execute if entity @s[x=520,y=27,z=1395,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/grotto/inside
execute if entity @s[x=510,y=9,z=1400,dx=0,dz=0] run function ocarina_of_time:teleports/lon_lon_ranch/grotto/outside
