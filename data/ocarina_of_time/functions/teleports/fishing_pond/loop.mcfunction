#Lake Hylia
execute if entity @s[x=434,y=65,z=2719,dx=0,dz=0] if entity @s[tag=!Adult] run function ocarina_of_time:teleports/fishing_pond/lake_hylia_child/to
execute if entity @s[x=434,y=65,z=2719,dx=0,dz=0] if entity @s[tag=Adult,tag=!FinishLake] run function ocarina_of_time:teleports/fishing_pond/lake_hylia_adult/to
execute if entity @s[x=434,y=65,z=2719,dx=0,dz=0] if entity @s[tag=Adult,tag=FinishLake] run function ocarina_of_time:teleports/fishing_pond/lake_hylia_child/to
execute if entity @a[x=397,y=53,z=2719,dx=0,dz=0] run function ocarina_of_time:teleports/fishing_pond/lake_hylia_adult/from
execute if entity @a[x=397,y=53,z=2717,dx=0,dz=0] run function ocarina_of_time:teleports/fishing_pond/lake_hylia_child/from
