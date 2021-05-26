#Hyrule Field*
execute if entity @s[x=438,y=66,z=2064,dx=8,dy=5,dz=4] run function ocarina_of_time:teleports/gerudo_valley/hyrule_field/to
execute if entity @s[x=386,y=50,z=2040,dx=0,dz=0] run function ocarina_of_time:teleports/gerudo_valley/hyrule_field/from

#Lake Hylia
execute if entity @s[tag=!Adult,x=372,y=2,z=2094,dx=18,dy=72,dz=2] run function ocarina_of_time:teleports/gerudo_valley/lake/to_child_lake
execute if entity @s[tag=Adult,tag=!FinishLake,x=372,y=2,z=2094,dx=18,dy=72,dz=2] run function ocarina_of_time:teleports/gerudo_valley/lake/to_adult_lake
execute if entity @s[tag=Adult,tag=FinishLake,x=372,y=2,z=2094,dx=18,dy=72,dz=2] run function ocarina_of_time:teleports/gerudo_valley/lake/to_child_lake

#Gerudo Fortress
execute positioned 300 82 2016 if entity @s[distance=..6] run function ocarina_of_time:teleports/gerudo_valley/gerudo_fortress/to
execute if entity @s[x=386,y=50,z=2038,dx=0,dz=0] run function ocarina_of_time:teleports/gerudo_valley/gerudo_fortress/from

#Tent
execute if entity @s[tag=Adult,x=352,y=76,z=2033,dx=0,dz=0] run function ocarina_of_time:teleports/gerudo_valley/tent/inside
execute if entity @s[tag=Adult,x=330,y=64,z=2033,dx=2,dz=0] run function ocarina_of_time:teleports/gerudo_valley/tent/outside

#Grotto 1
execute if entity @s[x=349,y=73,z=2020,dx=0,dz=0] run function ocarina_of_time:teleports/gerudo_valley/grotto_1/inside
execute if entity @s[x=335,y=44,z=2021,dx=0,dz=0] run function ocarina_of_time:teleports/gerudo_valley/grotto_1/outside

#Grotto 2
execute if entity @s[x=384,y=61,z=2069,dx=0,dz=0] run function ocarina_of_time:teleports/gerudo_valley/grotto_2/inside
execute if entity @s[x=335,y=43,z=2055,dx=0,dz=0] run function ocarina_of_time:teleports/gerudo_valley/grotto_2/outside
